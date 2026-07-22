"""Helper per costruire profili sensoriali dei controlli sani per action addition."""

from __future__ import annotations

from collections import Counter, defaultdict
from datetime import datetime
from math import sqrt
from pathlib import Path
from typing import Dict, Iterable, List


TIME_FORMATS = ("%H:%M:%S.%f", "%H:%M:%S")
DEFAULT_WINDOW_BEFORE_MS = 5000
DEFAULT_WINDOW_AFTER_MS = 5000
DEFAULT_NEIGHBOR_DISTANCE = 1.75
DEFAULT_MAX_NEIGHBORS = 6
CORE_SENSOR_MIN_SHARE = 0.6
SUPPORT_SENSOR_MIN_SHARE = 0.2


def parse_time_to_ms(value: object) -> int:
    raw_value = str(value)
    for time_format in TIME_FORMATS:
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

    raise ValueError(f"Formato orario non supportato: {raw_value}")


def safe_float(value: object) -> float | None:
    if value is None:
        return None

    raw_value = str(value).strip()
    if not raw_value:
        return None

    try:
        return float(raw_value)
    except ValueError:
        return None


def build_map_asset_metadata(map_image_path: str) -> dict[str, object]:
    image_path = Path(map_image_path)
    return {
        "path": str(image_path),
        "exists": image_path.exists(),
        "file_name": image_path.name,
        "suffix": image_path.suffix.lower(),
    }


def build_sensor_catalog(sensor_rows: List[dict]) -> dict[str, dict[str, object]]:
    sensor_catalog: dict[str, dict[str, object]] = {}

    for row in sensor_rows:
        sensor_id = str(row["sensor_id"])
        sensor_catalog[sensor_id] = {
            "sensor_id": sensor_id,
            "sensor_description": str(row.get("sensor_description") or "unknown_sensor"),
            "sensor_x": safe_float(row.get("sensor_x")),
            "sensor_y": safe_float(row.get("sensor_y")),
        }

    return sensor_catalog


def compute_sensor_neighbors(
    sensor_catalog: dict[str, dict[str, object]],
    max_distance: float = DEFAULT_NEIGHBOR_DISTANCE,
    max_neighbors: int = DEFAULT_MAX_NEIGHBORS,
) -> dict[str, list[dict[str, object]]]:
    neighbors_map: dict[str, list[dict[str, object]]] = {}

    sensor_items = list(sensor_catalog.items())
    for sensor_id, sensor_info in sensor_items:
        sensor_x = sensor_info["sensor_x"]
        sensor_y = sensor_info["sensor_y"]
        if sensor_x is None or sensor_y is None:
            neighbors_map[sensor_id] = []
            continue

        candidate_neighbors: list[dict[str, object]] = []
        for other_sensor_id, other_sensor_info in sensor_items:
            if other_sensor_id == sensor_id:
                continue

            other_x = other_sensor_info["sensor_x"]
            other_y = other_sensor_info["sensor_y"]
            if other_x is None or other_y is None:
                continue

            distance = sqrt((sensor_x - other_x) ** 2 + (sensor_y - other_y) ** 2)
            if distance > max_distance:
                continue

            candidate_neighbors.append(
                {
                    "sensor_id": other_sensor_id,
                    "sensor_description": str(other_sensor_info["sensor_description"]),
                    "distance": round(distance, 4),
                }
            )

        candidate_neighbors.sort(
            key=lambda row: (float(row["distance"]), str(row["sensor_id"]))
        )
        neighbors_map[sensor_id] = candidate_neighbors[:max_neighbors]

    return neighbors_map


def _normalize_event_row(
    row: dict,
    sensor_catalog: dict[str, dict[str, object]],
    neighbors_map: dict[str, list[dict[str, object]]],
) -> dict[str, object]:
    sensor_id = str(row["sensor_id"])
    sensor_info = sensor_catalog.get(
        sensor_id,
        {
            "sensor_description": str(row.get("sensor_description") or "unknown_sensor"),
            "sensor_x": safe_float(row.get("sensor_x")),
            "sensor_y": safe_float(row.get("sensor_y")),
        },
    )

    return {
        "patient_id": int(row["patient_id"]),
        "activity_id": int(row["activity_id"]),
        "event_time": str(row["event_time"]),
        "event_time_ms": parse_time_to_ms(row["event_time"]),
        "sensor_id": sensor_id,
        "sensor_description": str(sensor_info["sensor_description"]),
        "event_value": str(row.get("event_value") or ""),
        "sensor_x": sensor_info["sensor_x"],
        "sensor_y": sensor_info["sensor_y"],
        "neighbors": neighbors_map.get(sensor_id, []),
    }


