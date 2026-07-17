from __future__ import annotations

from collections import defaultdict
import os

from script_build_activity_dependency_graph import (
    catalog_snapshot_path,
    clean_logic_label,
    load_or_build_catalog_snapshot,
    save_json,
)


FORCE_REBUILD_CATALOG_SNAPSHOT = False

script_dir = os.path.dirname(os.path.abspath(__file__))
sequence_functions_dir = script_dir
sequence_json_dir = os.path.join(sequence_functions_dir, "anticipation_reversal_json")
deduped_catalog_path = os.path.join(
    sequence_json_dir,
    "activity_dependency_catalog_deduped.json",
)
duplicates_report_path = os.path.join(
    sequence_json_dir,
    "activity_dependency_catalog_duplicates_report.json",
)


def build_duplicate_key(row: dict[str, object]) -> tuple[int, str, int]:
    activity_id = int(row["activity_id"])
    task_description = str(row["task_description"]).strip()
    action_type = int(row["action_type"])
    return activity_id, clean_logic_label(task_description), action_type


def deduplicate_activity_catalog(
    activity_tasks_catalog: list[dict[str, object]],
) -> tuple[list[dict[str, object]], list[dict[str, object]]]:
    grouped_rows: dict[tuple[int, str, int], list[dict[str, object]]] = defaultdict(list)

    for row in activity_tasks_catalog:
        grouped_rows[build_duplicate_key(row)].append(row)

    deduped_catalog: list[dict[str, object]] = []
    duplicates_report: list[dict[str, object]] = []

    for duplicate_key in sorted(grouped_rows):
        grouped = sorted(grouped_rows[duplicate_key], key=lambda row: int(row["task_id"]))
        canonical_row = dict(grouped[0])
        merged_task_ids = [int(row["task_id"]) for row in grouped]

        canonical_row["source_task_ids"] = merged_task_ids
        canonical_row["duplicate_count"] = len(grouped)
        deduped_catalog.append(canonical_row)

        if len(grouped) <= 1:
            continue

        duplicates_report.append(
            {
                "activity_id": int(canonical_row["activity_id"]),
                "activity_description": str(canonical_row["activity_description"]),
                "task_description": str(canonical_row["task_description"]),
                "task_fact": clean_logic_label(str(canonical_row["task_description"])),
                "action_type": int(canonical_row["action_type"]),
                "kept_task_id": int(canonical_row["task_id"]),
                "merged_task_ids": merged_task_ids,
                "duplicate_count": len(grouped),
            }
        )

    deduped_catalog.sort(
        key=lambda row: (int(row["activity_id"]), int(row["task_id"]))
    )
    duplicates_report.sort(
        key=lambda row: (int(row["activity_id"]), int(row["kept_task_id"]))
    )
    return deduped_catalog, duplicates_report


def main() -> None:
    catalog = load_or_build_catalog_snapshot(
        snapshot_path=catalog_snapshot_path,
        force_rebuild=FORCE_REBUILD_CATALOG_SNAPSHOT,
    )
    deduped_catalog, duplicates_report = deduplicate_activity_catalog(catalog)

    save_json(deduped_catalog_path, deduped_catalog)
    save_json(duplicates_report_path, duplicates_report)

    print(
        "debug : catalogo deduplicato salvato "
        f"righe_input={len(catalog)} righe_output={len(deduped_catalog)} "
        f"gruppi_doppioni={len(duplicates_report)} path={deduped_catalog_path}"
    )
    print(f"debug : report doppioni salvato in {duplicates_report_path}")


if __name__ == "__main__":
    main()
