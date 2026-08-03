"""Costruzione del prompt per la stima del time gap."""

from __future__ import annotations

from typing import Dict, List, Optional, Tuple

MIN_FALLBACK_BASE_GAP_MS = 10


# Costruisce il prompt scegliendo il ramo piu' adatto fra:
# 1. task con ripetizioni osservate;
# 2. task presente ma senza ripetizioni;
# 3. task assente nei controlli sani.
def build_time_gap_prompt(
    stats_context: Dict[str, object],
    target_task_id: Optional[int] = None,
    target_action_type: Optional[int] = None,
    target_task_description: Optional[str] = None,
) -> str:
    policy = build_time_gap_policy(
        stats_context=stats_context,
        target_task_id=target_task_id,
        target_action_type=target_action_type,
        target_task_description=target_task_description,
    )

    if policy["reference_mode"] == "task_repetition":
        return _build_task_repetition_prompt(
            stats_context=stats_context,
            policy=policy,
            target_task_id=target_task_id,
        )

    if policy["reference_mode"] == "task_no_repetition":
        return _build_task_no_repetition_prompt(
            stats_context=stats_context,
            policy=policy,
            target_task_id=target_task_id,
            target_action_type=target_action_type,
        )

    return _build_task_missing_prompt(
        stats_context=stats_context,
        policy=policy,
        target_task_id=target_task_id,
        target_action_type=target_action_type,
    )


# Costruisce la policy numerica condivisa tra prompt e orchestratore finale.
def build_time_gap_policy(
    stats_context: Dict[str, object],
    target_task_id: Optional[int] = None,
    target_action_type: Optional[int] = None,
    target_task_description: Optional[str] = None,
) -> Dict[str, object]:
    task_stats = stats_context.get("task_stats") or []
    action_type_stats = stats_context.get("action_type_stats") or []
    target_task_stats = _select_target_task_stats(task_stats, target_task_id)
    target_action_type_stats = _select_target_action_type_stats(
        action_type_stats,
        target_action_type,
    )
    task_description = _resolve_task_description(
        target_task_stats=target_task_stats,
        target_task_description=target_task_description,
    )
    min_variation_percent, max_variation_percent = variation_range_for_description(
        task_description
    )

    if target_task_stats is not None:
        repetition_gap_stats = (
            target_task_stats.get("gap_ms_between_repetitions") or {}
        )
        repetition_gap_count = int(repetition_gap_stats.get("count") or 0)

        if repetition_gap_count > 0:
            base_gap_ms = _resolve_base_gap_ms(repetition_gap_stats)
            return _build_policy_payload(
                reference_mode="task_repetition",
                task_description=task_description,
                base_gap_ms=base_gap_ms,
                min_variation_percent=min_variation_percent,
                max_variation_percent=max_variation_percent,
                target_task_stats=target_task_stats,
            )

        action_gap_stats = (
            (target_action_type_stats or {}).get("gap_ms_between_observations") or {}
        )
        base_gap_ms = _resolve_base_gap_ms(action_gap_stats)
        return _build_policy_payload(
            reference_mode="task_no_repetition",
            task_description=task_description,
            base_gap_ms=base_gap_ms,
            min_variation_percent=min_variation_percent,
            max_variation_percent=max_variation_percent,
            target_task_stats=target_task_stats,
            target_action_type_stats=target_action_type_stats,
        )

    action_gap_stats = (
        (target_action_type_stats or {}).get("gap_ms_between_observations") or {}
    )
    base_gap_ms = _resolve_base_gap_ms(action_gap_stats)
    return _build_policy_payload(
        reference_mode="task_missing",
        task_description=task_description,
        base_gap_ms=base_gap_ms,
        min_variation_percent=min_variation_percent,
        max_variation_percent=max_variation_percent,
        target_action_type_stats=target_action_type_stats,
    )


