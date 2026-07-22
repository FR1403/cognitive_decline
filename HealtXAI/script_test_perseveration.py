from collections import defaultdict
from datetime import datetime
import glob
import os
import re

from utils.snapshot_data import load_or_build_snapshot
from utils.perseveration_functions.time_gap_functions.time_gap import (
    run_time_gap_pipeline,
)
from utils.util_functions import *


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

# Diagnosi sane usate nel contesto del time gap.
HEALTHY_DIAGNOSIS_IDS = [3, 4, 5, 8]

# Flag opzionali per forzare una ricostruzione completa.
FORCE_REBUILD_SNAPSHOT = False
FORCE_REBUILD_TIME_GAP_CACHE = False

# Configurazione dei file generati.
script_dir = os.path.dirname(os.path.abspath(__file__))
output_dir = os.path.join(script_dir, "test_perseveration_creati_clingo")
perseveration_function_dir = os.path.join(
    script_dir,
    "utils",
    "perseveration_functions",
)
perseveration_json_dir = os.path.join(
    perseveration_function_dir,
    "perseveration_json",
)
perseveration_time_gap_dir = os.path.join(
    perseveration_function_dir,
    "time_gap_functions",
)
snapshot_path = os.path.join(
    perseveration_json_dir,
    "perseveration_db_snapshot.json",
)
time_gap_export_path = os.path.join(
    perseveration_json_dir,
    "controlGapList",
    "time_gap_activity_task_gap.json",
)
os.makedirs(output_dir, exist_ok=True)
os.makedirs(perseveration_json_dir, exist_ok=True)
os.makedirs(perseveration_time_gap_dir, exist_ok=True)


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


# Query di controllo per capire se la tabella delle anomalie esiste gia'.
query_check_tracked_anomalies = """SELECT EXISTS (
    SELECT 1
    FROM information_schema.tables
    WHERE table_name = 'tracked_anomalies'
) AS table_exists;"""

# Query di creazione della tabella finale delle anomalie.
query_create_tracked_anomalies = '''CREATE TABLE tracked_anomalies(
                        patient_id INTEGER REFERENCES patients(patient_id),
                        activity_id INTEGER,
                        omission_number SMALLINT,
                        diagnosis_types SMALLINT REFERENCES diagnosis_types(diagnosis_id),
                        perseveration_number SMALLINT,
                        PRIMARY KEY(patient_id, activity_id)
                        );
                        '''

# Query di controllo per verificare la colonna perseveration_number.
query_check_perseveration_column = """SELECT EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_name = 'tracked_anomalies'
      AND column_name = 'perseveration_number'
) AS column_exists;"""

query_add_column = '''ALTER TABLE tracked_anomalies
ADD perseveration_number SMALLINT;'''

# Query di controllo per capire se una riga paziente-attivita esiste gia'.
query_check_tracked_anomaly_row_template = """SELECT EXISTS (
    SELECT 1
    FROM tracked_anomalies
    WHERE patient_id = {patient_id}
      AND activity_id = {activity_id}
) AS row_exists;"""


# Pulisce una descrizione per l'uso nei fatti clingo.
def clean_logic_label(label: str) -> str:
    clean_label = label.replace(" ", "_")
    return re.sub(r"[^\w]+", "", clean_label.lower())


# Converte una stringa oraria in millisecondi dalla mezzanotte.
def time_to_ms(value: object) -> int:
    raw_value = str(value)
    for time_format in ("%H:%M:%S.%f", "%H:%M:%S"):
        try:
            parsed_time = datetime.strptime(raw_value, time_format)
            return (
                parsed_time.hour * 3600000
                + parsed_time.minute * 60000
                + parsed_time.second * 1000
                + int(parsed_time.microsecond / 1000)
            )
        except ValueError:
            continue

    raise ValueError(f"Formato orario non supportato per time_to_ms: {raw_value}")


# Rimuove i file lp gia' generati per una nuova esecuzione pulita.
def clear_generated_lp_files(output_path: str) -> None:
    print("debug : pulizia dei file lp precedenti")
    for file_name in os.listdir(output_path):
        if not file_name.endswith(".lp"):
            continue
        os.remove(os.path.join(output_path, file_name))


# Costruisce una mappa activity_id -> metadati attivita/task.
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


# Costruisce una mappa paziente -> attivita osservate.
def build_patient_activity_map(patient_activities: list[dict]) -> dict[int, list[dict]]:
    activity_map: dict[int, list[dict]] = defaultdict(list)

    for row in patient_activities:
        activity_map[int(row["patient_id"])].append(row)

    for patient_id in activity_map:
        activity_map[patient_id].sort(
            key=lambda row: (int(row["activity_id"]), str(row["activity_start"]))
        )

    return activity_map


