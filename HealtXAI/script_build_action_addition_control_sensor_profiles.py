from __future__ import annotations

import json
import os
from pathlib import Path

from utils.action_addition.control_sensor_profile import (
    build_activity_task_sensor_profile_payload,
)
from utils.snapshot_data import load_or_build_snapshot
from utils.util_functions import take_data


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

FORCE_REBUILD_SNAPSHOT = False
WINDOW_BEFORE_MS = 5000
WINDOW_AFTER_MS = 5000
NEIGHBOR_DISTANCE = 1.75
MAX_NEIGHBORS = 6

script_dir = os.path.dirname(os.path.abspath(__file__))
action_addition_dir = os.path.join(script_dir, "utils", "action_addition")
json_base_dir = os.path.join(script_dir, "utils", "json", "action_addition")
snapshot_path = os.path.join(
    json_base_dir,
    "action_addition_control_db_snapshot.json",
)
export_json_path = os.path.join(
    json_base_dir,
    "action_addition_control_sensor_profiles.json",
)
map_image_path = os.path.join(action_addition_dir, "sensorlayout.png")

os.makedirs(action_addition_dir, exist_ok=True)
os.makedirs(json_base_dir, exist_ok=True)


query_sensor_catalog = """SELECT
    s.sensor_id,
    s.description AS sensor_description,
    sl.x AS sensor_x,
    sl.y AS sensor_y
FROM sensors AS s
LEFT JOIN sensor_locations AS sl
    ON sl.sensor_id = s.sensor_id
ORDER BY s.sensor_id"""


def load_sensor_catalog_rows() -> list[dict]:
    sensor_rows = take_data(query_sensor_catalog) or []
    print(f"debug : sensori caricati dal db = {len(sensor_rows)}")
    return sensor_rows


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


def save_profile_payload(export_path: str, payload: dict[str, object]) -> None:
    path = Path(export_path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(payload, indent=2, default=str),
        encoding="utf-8",
    )
    print(f"debug : profilo sensoriale action addition salvato in {export_path}")


def main() -> None:
    print("debug : avvio builder base per action addition")
    target_patient_ids = load_target_patient_ids()

    snapshot_data = load_or_build_snapshot(
        take_data_fn=take_data,
        snapshot_path=snapshot_path,
        target_patient_ids=target_patient_ids,
        healthy_diagnosis_ids=HEALTHY_DIAGNOSIS_IDS,
        force_rebuild=FORCE_REBUILD_SNAPSHOT,
    )

    print(
        "debug : snapshot controlli caricato "
        f"control_tasks={len(snapshot_data.get('time_gap_control_tasks') or [])} "
        f"spatial_events={len(snapshot_data.get('time_gap_spatial_events') or [])}"
    )

    sensor_catalog_rows = load_sensor_catalog_rows()

    payload = build_activity_task_sensor_profile_payload(
        snapshot_data=snapshot_data,
        sensor_catalog_rows=sensor_catalog_rows,
        map_image_path=map_image_path,
        window_before_ms=WINDOW_BEFORE_MS,
        window_after_ms=WINDOW_AFTER_MS,
        neighbor_distance=NEIGHBOR_DISTANCE,
        max_neighbors=MAX_NEIGHBORS,
    )
    save_profile_payload(export_json_path, payload)


main()