# Costruisce il prompt per il caso migliore: task presente e ripetizioni
# osservate nei controlli sani.
def _build_task_repetition_prompt(
    stats_context: Dict[str, object],
    policy: Dict[str, object],
    target_task_id: Optional[int],
) -> str:
    target_task_stats = policy["target_task_stats"]
    gap_stats = target_task_stats["gap_ms_between_repetitions"]
    activity_gap_stats = _activity_gap_stats(stats_context)
    event_gap_stats = _event_gap_stats(stats_context)

    return (
        "You must estimate a time gap threshold for repeated executions of the same task.\n\n"
        "Meaning of the threshold:\n"
        "- If the threshold is too low, one normal execution may be split into multiple executions.\n"
        "- If the threshold is too high, distinct executions may be merged incorrectly.\n\n"
        "Target task:\n"
        f"- Task id: {_format_optional_int(target_task_id)}\n"
        f"- Description: {policy['task_description']}\n\n"
        "Empirical evidence from healthy controls:\n"
        f"- Healthy controls considered: {stats_context.get('control_patient_count')}\n"
        f"- Controls that executed this task: {target_task_stats.get('control_patient_count')}\n"
        f"- Observed task occurrences: {target_task_stats.get('observation_count')}\n"
        f"- Observed repetition gaps for this task: {gap_stats.get('count')}\n"
        f"- Median repetition gap (ms): {_format_number(gap_stats.get('median'))}\n"
        f"- 95th percentile repetition gap (ms): {_format_number(gap_stats.get('p95'))}\n"
        f"- Maximum repetition gap observed (ms): {_format_number(gap_stats.get('max'))}\n"
        f"- Base gap used for reasoning (ms): {policy['base_gap_ms']}\n\n"
        "Broader context:\n"
        f"- Median consecutive-task gap in the activity (ms): {_format_number(activity_gap_stats.get('median'))}\n"
        f"- 95th percentile consecutive-task gap in the activity (ms): {_format_number(activity_gap_stats.get('p95'))}\n"
        f"- 95th percentile raw-event gap (ms): {_format_number(event_gap_stats.get('p95'))}\n\n"
        "How to reason:\n"
        "- Use the healthy-control repetition gaps for this task as the main evidence.\n"
        "- Give strong weight to the maximum observed repetition gap, because the threshold should avoid splitting a normal healthy repetition.\n"
        "- Use the median and the 95th percentile to judge whether the maximum looks isolated or consistent with the upper tail.\n"
        "- Use the number of observed repetition gaps to judge reliability: more observations mean the empirical distribution is more trustworthy.\n"
        "- Choose a variation_percent relative to base_gap_ms, not a new time gap from scratch.\n"
        "- Keep the adjustment as small as possible while staying coherent with the evidence.\n\n"
        "Output format:\n"
        'Return ONLY a valid JSON object exactly in this shape:\n'
        '{"variation_percent": <integer_or_float>}\n\n'
        "Constraints:\n"
        "- Your entire response must be a single JSON object.\n"
        "- If you write anything before or after the JSON object, the response is invalid.\n"
        f"- variation_percent must stay between {policy['allowed_variation_percent']['min']} and {policy['allowed_variation_percent']['max']}.\n"
        "- Do not add markdown, comments, or natural language.\n"
    )