# Costruisce una mappa (paziente, attivita) -> task raw ordinate.
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


# Garantisce che tracked_anomalies sia pronta per gli aggiornamenti finali.
def ensure_tracked_anomalies_table() -> None:
    tracked_anomalies_table = take_data(query_check_tracked_anomalies)
    table_exists = bool(
        tracked_anomalies_table and tracked_anomalies_table[0]["table_exists"]
    )

    if not table_exists:
        print("debug : creiamo la tabella tracked_anomalies")
        insert_data(query_create_tracked_anomalies)
        return

    tracked_anomalies_column = take_data(query_check_perseveration_column)
    column_exists = bool(
        tracked_anomalies_column and tracked_anomalies_column[0]["column_exists"]
    )

    if not column_exists:
        print("debug : aggiungiamo la colonna perseveration_number")
        insert_data(query_add_column)


# Genera i file lp partendo solo dai dati in snapshot.
def build_lp_files(
    patients_list: list[int],
    activity_catalog: dict[int, dict[str, object]],
    patient_activity_map: dict[int, list[dict]],
    patient_task_map: dict[tuple[int, int], list[dict]],
    time_gap_cache: dict[tuple[int, int], int],
) -> None:
    clear_generated_lp_files(output_dir)

    for patient_id in patients_list:
        activities_rows = patient_activity_map.get(patient_id, [])
        print(
            f"debug : generazione file lp per patient_id={patient_id}, attivita_trovate={len(activities_rows)}"
        )

        for activity_row in activities_rows:
            activity_id = int(activity_row["activity_id"])
            if activity_id not in activity_catalog:
                print(
                    f"debug : activity_id={activity_id} assente dal catalogo, saltiamo il file"
                )
                continue

            activity_info = activity_catalog[activity_id]
            activity_clean = str(activity_info["activity_clean"])
            activity_description = str(activity_info["activity_description"])
            tasks_info = activity_info["tasks"]
            file_name = f"patient_{patient_id}_activity_{activity_id}.lp"
            file_path = os.path.join(output_dir, file_name)

            print(
                f"debug : scriviamo il file lp patient_id={patient_id}, activity_id={activity_id}"
            )

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

            # Scrive le azioni attese.
            for task_info in tasks_info:
                write_file(file_path, f"action({task_info['task_fact']}).", "a")

            write_file(file_path, "", "a")

            # Scrive gli action type gia' presenti nello snapshot.
            for task_info in tasks_info:
                action_type_fact = (
                    f"action_type({activity_clean}, {task_info['task_fact']}, "
                    f"{int(task_info['action_type'])})."
                )
                write_file(file_path, action_type_fact, "a")

            write_file(file_path, "", "a")

            # Scrive il conteggio atteso delle azioni.
            for task_info in tasks_info:
                expected_count = (
                    f"expected_count({activity_clean}, {task_info['task_fact']}, 1)."
                )
                write_file(file_path, expected_count, "a")

            write_file(file_path, "", "a")

            # Scrive i gap gia' calcolati per ogni task.
            for task_info in tasks_info:
                task_id = int(task_info["task_id"])
                gap = int(time_gap_cache[(activity_id, task_id)])
                action_gap = (
                    f"action_gap({activity_clean}, {task_info['task_fact']}, {gap})."
                )
                write_file(file_path, action_gap, "a")

            write_file(file_path, "", "a")
            write_file(file_path, livello_B, "a")

            inst_value = f"i_p{patient_id}_a{activity_id}"
            write_file(file_path, f"instance({inst_value}, {activity_clean}).\n", "a")

            # Scrive le osservazioni raw ricavate dalle task snapshot.
            raw_rows = patient_task_map.get((patient_id, activity_id), [])
            if raw_rows:
                write_file(file_path, '% raw_performed(Instance, Action, Order, TimeMs)\n', "a")
                for obs_order, row in enumerate(raw_rows, start=1):
                    task_description = clean_logic_label(str(row["task_description"]))
                    time_ms = time_to_ms(row["task_time"])
                    raw_performed = (
                        f"raw_performed({inst_value}, {task_description}, {obs_order}, {time_ms})."
                    )
                    write_file(file_path, raw_performed, "a")

            write_file(file_path, "", "a")

            rules = '''prev_same(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    T1 < T2,
    not between_same_time(I,X,T1,T2).

between_same_time(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    raw_performed(I,X,_,Tm),
    T1 < Tm,
    Tm < T2.

episode_start(I,X,T) :-
    raw_performed(I,X,_,T),
    not prev_same(I,X,_,T).

episode_start(I,X,T2) :-
    prev_same(I,X,T1,T2),
    instance(I,A),
    action_gap(A,X,G),
    T2 - T1 > G.

performed(I,X,Tstart) :-
    episode_start(I,X,Tstart).\n'''

            write_file(file_path, rules, "a")
            write_file(file_path, livello_C + "\n", "a")

            check = '''performed_count(I,X,M) :-
    instance(I,_),
    action(X),
    M = #count { T : performed(I,X,T) }.

perseveration(I,X) :-
    instance(I,A),
    expected_count(A,X,N),
    performed_count(I,X,M),
    M > N.

#show perseveration/2.
'''

            write_file(file_path, check, "a")


