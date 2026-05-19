"""Orchestrazione del flusso di stima del time gap."""

from __future__ import annotations

from typing import Callable, Dict, List, Optional

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
    activity_id: int,
    take_data_fn: TakeDataFn,
    activity_tasks_catalog: List[Dict[str, object]],
    target_task_id: Optional[int] = None,
    target_action_type: Optional[int] = None,
) -> int:
    print(
        f"debug : entriamo in run_time_gap_pipeline per activity_id={activity_id} target_task_id={target_task_id}"
    )

    # Recuperiamo e comprimiamo tutto il contesto statistico utile ai
    # controlli sani. Questo modulo interno coordina gia' i passaggi su
    # take_data_control_patients e spatial_time_context.
    print("debug : entriamo nella raccolta del contesto statistico del time gap")
    stats_context = collect_llm_time_gap_context_stats(
        activity_id=activity_id,
        take_data_fn=take_data_fn,
        activity_tasks_catalog=activity_tasks_catalog,
    )

    target_task_description = _resolve_target_task_description(
        activity_tasks_catalog=activity_tasks_catalog,
        activity_id=activity_id,
        target_task_id=target_task_id,
    )

    # Costruiamo il prompt con il contesto statistico e con gli eventuali
    # identificativi del target su cui vogliamo stimare il time gap.
    prompt = build_time_gap_prompt(
        stats_context=stats_context,
        target_task_id=target_task_id,
        target_action_type=target_action_type,
        target_task_description=target_task_description,
    )

    # Il modello restituisce solo una variazione percentuale; il codice applica
    # la variazione a un valore base empirico ricavato dai controlli sani.
    print("debug : entriamo nell'interrogazione dell llm per il time gap")
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

    return apply_variation(policy["base_gap_ms"], clamped_variation_percent)


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