# Costruisce il prompt per task presente ma senza ripetizioni osservate.
def _build_task_no_repetition_prompt(
    stats_context: Dict[str, object],
    policy: Dict[str, object],
    target_task_id: Optional[int],
    target_action_type: Optional[int],
) -> str:
    target_task_stats = policy["target_task_stats"]
    target_action_type_stats = policy.get("target_action_type_stats") or {}
    action_gap_stats = target_action_type_stats.get("gap_ms_between_observations") or {}
    task_time_stats = target_task_stats.get("task_time_from_activity_start_ms") or {}
    activity_gap_stats = _activity_gap_stats(stats_context)
    event_gap_stats = _event_gap_stats(stats_context)

    return (
        "You must estimate a time gap threshold for repeated executions of the same task.\n\n"
        "Meaning of the threshold:\n"
        "- If the threshold is too low, one normal execution may be split into multiple executions.\n"
        "- If the threshold is too high, distinct executions may be merged incorrectly.\n\n"
        "Target task:\n"
        f"- Task id: {_format_optional_int(target_task_id)}\n"
        f"- Description: {policy['task_description']}\n"
        f"- Action type: {_format_optional_int(target_action_type)}\n\n"
        "Available context:\n"
        f"- Controls that executed this task: {target_task_stats.get('control_patient_count')}\n"
        f"- Observed task occurrences: {target_task_stats.get('observation_count')}\n"
        f"- Median time from activity start to this task (ms): {_format_number(task_time_stats.get('median'))}\n"
        f"- 95th percentile time from activity start to this task (ms): {_format_number(task_time_stats.get('p95'))}\n"
        f"- Median action-type gap (ms): {_format_number(action_gap_stats.get('median'))}\n"
        f"- 95th percentile action-type gap (ms): {_format_number(action_gap_stats.get('p95'))}\n"
        f"- Maximum action-type gap (ms): {_format_number(action_gap_stats.get('max'))}\n"
        f"- Observed action-type gaps: {action_gap_stats.get('count', 0)}\n"
        f"- Median consecutive-task gap in the activity (ms): {_format_number(activity_gap_stats.get('median'))}\n"
        f"- 95th percentile consecutive-task gap in the activity (ms): {_format_number(activity_gap_stats.get('p95'))}\n"
        f"- 95th percentile raw-event gap (ms): {_format_number(event_gap_stats.get('p95'))}\n"
        f"- Base gap used for reasoning (ms): {policy['base_gap_ms']}\n\n"
        "How to reason:\n"
        "- Use the action-type statistics as the main empirical reference.\n"
        "- Use the task description to understand whether this specific task should be stricter or more permissive than the generic action-type pattern.\n"
        "- Use how often the task appears, and when it appears in the activity, as supporting evidence about how stable and temporally constrained the task is.\n"
        "- Use activity-level and event-level timing only as secondary context.\n"
        "- Choose a variation_percent relative to base_gap_ms, not a new time gap from scratch.\n"
        "- Keep the adjustment as small as possible while staying coherent with the evidence.\n\n"
        "Output format:\n"
        'Return ONLY a valid JSON object exactly in this shape:\n'
        '{"variation_percent": <integer_or_float>}\n\n'
        "Constraints:\n"
        "- Your entire response must be a single JSON object.\n"
        "- If you write anything before or after the JSON object, the response is invalid.\n"
        f"- variation_percent must stay between {policy['allowed_variation_percent']['min']} and {policy['allowed_variation_percent']['max']}.\n"
        "- Do not add markdown, comments, or natural language.\n"
    )


# Costruisce il prompt per task assente nei controlli sani.
def _build_task_missing_prompt(
    stats_context: Dict[str, object],
    policy: Dict[str, object],
    target_task_id: Optional[int],
    target_action_type: Optional[int],
) -> str:
    target_action_type_stats = policy.get("target_action_type_stats") or {}
    action_gap_stats = target_action_type_stats.get("gap_ms_between_observations") or {}
    activity_gap_stats = _activity_gap_stats(stats_context)
    event_gap_stats = _event_gap_stats(stats_context)

    return (
        "You must estimate a time gap threshold for repeated executions of the same task.\n\n"
        "Meaning of the threshold:\n"
        "- If the threshold is too low, one normal execution may be split into multiple executions.\n"
        "- If the threshold is too high, distinct executions may be merged incorrectly.\n\n"
        "Target task:\n"
        f"- Task id: {_format_optional_int(target_task_id)}\n"
        f"- Description: {policy['task_description']}\n"
        f"- Action type: {_format_optional_int(target_action_type)}\n\n"
        "Available context:\n"
        f"- Median action-type gap (ms): {_format_number(action_gap_stats.get('median'))}\n"
        f"- 95th percentile action-type gap (ms): {_format_number(action_gap_stats.get('p95'))}\n"
        f"- Maximum action-type gap (ms): {_format_number(action_gap_stats.get('max'))}\n"
        f"- Observed action-type gaps: {action_gap_stats.get('count', 0)}\n"
        f"- Median consecutive-task gap in the activity (ms): {_format_number(activity_gap_stats.get('median'))}\n"
        f"- 95th percentile consecutive-task gap in the activity (ms): {_format_number(activity_gap_stats.get('p95'))}\n"
        f"- 95th percentile raw-event gap (ms): {_format_number(event_gap_stats.get('p95'))}\n"
        f"- Base gap used for reasoning (ms): {policy['base_gap_ms']}\n\n"
        "How to reason:\n"
        "- Use the action-type statistics as the main empirical reference.\n"
        "- Use the task description to decide whether this specific task should be stricter or more permissive than the generic action-type pattern.\n"
        "- Use activity-level and event-level timing only as supporting context.\n"
        "- Choose a variation_percent relative to base_gap_ms, not a new time gap from scratch.\n"
        "- Keep the adjustment as small as possible while staying coherent with the evidence.\n\n"
        "Output format:\n"
        'Return ONLY a valid JSON object exactly in this shape:\n'
        '{"variation_percent": <integer_or_float>}\n\n'
        "Constraints:\n"
        "- Your entire response must be a single JSON object.\n"
        "- If you write anything before or after the JSON object, the response is invalid.\n"
        f"- variation_percent must stay between {policy['allowed_variation_percent']['min']} and {policy['allowed_variation_percent']['max']}.\n"
        "- Do not add markdown, comments, or natural language.\n"
    )