# Esegue clingo e scrive i risultati finali nel DB.
def run_perseveration_analysis() -> None:
    percorso_glob = os.path.join(output_dir, "*.lp")
    file_lp = glob.glob(percorso_glob)
    patient_anomalies = {}

    print("debug : entriamo nella fase finale di analisi dei file lp con clingo")
    for file_path in file_lp:
        pat = re.search(r'patient_(\d+)', file_path)
        act = re.search(r'activity_(\d+)', file_path)
        if not pat or not act:
            print(f"debug : nome file lp non valido, saltiamo {file_path}")
            continue

        patient_id = pat.group(1)
        activity_id = act.group(1)
        anomalie = run_clingo_test(file_path)

        if (patient_id, activity_id) not in patient_anomalies:
            patient_anomalies[patient_id, activity_id] = 0

        perseveration_number = patient_anomalies[patient_id, activity_id] = anomalie
        print(
            f"debug : clingo completato per patient_id={patient_id}, activity_id={activity_id}, perseveration={perseveration_number}"
        )

        query_check_row = query_check_tracked_anomaly_row_template.format(
            patient_id=patient_id,
            activity_id=activity_id,
        )
        tracked_anomaly_row = take_data(query_check_row)
        row_exists = bool(
            tracked_anomaly_row and tracked_anomaly_row[0]["row_exists"]
        )

        if row_exists:
            print(
                f"debug : aggiorniamo tracked_anomalies per patient_id={patient_id}, activity_id={activity_id}"
            )
        else:
            print(
                f"debug : popoliamo tracked_anomalies con nuova riga per patient_id={patient_id}, activity_id={activity_id}"
            )

        query_upsert = f'''INSERT INTO tracked_anomalies
        (patient_id, activity_id, omission_number, diagnosis_types, perseveration_number)
        VALUES ({patient_id}, {activity_id}, 0, NULL, {perseveration_number})
        ON CONFLICT (patient_id, activity_id)
        DO UPDATE SET perseveration_number = EXCLUDED.perseveration_number'''

        insert_data(query_upsert)


ensure_tracked_anomalies_table()

target_patient_ids = load_target_patient_ids()
snapshot_data = load_or_build_snapshot(
    take_data_fn=take_data,
    snapshot_path=snapshot_path,
    target_patient_ids=target_patient_ids,
    healthy_diagnosis_ids=HEALTHY_DIAGNOSIS_IDS,
    force_rebuild=FORCE_REBUILD_SNAPSHOT,
)

activities_catalog = snapshot_data.get("activities_catalog") or []
target_patients = snapshot_data.get("target_patients") or []
patient_activities = snapshot_data.get("patient_activities") or []
patient_tasks = snapshot_data.get("patient_tasks") or []

print(
    "debug : snapshot caricato "
    f"catalogo={len(activities_catalog)} "
    f"pazienti={len(target_patients)} "
    f"attivita={len(patient_activities)} "
    f"task={len(patient_tasks)}"
)

activity_catalog = build_activity_catalog(activities_catalog)
patient_activity_map = build_patient_activity_map(patient_activities)
patient_task_map = build_patient_task_map(patient_tasks)
patients_list = [int(row["patient_id"]) for row in target_patients]

print("debug : costruiamo la cache dei time gap")
time_gap_cache = run_time_gap_pipeline(
    snapshot_data=snapshot_data,
    activity_tasks_catalog=activities_catalog,
    export_json_path=time_gap_export_path,
    force_rebuild=FORCE_REBUILD_TIME_GAP_CACHE,
)

build_lp_files(
    patients_list=patients_list,
    activity_catalog=activity_catalog,
    patient_activity_map=patient_activity_map,
    patient_task_map=patient_task_map,
    time_gap_cache=time_gap_cache,
)

run_perseveration_analysis()