def build_control_task_event_windows(
    snapshot_data: dict[str, object],
    sensor_catalog: dict[str, dict[str, object]],
    neighbors_map: dict[str, list[dict[str, object]]],
    window_before_ms: int = DEFAULT_WINDOW_BEFORE_MS,
    window_after_ms: int = DEFAULT_WINDOW_AFTER_MS,
) -> list[dict[str, object]]:
    control_tasks = snapshot_data.get("time_gap_control_tasks") or []
    spatial_events = snapshot_data.get("time_gap_spatial_events") or []

    indexed_events: dict[tuple[int, int], list[dict[str, object]]] = defaultdict(list)
    for row in spatial_events:
        normalized_row = _normalize_event_row(
            row=row,
            sensor_catalog=sensor_catalog,
            neighbors_map=neighbors_map,
        )
        indexed_events[
            (int(normalized_row["patient_id"]), int(normalized_row["activity_id"]))
        ].append(normalized_row)

    for key in indexed_events:
        indexed_events[key].sort(
            key=lambda row: (
                int(row["event_time_ms"]),
                str(row["sensor_id"]),
                str(row["event_value"]),
            )
        )

    task_windows: list[dict[str, object]] = []
    for task_row in control_tasks:
        patient_id = int(task_row["patient_id"])
        activity_id = int(task_row["activity_id"])
        task_id = int(task_row["task_id"])
        task_time = str(task_row["task_time"])
        task_time_ms = parse_time_to_ms(task_time)
        window_start_ms = task_time_ms - int(window_before_ms)
        window_end_ms = task_time_ms + int(window_after_ms)

        matching_events = []
        for event_row in indexed_events.get((patient_id, activity_id), []):
            event_time_ms = int(event_row["event_time_ms"])
            if event_time_ms < window_start_ms or event_time_ms > window_end_ms:
                continue

            event_payload = {
                "event_time": str(event_row["event_time"]),
                "event_time_ms": event_time_ms,
                "offset_ms": event_time_ms - task_time_ms,
                "sensor_id": str(event_row["sensor_id"]),
                "sensor_description": str(event_row["sensor_description"]),
                "event_value": str(event_row["event_value"]),
                "sensor_x": event_row["sensor_x"],
                "sensor_y": event_row["sensor_y"],
                "neighbors": event_row["neighbors"],
            }
            matching_events.append(event_payload)

        task_windows.append(
            {
                "patient_id": patient_id,
                "diagnosis": int(task_row["diagnosis"]),
                "activity_id": activity_id,
                "activity_description": str(task_row["activity_description"]),
                "activity_start": str(task_row["activity_start"]),
                "activity_end": str(task_row["activity_end"]),
                "task_id": task_id,
                "task_description": str(task_row["task_description"]),
                "action_type": int(task_row["action_type"]),
                "task_time": task_time,
                "task_time_ms": task_time_ms,
                "window_before_ms": int(window_before_ms),
                "window_after_ms": int(window_after_ms),
                "events": matching_events,
            }
        )

    task_windows.sort(
        key=lambda row: (
            int(row["activity_id"]),
            int(row["patient_id"]),
            int(row["task_time_ms"]),
            int(row["task_id"]),
        )
    )
    return task_windows


def _classify_sensor_roles(
    window_count: int,
    sensor_window_counter: Counter[str],
) -> dict[str, list[str]]:
    if window_count <= 0:
        return {
            "core_sensors": [],
            "support_sensors": [],
            "rare_sensors": [],
        }

    core_sensors: list[str] = []
    support_sensors: list[str] = []
    rare_sensors: list[str] = []
    for sensor_id, count in sensor_window_counter.items():
        share = count / window_count
        if share >= CORE_SENSOR_MIN_SHARE:
            core_sensors.append(sensor_id)
        elif share >= SUPPORT_SENSOR_MIN_SHARE:
            support_sensors.append(sensor_id)
        else:
            rare_sensors.append(sensor_id)

    return {
        "core_sensors": sorted(core_sensors),
        "support_sensors": sorted(support_sensors),
        "rare_sensors": sorted(rare_sensors),
    }


