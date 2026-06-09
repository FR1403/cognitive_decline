"""Orchestrazione del flusso di stima del time gap."""

from __future__ import annotations

import json
from pathlib import Path
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


def _load_time_gap_cache_from_json(json_path: str) -> Dict[Tuple[int, int], int]:
    payload = json.loads(Path(json_path).read_text(encoding="utf-8"))

    if not isinstance(payload, list):
        raise ValueError("Il file JSON dei time gap deve contenere una lista di record.")

    cache: Dict[Tuple[int, int], int] = {}
    for row in payload:
        if not isinstance(row, dict):
            raise ValueError("Ogni record del JSON dei time gap deve essere un oggetto.")

        if "activity" not in row or "task" not in row or "gap" not in row:
            raise ValueError(
                "Ogni record del JSON dei time gap deve contenere activity, task e gap."
            )

        activity_id = int(row["activity"])
        task_id = int(row["task"])
        gap = int(row["gap"])
        cache[(activity_id, task_id)] = gap

    return cache


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
    export_json_path: Optional[str] = None,
) -> Dict[Tuple[int, int], int]:
    print("debug : entriamo in run_time_gap_pipeline per costruire la cache completa")

    if export_json_path and Path(export_json_path).exists():
        print(
            f"debug : time gap caricati dal json esistente {export_json_path}"
        )
        return _load_time_gap_cache_from_json(export_json_path)

    # La struttura finale contiene un solo numero per ogni coppia
    # (activity_id, task_id), pronto da riusare nello script principale.
    time_gap_cache: Dict[Tuple[int, int], int] = {}
    exported_rows: List[Dict[str, object]] = []

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

            final_gap = apply_variation(
                policy["base_gap_ms"],
                clamped_variation_percent,
            )
            time_gap_cache[(activity_id, target_task_id)] = final_gap
            exported_rows.append(
                {
                    "activity": activity_id,
                    "task": target_task_id,
                    "activity_description": str(row["activity_description"]),
                    "task_description": target_task_description,
                    "action_type": target_action_type,
                    "gap": final_gap,
                }
            )

    if export_json_path:
        export_path = Path(export_json_path)
        export_path.parent.mkdir(parents=True, exist_ok=True)
        export_path.write_text(
            json.dumps(exported_rows, indent=2),
            encoding="utf-8",
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
