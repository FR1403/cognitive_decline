"""Costruzione del prompt per la stima del time gap."""

from __future__ import annotations

import json
from typing import Dict, List, Optional, Tuple


# Costruisce un prompt compatto per l'LLM. Il modello non restituisce piu'
# direttamente il time gap finale: sceglie solo una variazione percentuale
# applicata a un valore base empirico.
def build_time_gap_prompt(
    stats_context: Dict[str, object],
    target_task_id: Optional[int] = None,
) -> str:
    policy = build_time_gap_policy(
        stats_context=stats_context,
        target_task_id=target_task_id,
    )
    activity_stats = _prune_activity_stats(stats_context.get("activity_stats") or {})
    spatial_stats = stats_context.get("spatial_stats") or {}
    target_task_stats = policy["target_task_stats"]
    task_description = policy["task_description"]
    base_gap_ms = policy["base_gap_ms"]
    min_variation_percent = policy["allowed_variation_percent"]["min"]
    max_variation_percent = policy["allowed_variation_percent"]["max"]
    min_final_gap_ms = policy["allowed_final_gap_ms"]["min"]
    max_final_gap_ms = policy["allowed_final_gap_ms"]["max"]

    stats_payload = {
        "control_patient_count": stats_context.get("control_patient_count"),
        "expected_task_count": stats_context.get("expected_task_count"),
        "activity_stats": activity_stats,
        "target_task_stats": target_task_stats,
        "spatial_stats": spatial_stats,
        "base_gap_ms": base_gap_ms,
        "allowed_variation_percent": {
            "min": min_variation_percent,
            "max": max_variation_percent,
        },
        "allowed_final_gap_ms": {
            "min": min_final_gap_ms,
            "max": max_final_gap_ms,
        },
    }

    stats_json = json.dumps(stats_payload, ensure_ascii=True, indent=2)

    return (
        "You must estimate a single variation percentage for a time gap threshold.\n\n"
        "Goal:\n"
        "- Start from the empirical base_gap_ms computed from healthy controls.\n"
        "- Choose only a variation_percent that adjusts that base.\n"
        "- The final time gap will be computed by code, not by you.\n\n"
        "Decision rule:\n"
        "- Use the target task statistics as the main evidence.\n"
        "- Consider the task description carefully: different actions can justify "
        "different flexibility ranges.\n"
        "- Use the broader activity and spatial statistics only as supporting context.\n"
        "- If the target task has few observed gaps, be cautious with extreme values.\n"
        "- If the task has many observations, trust its distribution more strongly.\n"
        "- Choose a variation_percent inside the allowed range only.\n"
        "- A negative variation means a stricter threshold than the empirical maximum.\n"
        "- A positive variation means a more permissive threshold than the empirical maximum.\n"
        "- Prefer the smallest adjustment that is still coherent with the full context.\n\n"
        f"Target task id: {_format_optional_int(target_task_id)}.\n"
        f"Target task description: {task_description}.\n\n"
        "Statistical context:\n"
        f"{stats_json}\n\n"
        "Output format:\n"
        'Return ONLY a valid JSON object exactly in this shape:\n'
        '{"variation_percent": <integer_or_float>}\n'
        "Constraints:\n"
        "- Your entire response must be a single JSON object.\n"
        "- If you write anything before or after the JSON object, the response is invalid.\n"
        "- variation_percent must be a number.\n"
        "- variation_percent must stay within the allowed_variation_percent range.\n"
        "- Do not add markdown, comments, or natural language.\n"
    )


# Costruisce la policy numerica condivisa tra prompt e orchestratore finale.
def build_time_gap_policy(
    stats_context: Dict[str, object],
    target_task_id: Optional[int] = None,
) -> Dict[str, object]:
    task_stats = stats_context.get("task_stats") or []
    target_task_stats = _select_target_task_stats(task_stats, target_task_id)
    if target_task_stats is None:
        raise ValueError("Statistiche della task target non disponibili.")

    task_description = str(target_task_stats.get("task_description", ""))
    base_gap_ms = int(target_task_stats["gap_ms_between_repetitions"]["max"])
    min_variation_percent, max_variation_percent = variation_range_for_description(
        task_description
    )

    return {
        "target_task_stats": target_task_stats,
        "task_description": task_description,
        "base_gap_ms": base_gap_ms,
        "allowed_variation_percent": {
            "min": min_variation_percent,
            "max": max_variation_percent,
        },
        "allowed_final_gap_ms": {
            "min": apply_variation(base_gap_ms, min_variation_percent),
            "max": apply_variation(base_gap_ms, max_variation_percent),
        },
    }


# Seleziona il blocco statistico della task target.
def _select_target_task_stats(
    task_stats: List[Dict[str, object]],
    target_task_id: Optional[int],
) -> Optional[Dict[str, object]]:
    if target_task_id is None:
        return task_stats[0] if task_stats else None

    for row in task_stats:
        if int(row["task_id"]) == int(target_task_id):
            return row

    return None


# Definisce un range di variazione percentuale in base al significato della
# descrizione della task. Le azioni rapide e manipolative hanno un range piu'
# stretto; le azioni lente o con pause naturali hanno un range piu' ampio.
def variation_range_for_description(task_description: str) -> Tuple[int, int]:
    text = task_description.lower()

    reflective_keywords = [
        "read",
        "look",
        "inspect",
        "search",
        "check",
        "sit",
        "watch",
        "observe",
        "review",
    ]
    quick_keywords = [
        "cut",
        "slice",
        "pour",
        "open",
        "close",
        "pick",
        "retrieve",
        "place",
        "put",
        "take",
        "spread",
    ]
    extended_activity_keywords = [
        "sweep",
        "clean",
        "dust",
        "wash",
        "dry",
        "fold",
        "arrange",
        "make",
    ]

    if any(keyword in text for keyword in reflective_keywords):
        return (-10, 35)

    if any(keyword in text for keyword in quick_keywords):
        return (-15, 10)

    if any(keyword in text for keyword in extended_activity_keywords):
        return (-10, 25)

    return (-10, 20)


# Applica una variazione percentuale a un valore base.
def apply_variation(base_gap_ms: int, variation_percent: float) -> int:
    return round(base_gap_ms * (1 + variation_percent / 100))


# Converte i valori opzionali in stringa leggibile per il prompt.
def _format_optional_int(value: Optional[int]) -> str:
    return "not provided" if value is None else str(int(value))


# Rimuove dal blocco activity le statistiche che non vogliamo enfatizzare nel
# prompt finale.
def _prune_activity_stats(activity_stats: Dict[str, object]) -> Dict[str, object]:
    return {
        key: value
        for key, value in activity_stats.items()
        if key != "missing_expected_task_count_per_patient"
    }
