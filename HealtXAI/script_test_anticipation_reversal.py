from __future__ import annotations

from collections import defaultdict
import csv
import glob
import json
import os
import re
import subprocess

from utils.sequence_functions.script_build_activity_dependency_graph import (
    catalog_snapshot_path as dependency_catalog_snapshot_path,
)
from utils.sequence_functions.script_build_activity_dependency_graph import (
    run_activity_dependency_graph_pipeline,
)
from utils.snapshot_data import load_or_build_snapshot
from utils.util_functions import *

# configurazione iniziale
TARGET_PATIENTS_QUERY = """SELECT
    p.patient_id
FROM patients p
JOIN diagnosis_types dt ON dt.diagnosis_id = p.diagnosis
JOIN tasks t ON t.patient = p.patient_id
WHERE p.diagnosis IN (1, 2, 4, 5)
  AND t.activity BETWEEN 1 AND 16
GROUP BY p.patient_id, dt.diagnosis_id, dt.description
HAVING COUNT(DISTINCT t.activity) >= 6
ORDER BY dt.description, p.patient_id;"""
HEALTHY_DIAGNOSIS_IDS = [3, 4, 5, 8]

FORCE_REBUILD_SNAPSHOT = False

script_dir = os.path.dirname(os.path.abspath(__file__))
output_dir = os.path.join(script_dir, "test_anticipation_reversal_creati_clingo")
sequence_json_dir = os.path.join(
    script_dir,
    "utils",
    "json",
    "anticipation_reversal_json",
)
snapshot_path = os.path.join(
    sequence_json_dir,
    "anticipation_reversal_db_snapshot.json",
)
summary_csv_path = os.path.join(script_dir, "anticipation_reversal_summary.csv")
dependency_cache_path = os.path.join(sequence_json_dir, "activity_dependency_graph.json")
os.makedirs(output_dir, exist_ok=True)
os.makedirs(sequence_json_dir, exist_ok=True)


def load_target_patient_ids() -> list[int]:
    print("debug : caricamento pazienti target con query dedicata")
    target_patient_rows = take_data(TARGET_PATIENTS_QUERY) or []
    target_patient_ids = [int(row["patient_id"]) for row in target_patient_rows]

    if not target_patient_ids:
        raise RuntimeError(
            "La query dei pazienti target non ha restituito alcun patient_id."
        )

    print(f"debug : pazienti target caricati = {len(target_patient_ids)}")
    return target_patient_ids

#--------Normalizzazione e pulizia------
#trasformazione etichette testuali in nomi locici puliti
def clean_logic_label(label: str) -> str:
    clean_label = label.replace(" ", "_")
    return re.sub(r"[^\w]+", "", clean_label.lower())

#cancellazione vecchi file lp prima della generazione
def clear_generated_lp_files(output_path: str) -> None:
    print("debug : pulizia dei file lp precedenti per anticipation/reversal")
    for file_name in os.listdir(output_path):
        if not file_name.endswith(".lp"):
            continue
        os.remove(os.path.join(output_path, file_name))

#--------Costruzione strutture dati -------
#activity
def build_activity_catalog(activities_catalog: list[dict]) -> dict[int, dict[str, object]]:
    activity_catalog: dict[int, dict[str, object]] = {}

    for row in activities_catalog:
        activity_id = int(row["activity_id"])
        if activity_id not in activity_catalog:
            activity_description = str(row["activity_description"])
            activity_catalog[activity_id] = {
                "activity_id": activity_id,
                "activity_description": activity_description,
                "activity_clean": clean_logic_label(activity_description),
                "tasks": [],
            }

        activity_catalog[activity_id]["tasks"].append(
            {
                "task_id": int(row["task_id"]),
                "task_description": str(row["task_description"]),
                "task_fact": clean_logic_label(str(row["task_description"])),
            }
        )

    for activity_info in activity_catalog.values():
        tasks = sorted(activity_info["tasks"], key=lambda task_info: int(task_info["task_id"]))
        for expected_pos, task_info in enumerate(tasks, start=1):
            task_info["expected_pos"] = expected_pos
        activity_info["tasks"] = tasks

    return activity_catalog

#pazienti + attività
def build_patient_activity_map(patient_activities: list[dict]) -> dict[int, list[dict]]:
    activity_map: dict[int, list[dict]] = defaultdict(list)

    for row in patient_activities:
        activity_map[int(row["patient_id"])].append(row)

    for patient_id in activity_map:
        activity_map[patient_id].sort(
            key=lambda row: (int(row["activity_id"]), str(row["activity_start"]))
        )

    return activity_map