def summarize_task_sensor_profiles(
    task_windows: List[dict[str, object]],
    sensor_catalog: dict[str, dict[str, object]],
) -> dict[str, dict[str, object]]:
    grouped_windows: dict[tuple[int, int], list[dict[str, object]]] = defaultdict(list)
    for window_row in task_windows:
        grouped_windows[
            (int(window_row["activity_id"]), int(window_row["task_id"]))
        ].append(window_row)

    profile_map: dict[str, dict[str, object]] = {}
    for (activity_id, task_id), windows in grouped_windows.items():
        sensor_window_counter: Counter[str] = Counter()
        sensor_event_counter: Counter[str] = Counter()
        neighbor_counter: Counter[str] = Counter()
        object_sensor_counter: Counter[str] = Counter()
        motion_sensor_counter: Counter[str] = Counter()

        for window_row in windows:
            window_sensor_ids = set()
            for event_row in window_row["events"]:
                sensor_id = str(event_row["sensor_id"])
                sensor_description = str(event_row["sensor_description"])
                window_sensor_ids.add(sensor_id)
                sensor_event_counter[sensor_id] += 1

                if sensor_description == "motion":
                    motion_sensor_counter[sensor_id] += 1
                else:
                    object_sensor_counter[sensor_id] += 1

                for neighbor_info in event_row.get("neighbors", []):
                    neighbor_counter[str(neighbor_info["sensor_id"])] += 1

            for sensor_id in window_sensor_ids:
                sensor_window_counter[sensor_id] += 1

        task_key = f"activity_{activity_id}_task_{task_id}"
        sensor_roles = _classify_sensor_roles(
            window_count=len(windows),
            sensor_window_counter=sensor_window_counter,
        )

        sensor_frequency_rows = []
        for sensor_id, window_hits in sensor_window_counter.most_common():
            sensor_info = sensor_catalog.get(sensor_id, {})
            sensor_frequency_rows.append(
                {
                    "sensor_id": sensor_id,
                    "sensor_description": str(
                        sensor_info.get("sensor_description") or "unknown_sensor"
                    ),
                    "window_hits": int(window_hits),
                    "window_share": round(window_hits / len(windows), 4),
                    "event_hits": int(sensor_event_counter[sensor_id]),
                    "sensor_x": sensor_info.get("sensor_x"),
                    "sensor_y": sensor_info.get("sensor_y"),
                }
            )

        profile_map[task_key] = {
            "activity_id": activity_id,
            "task_id": task_id,
            "activity_description": str(windows[0]["activity_description"]),
            "task_description": str(windows[0]["task_description"]),
            "action_type": int(windows[0]["action_type"]),
            "support_count": len(windows),
            "core_sensors": sensor_roles["core_sensors"],
            "support_sensors": sensor_roles["support_sensors"],
            "rare_sensors": sensor_roles["rare_sensors"],
            "sensor_frequency": sensor_frequency_rows,
            "object_sensor_frequency": [
                {
                    "sensor_id": sensor_id,
                    "sensor_description": str(
                        sensor_catalog.get(sensor_id, {}).get("sensor_description")
                        or "unknown_sensor"
                    ),
                    "event_hits": int(event_hits),
                }
                for sensor_id, event_hits in object_sensor_counter.most_common()
            ],
            "motion_sensor_frequency": [
                {
                    "sensor_id": sensor_id,
                    "sensor_description": str(
                        sensor_catalog.get(sensor_id, {}).get("sensor_description")
                        or "unknown_sensor"
                    ),
                    "event_hits": int(event_hits),
                }
                for sensor_id, event_hits in motion_sensor_counter.most_common()
            ],
            "neighbor_sensor_frequency": [
                {
                    "sensor_id": sensor_id,
                    "sensor_description": str(
                        sensor_catalog.get(sensor_id, {}).get("sensor_description")
                        or "unknown_sensor"
                    ),
                    "neighbor_hits": int(neighbor_hits),
                }
                for sensor_id, neighbor_hits in neighbor_counter.most_common()
            ],
        }

    return profile_map


def build_activity_task_sensor_profile_payload(
    snapshot_data: dict[str, object],
    sensor_catalog_rows: List[dict],
    map_image_path: str,
    window_before_ms: int = DEFAULT_WINDOW_BEFORE_MS,
    window_after_ms: int = DEFAULT_WINDOW_AFTER_MS,
    neighbor_distance: float = DEFAULT_NEIGHBOR_DISTANCE,
    max_neighbors: int = DEFAULT_MAX_NEIGHBORS,
) -> dict[str, object]:
    sensor_catalog = build_sensor_catalog(sensor_catalog_rows)
    neighbors_map = compute_sensor_neighbors(
        sensor_catalog=sensor_catalog,
        max_distance=neighbor_distance,
        max_neighbors=max_neighbors,
    )
    task_windows = build_control_task_event_windows(
        snapshot_data=snapshot_data,
        sensor_catalog=sensor_catalog,
        neighbors_map=neighbors_map,
        window_before_ms=window_before_ms,
        window_after_ms=window_after_ms,
    )
    task_profiles = summarize_task_sensor_profiles(
        task_windows=task_windows,
        sensor_catalog=sensor_catalog,
    )

    return {
        "meta": {
            "healthy_diagnosis_ids": snapshot_data.get("meta", {}).get(
                "healthy_diagnosis_ids",
                [],
            ),
            "window_before_ms": int(window_before_ms),
            "window_after_ms": int(window_after_ms),
            "neighbor_distance": float(neighbor_distance),
            "max_neighbors": int(max_neighbors),
            "control_task_count": len(snapshot_data.get("time_gap_control_tasks") or []),
            "spatial_event_count": len(snapshot_data.get("time_gap_spatial_events") or []),
        },
        "map_asset": build_map_asset_metadata(map_image_path),
        "sensor_catalog": sensor_catalog,
        "sensor_neighbors": neighbors_map,
        "control_task_event_windows": task_windows,
        "task_sensor_profiles": task_profiles,
    }

