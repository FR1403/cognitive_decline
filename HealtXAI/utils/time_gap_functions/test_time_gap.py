"""Verifica empirica del time gap stimato dalla pipeline LLM."""

from __future__ import annotations

from pathlib import Path
import sys
from datetime import datetime
from typing import Dict, List, Optional

BASE_DIR = Path(__file__).resolve().parents[2]
if str(BASE_DIR) not in sys.path:
    sys.path.insert(0, str(BASE_DIR))

from utils.time_gap_functions.take_data_control_patients import (
    load_control_patients_activity_data,
)
from utils.time_gap_functions.prompt_builder import apply_variation
from utils.time_gap_functions.time_gap import run_time_gap_pipeline
from utils.util_functions import take_data


# Query gia' coerente con quella usata nello script principale per recuperare
# il catalogo teorico activity -> task.
QUERY_ACTIVITIES_ACTIONS = """
    SELECT
        aty.activity_id,
        aty.description AS activity_description,
        tt.task_id,
        tt.description AS task_description,
        tt.action_type
    FROM activity_types AS aty
    JOIN task_types AS tt
        ON tt.activity_id = aty.activity_id
    ORDER BY aty.activity_id, tt.task_id
"""


# Formati orari supportati nelle tabelle del database.
TIME_FORMATS = ("%H:%M:%S.%f", "%H:%M:%S")


# Numero di task diverse da verificare.
MAX_TASKS_TO_TEST = 10
CANDIDATE_TASK_LIMIT = 50


def main() -> None:
    _run_zero_clamp_example()

    # Recuperiamo il catalogo completo delle activity e task dal database.
    activity_tasks_catalog = take_data(QUERY_ACTIVITIES_ACTIONS) or []
    if not activity_tasks_catalog:
        print("Impossibile recuperare il catalogo activity-task dal database.")
        return

    # Selezioniamo cinque task reali per cui esista almeno un gap empirico
    # calcolabile sui controlli sani senza perseveration.
    selected_tasks = _select_tasks_with_empirical_gap(
        activity_tasks_catalog=activity_tasks_catalog,
        max_tasks=CANDIDATE_TASK_LIMIT,
    )

    if not selected_tasks:
        print("Nessuna task valida trovata per il confronto empirico.")
        return

    # Per ogni task selezionata:
    # - calcoliamo il massimo gap empirico dai controlli sani;
    # - chiediamo il time gap alla pipeline LLM;
    # - verifichiamo la condizione richiesta.
    successful_checks = 0

    for item in selected_tasks:
        activity_id = int(item["activity_id"])
        task_id = int(item["task_id"])
        empirical_gap_ms = int(item["empirical_gap_ms"])

        try:
            target_action_type = _resolve_action_type(
                activity_tasks_catalog=activity_tasks_catalog,
                activity_id=activity_id,
                task_id=task_id,
            )
            llm_gap_ms = run_time_gap_pipeline(
                activity_id=activity_id,
                take_data_fn=take_data,
                activity_tasks_catalog=activity_tasks_catalog,
                target_task_id=task_id,
                target_action_type=target_action_type,
            )
        except Exception as error:
            print(
                f"activity={activity_id} task={task_id} "
                f"error={error}"
            )
            continue

        result = empirical_gap_ms <= llm_gap_ms
        print(
            f"activity={activity_id} task={task_id} "
            f"empirical_gap_ms={empirical_gap_ms} "
            f"llm_gap_ms={llm_gap_ms} "
            f"result={result}"
        )
        successful_checks += 1

        if successful_checks >= MAX_TASKS_TO_TEST:
            break

    if successful_checks < MAX_TASKS_TO_TEST:
        print(
            f"Verifiche completate con successo: {successful_checks}/{MAX_TASKS_TO_TEST}"
        )


# Verifica esplicita del clamp a zero quando una variazione negativa porterebbe
# il gap finale sotto lo zero.
def _run_zero_clamp_example() -> None:
    base_gap_ms = 10
    variation_percent = -250
    final_gap_ms = apply_variation(base_gap_ms, variation_percent)

    print(
        "zero_clamp_example "
        f"base_gap_ms={base_gap_ms} "
        f"variation_percent={variation_percent} "
        f"final_gap_ms={final_gap_ms} "
        f"result={final_gap_ms == 0}"
    )


# Seleziona le prime task, in ordine activity/task, che abbiano almeno un gap
# empirico calcolabile sui controlli sani.
def _select_tasks_with_empirical_gap(
    activity_tasks_catalog: List[Dict[str, object]],
    max_tasks: int,
) -> List[Dict[str, object]]:
    selected_tasks = []
    seen_pairs = set()

    for row in activity_tasks_catalog:
        activity_id = int(row["activity_id"])
        task_id = int(row["task_id"])
        pair = (activity_id, task_id)

        if pair in seen_pairs:
            continue
        seen_pairs.add(pair)

        control_data = load_control_patients_activity_data(
            activity_id=activity_id,
            take_data_fn=take_data,
            activity_tasks_catalog=activity_tasks_catalog,
        )

        empirical_gap_ms = _compute_empirical_max_gap_for_task(
            control_rows=control_data.get("rows") or [],
            task_id=task_id,
        )

        if empirical_gap_ms is None:
            continue

        selected_tasks.append(
            {
                "activity_id": activity_id,
                "task_id": task_id,
                "empirical_gap_ms": empirical_gap_ms,
            }
        )

        if len(selected_tasks) >= max_tasks:
            break

    return selected_tasks


# Calcola il massimo gap empirico tra osservazioni consecutive della stessa
# task, considerando solo i controlli sani della stessa activity.
def _compute_empirical_max_gap_for_task(
    control_rows: List[Dict[str, object]],
    task_id: int,
) -> Optional[int]:
    rows_by_patient: Dict[int, List[Dict[str, object]]] = {}

    for row in control_rows:
        if int(row["task_id"]) != int(task_id):
            continue

        patient_id = int(row["patient_id"])
        rows_by_patient.setdefault(patient_id, []).append(row)

    empirical_gaps_ms = []

    for patient_rows in rows_by_patient.values():
        ordered_rows = sorted(
            patient_rows,
            key=lambda item: _parse_time(str(item["task_time"])),
        )

        task_times = [_parse_time(str(item["task_time"])) for item in ordered_rows]
        for previous_time, current_time in zip(task_times, task_times[1:]):
            delta_ms = int((current_time - previous_time).total_seconds() * 1000)
            if delta_ms >= 0:
                empirical_gaps_ms.append(delta_ms)

    if not empirical_gaps_ms:
        return None

    return max(empirical_gaps_ms)


# Recupera l'action_type della task target dal catalogo activity-task.
def _resolve_action_type(
    activity_tasks_catalog: List[Dict[str, object]],
    activity_id: int,
    task_id: int,
) -> Optional[int]:
    for row in activity_tasks_catalog:
        if int(row["activity_id"]) != int(activity_id):
            continue
        if int(row["task_id"]) != int(task_id):
            continue

        return int(row["action_type"])

    return None


# Converte la stringa oraria del database in datetime.
def _parse_time(value: str) -> datetime:
    for time_format in TIME_FORMATS:
        try:
            return datetime.strptime(value, time_format)
        except ValueError:
            continue

    raise ValueError(f"Formato orario non supportato: {value}")


if __name__ == "__main__":
    main()