#pazienti + attività + task
def build_patient_task_map(patient_tasks: list[dict]) -> dict[tuple[int, int], list[dict]]:
    task_map: dict[tuple[int, int], list[dict]] = defaultdict(list)

    for row in patient_tasks:
        patient_id = int(row["patient_id"])
        activity_id = int(row["activity_id"])
        task_map[(patient_id, activity_id)].append(row)

    for task_key in task_map:
        task_map[task_key].sort(
            key=lambda row: (str(row["task_time"]), int(row["task_id"]))
        )

    return task_map

#mantengo solo la prima esecuzione di ogni task per paziente+attività
def keep_first_task_execution(
    patient_task_rows: list[dict],
) -> list[dict]:
    seen_task_ids: set[int] = set()
    deduped_rows: list[dict] = []

    for row in patient_task_rows:
        task_id = int(row["task_id"])
        if task_id in seen_task_ids:
            continue

        seen_task_ids.add(task_id)
        deduped_rows.append(row)

    return deduped_rows

#-----utilizzo grafo delle dipendenze-----
#caricamento
def load_dependency_cache(
    cache_path: str,
    activity_catalog: dict[int, dict[str, object]],
) -> dict[int, list[tuple[str, str]]]:
    if not os.path.exists(cache_path):
        print(
            "debug : cache dipendenze assente, avviamo il builder LLM -> "
            f"{cache_path}"
        )
        return run_activity_dependency_graph_pipeline(
            snapshot_path=dependency_catalog_snapshot_path,
            export_json_path=cache_path,
            force_rebuild_snapshot=False,
            force_rebuild_graph=False,
        )

    with open(cache_path, "r", encoding="utf-8-sig") as cache_file:
        payload = json.load(cache_file)

    dependencies_by_activity: dict[int, set[tuple[str, str]]] = defaultdict(set)
    clean_to_activity_id = {
        str(activity_info["activity_clean"]): activity_id
        for activity_id, activity_info in activity_catalog.items()
    }

    raw_activities = payload.get("activities", [])
    if not isinstance(raw_activities, list):
        raise ValueError(
            "Formato cache dipendenze non valido: atteso campo 'activities' come lista."
        )

    for activity_entry in raw_activities:
        if not isinstance(activity_entry, dict):
            continue

        activity_id = resolve_dependency_activity_id(
            activity_entry=activity_entry,
            activity_catalog=activity_catalog,
            clean_to_activity_id=clean_to_activity_id,
        )
        if activity_id is None:
            continue

        tasks_info = activity_catalog[activity_id]["tasks"]
        task_id_to_fact = {
            int(task_info["task_id"]): str(task_info["task_fact"])
            for task_info in tasks_info
        }
        task_description_to_fact = {
            str(task_info["task_description"]).strip(): str(task_info["task_fact"])
            for task_info in tasks_info
        }
        task_fact_set = {
            str(task_info["task_fact"])
            for task_info in tasks_info
        }

        for dependency_entry in activity_entry.get("dependencies", []):
            if not isinstance(dependency_entry, dict):
                continue

            before_fact = resolve_dependency_task_fact(
                dependency_entry,
                task_id_to_fact=task_id_to_fact,
                task_description_to_fact=task_description_to_fact,
                task_fact_set=task_fact_set,
                prefix="before",
            )
            after_fact = resolve_dependency_task_fact(
                dependency_entry,
                task_id_to_fact=task_id_to_fact,
                task_description_to_fact=task_description_to_fact,
                task_fact_set=task_fact_set,
                prefix="after",
            )
            if not before_fact or not after_fact or before_fact == after_fact:
                continue

            dependencies_by_activity[activity_id].add((after_fact, before_fact))

    return {
        activity_id: sorted(dependency_pairs)
        for activity_id, dependency_pairs in dependencies_by_activity.items()
    }

#collegamento activity dipendenze-activity nello script
def resolve_dependency_activity_id(
    activity_entry: dict[str, object],
    activity_catalog: dict[int, dict[str, object]],
    clean_to_activity_id: dict[str, int],
) -> int | None:
    raw_activity_id = activity_entry.get("activity_id")
    if raw_activity_id is not None:
        try:
            activity_id = int(raw_activity_id)
            if activity_id in activity_catalog:
                return activity_id
        except (TypeError, ValueError):
            pass

    raw_activity_clean = str(activity_entry.get("activity_clean", "")).strip()
    if raw_activity_clean and raw_activity_clean in clean_to_activity_id:
        return clean_to_activity_id[raw_activity_clean]

    raw_activity_description = str(activity_entry.get("activity_description", "")).strip()
    if raw_activity_description:
        normalized_activity_clean = clean_logic_label(raw_activity_description)
        return clean_to_activity_id.get(normalized_activity_clean)

    return None

