"""Orchestrazione del flusso di stima del time gap."""

from __future__ import annotations

from typing import Callable, Dict, List, Optional, Tuple

from .llm_time_gap_context_stats import collect_llm_time_gap_context_stats
from .llm_interrogation import ask_time_gap_llm
from .prompt_builder import (
    apply_variation,
    build_time_gap_policy,
    build_time_gap_prompt,
)


# Alias di tipo per rendere piu' leggibile la firma della funzione passata
# dall'esterno per l'accesso al database.
TakeDataFn = Callable[[str], Optional[List[Dict[str, object]]]]


# Funzione principale del flusso time gap.
#
# Ordine dei passaggi:
# 1. recupera i dati dei controlli sani;
# 2. recupera il contesto spazio-temporale degli stessi controlli;
# 3. costruisce le statistiche da dare al prompt;
# 4. costruisce il prompt;
# 5. interroga l'LLM.
def run_time_gap_pipeline(
    take_data_fn: TakeDataFn,
    activity_tasks_catalog: List[Dict[str, object]],
) -> Dict[Tuple[int, int], int]:
    print("debug : entriamo in run_time_gap_pipeline per costruire la cache completa")

    # La struttura finale contiene un solo numero per ogni coppia
    # (activity_id, task_id), pronto da riusare nello script principale.
    time_gap_cache: Dict[Tuple[int, int], int] = {}

    # Raggruppiamo il catalogo per activity per raccogliere il contesto dei
    # controlli sani una sola volta per activity.
    activity_catalog_map: Dict[int, List[Dict[str, object]]] = {}
    for row in activity_tasks_catalog:
        activity_id = int(row["activity_id"])
        if activity_id not in activity_catalog_map:
            activity_catalog_map[activity_id] = []
        activity_catalog_map[activity_id].append(row)

    for activity_id, activity_rows in activity_catalog_map.items():
        print(
            f"debug : entriamo nella raccolta del contesto statistico del time gap per activity_id={activity_id}"
        )
        stats_context = collect_llm_time_gap_context_stats(
            activity_id=activity_id,
            take_data_fn=take_data_fn,
            activity_tasks_catalog=activity_tasks_catalog,
        )

        for row in activity_rows:
            target_task_id = int(row["task_id"])
            target_action_type = int(row["action_type"])
            target_task_description = str(row["task_description"])

            prompt = build_time_gap_prompt(
                stats_context=stats_context,
                target_task_id=target_task_id,
                target_action_type=target_action_type,
                target_task_description=target_task_description,
            )

            print(
                f"debug : entriamo nell'interrogazione dell llm per il time gap activity_id={activity_id} target_task_id={target_task_id}"
            )
            variation_percent = ask_time_gap_llm(prompt)
            policy = build_time_gap_policy(
                stats_context=stats_context,
                target_task_id=target_task_id,
                target_action_type=target_action_type,
                target_task_description=target_task_description,
            )
            min_variation_percent = policy["allowed_variation_percent"]["min"]
            max_variation_percent = policy["allowed_variation_percent"]["max"]
            clamped_variation_percent = max(
                min(variation_percent, max_variation_percent),
                min_variation_percent,
            )

            time_gap_cache[(activity_id, target_task_id)] = apply_variation(
                policy["base_gap_ms"],
                clamped_variation_percent,
            )

    return time_gap_cache


# Recupera la descrizione della task target dal catalogo activity-task gia'
# disponibile nello script principale.
def _resolve_target_task_description(
    activity_tasks_catalog: List[Dict[str, object]],
    activity_id: int,
    target_task_id: Optional[int],
) -> Optional[str]:
    if target_task_id is None:
        return None

    for row in activity_tasks_catalog:
        if int(row["activity_id"]) != int(activity_id):
            continue
        if int(row["task_id"]) != int(target_task_id):
            continue

        return str(row["task_description"])

    return None
