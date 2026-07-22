from __future__ import annotations

from collections import defaultdict
import csv
import glob
import os
import re

from utils.snapshot_data import load_or_build_snapshot
from utils.tools_functions.observed_object_printer import (
    build_observed_object_fact,
    normalize_logic_atom,
    was_object_retrieved_before_action,
)
from utils.tools_functions.use_object_extractor import load_or_build_object_cache
from utils.util_functions import *

#configurazione iniziale
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
OBJECT_RELEVANT_ACTION_TYPES = {1, 5, 10}
OBJECT_USING_ACTION_TYPES = {5}

FORCE_REBUILD_SNAPSHOT = False
FORCE_REBUILD_OBJECT_CACHE = False

script_dir = os.path.dirname(os.path.abspath(__file__))
output_dir = os.path.join(script_dir, "test_tool_omission_creati_clingo")
summary_csv_path = os.path.join(script_dir, "tool_omission_summary.csv")
tool_omission_json_dir = os.path.join(
    script_dir,
    "utils",
    "tools_functions",
    "tool_omission_json",
)
snapshot_path = os.path.join(
    tool_omission_json_dir,
    "tool_omission_db_snapshot.json",
)
object_cache_path = os.path.join(
    tool_omission_json_dir,
    "tool_omission_task_objects.json",
)
os.makedirs(output_dir, exist_ok=True)
os.makedirs(tool_omission_json_dir, exist_ok=True)


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

#normalizza testi per file lp
def clean_logic_label(label: str) -> str:
    clean_label = label.replace(" ", "_")
    return re.sub(r"[^\w]+", "", clean_label.lower())

#cancella i vecchi file lp per generarne di nuovi
def clear_generated_lp_files(output_path: str) -> None:
    print("debug : pulizia dei file lp precedenti per tool omission")
    for file_name in os.listdir(output_path):
        if not file_name.endswith(".lp"):
            continue
        os.remove(os.path.join(output_path, file_name))

#costruisce catalogo delle attività a parire dallo snapshot
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
                "action_type": int(row["action_type"]),
            }
        )

    return activity_catalog

#raggruppa dati per paziente
def build_patient_activity_map(patient_activities: list[dict]) -> dict[int, list[dict]]:
    activity_map: dict[int, list[dict]] = defaultdict(list)

    for row in patient_activities:
        activity_map[int(row["patient_id"])].append(row)

    for patient_id in activity_map:
        activity_map[patient_id].sort(
            key=lambda row: (int(row["activity_id"]), str(row["activity_start"]))
        )

    return activity_map

#raggruppa task per coppia (id paziente, id attività)
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

#decide se una task deve avere un oggetto atteso in base al tipo di azione
def should_track_expected_object(task_info: dict[str, object]) -> bool:
    return int(task_info["action_type"]) in OBJECT_USING_ACTION_TYPES

#calcolo dell'expected object 
def build_expected_object_map_for_activity(
    activity_info: dict[str, object],
    object_cache: dict[str, str],
) -> dict[str, str]:
    expected_object_map: dict[str, str] = {}

    for task_info in activity_info["tasks"]:
        if not should_track_expected_object(task_info):
            continue

        task_description = str(task_info["task_description"])
        extracted_object = str(object_cache.get(task_description, "")).strip()
        normalized_object = normalize_logic_atom(extracted_object)
        if not normalized_object:
            continue

        expected_object_map[str(task_info["task_fact"])] = normalized_object

    return expected_object_map