# Costruisce il payload condiviso della policy.
def _build_policy_payload(
    reference_mode: str,
    task_description: str,
    base_gap_ms: int,
    min_variation_percent: int,
    max_variation_percent: int,
    target_task_stats: Optional[Dict[str, object]] = None,
    target_action_type_stats: Optional[Dict[str, object]] = None,
) -> Dict[str, object]:
    policy = {
        "reference_mode": reference_mode,
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

    if target_task_stats is not None:
        policy["target_task_stats"] = target_task_stats
    if target_action_type_stats is not None:
        policy["target_action_type_stats"] = target_action_type_stats

    return policy


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


# Seleziona il blocco statistico dell'action type target da usare come
# fallback empirico nei casi senza ripetizioni o senza task osservata.
def _select_target_action_type_stats(
    action_type_stats: List[Dict[str, object]],
    target_action_type: Optional[int],
) -> Optional[Dict[str, object]]:
    if target_action_type is None:
        return None

    for row in action_type_stats:
        if int(row["action_type"]) == int(target_action_type):
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
    return max(0, round(base_gap_ms * (1 + variation_percent / 100)))


# Converte i valori opzionali in stringa leggibile per il prompt.
def _format_optional_int(value: Optional[int]) -> str:
    return "not provided" if value is None else str(int(value))


# Converte un numero opzionale in stringa leggibile per il prompt.
def _format_number(value: Optional[float]) -> str:
    return "not available" if value is None else str(value)


# Risolve il valore base del gap empirico. Se i gap non sono presenti,
# usiamo un piccolo fallback positivo.
def _resolve_base_gap_ms(gap_stats: Dict[str, object]) -> int:
    max_gap_value = gap_stats.get("max")

    if max_gap_value is None:
        return MIN_FALLBACK_BASE_GAP_MS

    return max(int(max_gap_value), MIN_FALLBACK_BASE_GAP_MS)


# Risolve una descrizione di task utilizzabile anche quando la task non e'
# presente nei controlli sani.
def _resolve_task_description(
    target_task_stats: Optional[Dict[str, object]],
    target_task_description: Optional[str],
) -> str:
    if target_task_stats is not None:
        return str(target_task_stats.get("task_description", ""))

    return str(target_task_description or "")


# Estrae il blocco dei gap tra task consecutive a livello activity.
def _activity_gap_stats(stats_context: Dict[str, object]) -> Dict[str, object]:
    return (stats_context.get("activity_stats") or {}).get(
        "task_gap_ms_between_consecutive_observations"
    ) or {}


# Estrae il blocco dei gap tra eventi grezzi.
def _event_gap_stats(stats_context: Dict[str, object]) -> Dict[str, object]:
    return (stats_context.get("spatial_stats") or {}).get("event_gap_ms") or {}
