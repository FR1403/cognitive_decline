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
) -> int:
    # Recuperiamo e comprimiamo tutto il contesto statistico utile ai
    # controlli sani. Questo modulo interno coordina gia' i passaggi su
    # take_data_control_patients e spatial_time_context.
    stats_context = collect_llm_time_gap_context_stats(
        activity_id=activity_id,
        take_data_fn=take_data_fn,
        activity_tasks_catalog=activity_tasks_catalog,
    )

    # Costruiamo il prompt con il contesto statistico e con gli eventuali
    # identificativi del target su cui vogliamo stimare il time gap.
    prompt = build_time_gap_prompt(
        stats_context=stats_context,
        target_task_id=target_task_id,
    )

    # Il modello restituisce solo una variazione percentuale; il codice applica
    # la variazione a un valore base empirico ricavato dai controlli sani.
    variation_percent = ask_time_gap_llm(prompt)
    policy = build_time_gap_policy(
        stats_context=stats_context,
        target_task_id=target_task_id,
    )
    min_variation_percent = policy["allowed_variation_percent"]["min"]
    max_variation_percent = policy["allowed_variation_percent"]["max"]
    clamped_variation_percent = max(
        min(variation_percent, max_variation_percent),
        min_variation_percent,
    )

    return apply_variation(policy["base_gap_ms"], clamped_variation_percent)