#costruisce i file lp per ogni paziente e attività
def build_lp_files(
    patients_list: list[int],
    activity_catalog: dict[int, dict[str, object]],
    patient_activity_map: dict[int, list[dict]],
    patient_task_map: dict[tuple[int, int], list[dict]],
    object_cache: dict[str, str],
) -> None:
    clear_generated_lp_files(output_dir)

    for patient_id in patients_list:
        activities_rows = patient_activity_map.get(patient_id, [])
        print(
            f"debug : generazione file tool omission per patient_id={patient_id}, attivita_trovate={len(activities_rows)}"
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
            expected_object_map = build_expected_object_map_for_activity(
                activity_info=activity_info,
                object_cache=object_cache,
            )

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

            for task_fact, expected_object in expected_object_map.items():
                expected_object_fact = (
                    f"expected_object({activity_clean}, {task_fact}, {expected_object})."
                )
                write_file(file_path, expected_object_fact, "a")

            write_file(file_path, "", "a")
            write_file(file_path, livello_B, "a")

            inst_value = f"i_p{patient_id}_a{activity_id}"
            write_file(file_path, f"instance({inst_value}, {activity_clean}).\n", "a")

            for obs_order, row in enumerate(raw_rows, start=1):
                task_fact = clean_logic_label(str(row["task_description"]))
                write_file(file_path, f"performed({inst_value}, {task_fact}, {obs_order}).", "a")

            write_file(file_path, "", "a")

            for obs_order, row in enumerate(raw_rows, start=1):
                task_fact = clean_logic_label(str(row["task_description"]))
                expected_object = expected_object_map.get(task_fact, "")
                if not expected_object:
                    continue

                object_retrieved = was_object_retrieved_before_action(
                    expected_object=expected_object,
                    activity_tasks=tasks_info,
                    performed_rows=raw_rows,
                    action_order=obs_order,
                    object_cache=object_cache,
                )
                if not object_retrieved:
                    continue

                observed_object_fact = build_observed_object_fact(
                    instance_id=inst_value,
                    action_id=task_fact,
                    extracted_object=expected_object,
                )
                if observed_object_fact:
                    write_file(file_path, observed_object_fact, "a")

            write_file(file_path, "", "a")
            write_file(file_path, livello_C + "\n", "a")

            rules = '''tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.
'''
            write_file(file_path, rules, "a")

#salva i risultati dell'analisi tool omission
def run_tool_omission_analysis() -> dict[tuple[str, str], int]:
    percorso_glob = os.path.join(output_dir, "*.lp")
    file_lp = glob.glob(percorso_glob)
    patient_anomalies: dict[tuple[str, str], int] = {}

    print("debug : avvio analisi clingo per tool omission")
    for file_path in file_lp:
        pat = re.search(r"patient_(\d+)", file_path)
        act = re.search(r"activity_(\d+)", file_path)
        if not pat or not act:
            continue

        patient_id = pat.group(1)
        activity_id = act.group(1)
        anomalies = run_clingo_test(file_path)
        patient_anomalies[(patient_id, activity_id)] = anomalies
        print(
            f"debug : clingo completato per patient_id={patient_id}, "
            f"activity_id={activity_id}, tool_omission={anomalies}"
        )

    return patient_anomalies


def save_tool_omission_summary_csv(
    patient_anomalies: dict[tuple[str, str], int],
    csv_path: str,
) -> None:
    with open(csv_path, "w", newline="", encoding="utf-8") as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(["patient_id", "activity_id", "tool_omission_count"])

        for (patient_id, activity_id), anomaly_count in sorted(
            patient_anomalies.items(),
            key=lambda item: (int(item[0][0]), int(item[0][1])),
        ):
            writer.writerow([patient_id, activity_id, anomaly_count])

#carica dati da DB o da snapshot json
target_patient_ids = load_target_patient_ids()
snapshot_data = load_or_build_snapshot(
    take_data_fn=take_data,
    snapshot_path=snapshot_path,
    target_patient_ids=target_patient_ids,
    healthy_diagnosis_ids=HEALTHY_DIAGNOSIS_IDS,
    force_rebuild=FORCE_REBUILD_SNAPSHOT,
)

#estrae da snapshot e costruisce mappe strutturate per lo script
activities_catalog = snapshot_data.get("activities_catalog") or []
target_patients = snapshot_data.get("target_patients") or []
patient_activities = snapshot_data.get("patient_activities") or []
patient_tasks = snapshot_data.get("patient_tasks") or []

activity_catalog = build_activity_catalog(activities_catalog)
patient_activity_map = build_patient_activity_map(patient_activities)
patient_task_map = build_patient_task_map(patient_tasks)
patients_list = [int(row["patient_id"]) for row in target_patients]

#costruisce lista delle descrizioni delle task
all_task_descriptions = [
    str(row["task_description"])
    for row in activities_catalog
    if row.get("task_description") not in (None, "")
    and int(row.get("action_type", -1)) in OBJECT_RELEVANT_ACTION_TYPES
]

#carica la cache degli oggetti da json o da LM studio
object_cache = load_or_build_object_cache(
    action_descriptions=all_task_descriptions,
    cache_path=object_cache_path,
    force_rebuild=FORCE_REBUILD_OBJECT_CACHE,
)

#genera i file .lp
build_lp_files(
    patients_list=patients_list,
    activity_catalog=activity_catalog,
    patient_activity_map=patient_activity_map,
    patient_task_map=patient_task_map,
    object_cache=object_cache,
)

#lancia l'analisi tool omission con clingo e salva i risultati in un dizionario
patient_anomalies = run_tool_omission_analysis()
save_tool_omission_summary_csv(
    patient_anomalies=patient_anomalies,
    csv_path=summary_csv_path,
)