#collegamento activity dipendenze-activity nello script
def resolve_dependency_task_fact(
    dependency_entry: dict[str, object],
    *,
    task_id_to_fact: dict[int, str],
    task_description_to_fact: dict[str, str],
    task_fact_set: set[str],
    prefix: str,
) -> str:
    raw_task_id = dependency_entry.get(f"{prefix}_task_id")
    if raw_task_id is not None:
        try:
            task_id = int(raw_task_id)
            if task_id in task_id_to_fact:
                return task_id_to_fact[task_id]
        except (TypeError, ValueError):
            pass

    raw_task_fact = str(dependency_entry.get(f"{prefix}_task_fact", "")).strip()
    if raw_task_fact:
        normalized_task_fact = clean_logic_label(raw_task_fact)
        if normalized_task_fact in task_fact_set:
            return normalized_task_fact

    raw_task_description = str(
        dependency_entry.get(f"{prefix}_task_description", "")
    ).strip()
    if raw_task_description:
        exact_match = task_description_to_fact.get(raw_task_description)
        if exact_match:
            return exact_match

        normalized_description = clean_logic_label(raw_task_description)
        if normalized_description in task_fact_set:
            return normalized_description

    return ""

#-----scrittura dei file lp per clingo-----
def build_lp_files(
    patients_list: list[int],
    activity_catalog: dict[int, dict[str, object]],
    patient_activity_map: dict[int, list[dict]],
    patient_task_map: dict[tuple[int, int], list[dict]],
    dependency_map: dict[int, list[tuple[str, str]]],
) -> None:
    clear_generated_lp_files(output_dir)

    for patient_id in patients_list:
        activities_rows = patient_activity_map.get(patient_id, [])
        print(
            "debug : generazione file anticipation/reversal per "
            f"patient_id={patient_id}, attivita_trovate={len(activities_rows)}"
        )

        for activity_row in activities_rows:
            activity_id = int(activity_row["activity_id"])
            if activity_id not in activity_catalog:
                continue

            activity_info = activity_catalog[activity_id]
            activity_clean = str(activity_info["activity_clean"])
            activity_description = str(activity_info["activity_description"])
            tasks_info = activity_info["tasks"]
            raw_rows = patient_task_map.get((patient_id, activity_id), [])
            filtered_rows = keep_first_task_execution(raw_rows)
            dependency_pairs = dependency_map.get(activity_id, [])

            file_name = f"patient_{patient_id}_activity_{activity_id}.lp"
            file_path = os.path.join(output_dir, file_name)

            patient_activity = (
                "% ======================================================================\n"
                f"% Paziente {patient_id}\n"
                f"% Attivita: {activity_description}\n"
                "% ======================================================================\n"
            )
            write_file(file_path, patient_activity, "w")
            write_file(file_path, livello_A, "a")
            write_file(file_path, f"activity({activity_clean}).", "a")
            write_file(file_path, "", "a")

            for task_info in tasks_info:
                write_file(file_path, f"action({task_info['task_fact']}).", "a")

            write_file(file_path, "", "a")

            for task_info in tasks_info:
                write_file(
                    file_path,
                    f"part_of({task_info['task_fact']}, {activity_clean}).",
                    "a",
                )

            write_file(file_path, "", "a")

            for task_info in tasks_info:
                write_file(
                    file_path,
                    (
                        f"expected_pos({activity_clean}, {task_info['task_fact']}, "
                        f"{task_info['expected_pos']})."
                    ),
                    "a",
                )

            write_file(file_path, "", "a")

            for after_fact, before_fact in dependency_pairs:
                write_file(
                    file_path,
                    f"depends_on({activity_clean}, {after_fact}, {before_fact}).",
                    "a",
                )

            write_file(file_path, "", "a")
            write_file(file_path, livello_B, "a")

            inst_value = f"i_p{patient_id}_a{activity_id}"
            write_file(file_path, f"instance({inst_value}, {activity_clean}).", "a")

            for obs_order, row in enumerate(filtered_rows, start=1):
                task_fact = clean_logic_label(str(row["task_description"]))
                write_file(
                    file_path,
                    f"performed({inst_value}, {task_fact}, {obs_order}).",
                    "a",
                )

            write_file(file_path, "", "a")
            write_file(file_path, livello_C + "\n", "a")

            rules = '''reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.
'''
            write_file(file_path, rules, "a")

#---Esecuzione clingo, raccolta e salvataggio risultati anomalie-------
def run_clingo_and_collect_atoms(file_path: str) -> dict[str, list[str]]:
    result = subprocess.run(
        [CLINGO_CMD, file_path, "0"],
        capture_output=True,
        text=True,
    )

    if result.returncode not in CLINGO_SUCCESS_CODES:
        error_details = result.stderr.strip() or result.stdout.strip() or (
            f"clingo exited with code {result.returncode}"
        )
        raise RuntimeError(
            f"Errore durante l'esecuzione di clingo su {file_path}: {error_details}"
        )

    collected_atoms = {
        "reversal": set(),
        "anticipation_omission": set(),
    }
    lines = result.stdout.splitlines()

    for index, line in enumerate(lines):
        if not line.startswith("Answer:"):
            continue
        if index + 1 >= len(lines):
            continue

        for atom in lines[index + 1].split():
            if atom.startswith("reversal("):
                collected_atoms["reversal"].add(atom)
            elif atom.startswith("anticipation_omission("):
                collected_atoms["anticipation_omission"].add(atom)

    return {
        anomaly_name: sorted(anomaly_atoms)
        for anomaly_name, anomaly_atoms in collected_atoms.items()
    }


def run_sequence_anomaly_analysis() -> dict[tuple[str, str], dict[str, list[str]]]:
    percorso_glob = os.path.join(output_dir, "*.lp")
    file_lp = glob.glob(percorso_glob)
    patient_anomalies: dict[tuple[str, str], dict[str, list[str]]] = {}

    print("debug : avvio analisi clingo per anticipation/reversal")
    for file_path in file_lp:
        pat = re.search(r"patient_(\d+)", file_path)
        act = re.search(r"activity_(\d+)", file_path)
        if not pat or not act:
            continue

        patient_id = pat.group(1)
        activity_id = act.group(1)
        anomalies = run_clingo_and_collect_atoms(file_path)
        patient_anomalies[(patient_id, activity_id)] = anomalies
        print(
            f"debug : clingo completato per patient_id={patient_id}, "
            f"activity_id={activity_id}, reversal={len(anomalies['reversal'])}, "
            "anticipation_omission="
            f"{len(anomalies['anticipation_omission'])}"
        )

    return patient_anomalies


def save_sequence_summary_csv(
    patient_anomalies: dict[tuple[str, str], dict[str, list[str]]],
    csv_path: str,
) -> None:
    with open(csv_path, "w", newline="", encoding="utf-8") as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(
            [
                "patient_id",
                "activity_id",
                "reversal_count",
                "anticipation_omission_count",
                "reversal_atoms",
                "anticipation_omission_atoms",
            ]
        )

        for (patient_id, activity_id), anomaly_info in sorted(
            patient_anomalies.items(),
            key=lambda item: (int(item[0][0]), int(item[0][1])),
        ):
            reversal_atoms = anomaly_info["reversal"]
            anticipation_atoms = anomaly_info["anticipation_omission"]
            writer.writerow(
                [
                    patient_id,
                    activity_id,
                    len(reversal_atoms),
                    len(anticipation_atoms),
                    " | ".join(reversal_atoms),
                    " | ".join(anticipation_atoms),
                ]
            )

#---start pipeline---
#caricamento snapshot dati
target_patient_ids = load_target_patient_ids()
snapshot_data = load_or_build_snapshot(
    take_data_fn=take_data,
    snapshot_path=snapshot_path,
    target_patient_ids=target_patient_ids,
    healthy_diagnosis_ids=HEALTHY_DIAGNOSIS_IDS,
    force_rebuild=FORCE_REBUILD_SNAPSHOT,
)

#--------Costruzione strutture dati-------
activities_catalog = snapshot_data.get("activities_catalog") or []
target_patients = snapshot_data.get("target_patients") or []
patient_activities = snapshot_data.get("patient_activities") or []
patient_tasks = snapshot_data.get("patient_tasks") or []

activity_catalog = build_activity_catalog(activities_catalog)
patient_activity_map = build_patient_activity_map(patient_activities)
patient_task_map = build_patient_task_map(patient_tasks)
patients_list = [int(row["patient_id"]) for row in target_patients]

#---caricamento dipendenze----
dependency_map = load_dependency_cache(
    cache_path=dependency_cache_path,
    activity_catalog=activity_catalog,
)

#---generazione file logici---
build_lp_files(
    patients_list=patients_list,
    activity_catalog=activity_catalog,
    patient_activity_map=patient_activity_map,
    patient_task_map=patient_task_map,
    dependency_map=dependency_map,
)

#---analisi con Clingo ---
patient_anomalies = run_sequence_anomaly_analysis()

#---salvataggio riepilogo in CSV---
save_sequence_summary_csv(
    patient_anomalies=patient_anomalies,
    csv_path=summary_csv_path,
)
