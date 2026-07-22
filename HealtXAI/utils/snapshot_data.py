"""Costruzione e lettura dello snapshot JSON per perseveration."""

from __future__ import annotations

import json
from pathlib import Path
from typing import Callable, Dict, List, Optional


# Alias per mantenere leggibile la firma del loader dati.
TakeDataFn = Callable[[str], Optional[List[Dict[str, object]]]]


# Salva un payload JSON sul disco convertendo eventuali date in stringa.
def save_snapshot(snapshot_path: str, payload: Dict[str, object]) -> None:
    path = Path(snapshot_path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(payload, indent=2, default=str),
        encoding="utf-8",
    )


# Carica il payload JSON dello snapshot se gia' presente.
def load_snapshot(snapshot_path: str) -> Dict[str, object]:
    return json.loads(Path(snapshot_path).read_text(encoding="utf-8"))


def is_valid_snapshot_payload(payload: object) -> bool:
    if not isinstance(payload, dict):
        return False

    required_list_keys = [
        "activities_catalog",
        "target_patients",
        "patient_activities",
        "patient_tasks",
        "time_gap_control_tasks",
        "time_gap_spatial_events",
    ]
    for key in required_list_keys:
        if key not in payload or not isinstance(payload[key], list):
            return False

    # Se il catalogo attivita/task e' vuoto, molto probabilmente il DB non e'
    # stato letto correttamente e questo snapshot non va riusato.
    if not payload["activities_catalog"]:
        return False

    return True


def has_matching_snapshot_meta(
    payload: Dict[str, object],
    target_patient_ids: List[int],
    healthy_diagnosis_ids: List[int],
) -> bool:
    if not isinstance(payload, dict):
        return False

    meta = payload.get("meta")
    if not isinstance(meta, dict):
        return False

    snapshot_target_ids = meta.get("target_patient_ids_filter")
    snapshot_healthy_ids = meta.get("healthy_diagnosis_ids")

    if snapshot_target_ids != [int(patient_id) for patient_id in target_patient_ids]:
        return False

    if snapshot_healthy_ids != [
        int(diagnosis_id) for diagnosis_id in healthy_diagnosis_ids
    ]:
        return False

    return True


# Costruisce lo snapshot completo leggendo solo i dati necessari dal DB.
def build_snapshot_from_db(
    take_data_fn: TakeDataFn,
    target_patient_ids: List[int],
    healthy_diagnosis_ids: List[int],
) -> Dict[str, object]:
    patient_ids_sql = ",".join(str(int(patient_id)) for patient_id in target_patient_ids)
    healthy_ids_sql = ",".join(
        str(int(diagnosis_id)) for diagnosis_id in healthy_diagnosis_ids
    )

    print("debug : snapshot db -> caricamento catalogo attivita e task")
    activities_catalog = take_data_fn(
        """SELECT
                aty.activity_id,
                aty.description AS activity_description,
                tt.task_id,
                tt.description AS task_description,
                tt.action_type
            FROM activity_types AS aty
            JOIN task_types AS tt
                ON tt.activity_id = aty.activity_id
            ORDER BY aty.activity_id, tt.task_id"""
    ) or []

    activity_ids = sorted(
        {int(row["activity_id"]) for row in activities_catalog}
    )
    activity_ids_sql = ",".join(str(activity_id) for activity_id in activity_ids)

    print("debug : snapshot db -> caricamento pazienti target")
    target_patients = take_data_fn(
        f"""SELECT DISTINCT patient_id
            FROM patients
            JOIN activities
                ON patient_id = patient
            WHERE patient_id IN ({patient_ids_sql})
            ORDER BY patient_id"""
    ) or []

    print("debug : snapshot db -> caricamento attivita dei pazienti target")
    patient_activities = take_data_fn(
        f"""SELECT
                a.patient AS patient_id,
                a.activity_type AS activity_id,
                aty.description AS activity_description,
                a.start AS activity_start,
                a."end" AS activity_end
            FROM activities AS a
            JOIN activity_types AS aty
                ON aty.activity_id = a.activity_type
            WHERE a.patient IN ({patient_ids_sql})
            ORDER BY a.patient, a.activity_type, a.start::time"""
    ) or []

    print("debug : snapshot db -> caricamento task osservate dei pazienti target")
    patient_tasks = take_data_fn(
        f"""SELECT
                t.patient AS patient_id,
                t.activity AS activity_id,
                t.task AS task_id,
                tt.description AS task_description,
                tt.action_type,
                t.time AS task_time
            FROM tasks AS t
            JOIN task_types AS tt
                ON tt.activity_id = t.activity
                AND tt.task_id = t.task
            WHERE t.patient IN ({patient_ids_sql})
            ORDER BY t.patient, t.activity, t.time::time, t.task"""
    ) or []

    print("debug : snapshot db -> caricamento task dei controlli sani per time gap")
    time_gap_control_tasks = take_data_fn(
        f"""SELECT
                p.patient_id,
                p.diagnosis,
                a.activity_type AS activity_id,
                aty.description AS activity_description,
                a.start AS activity_start,
                a."end" AS activity_end,
                t.time AS task_time,
                t.task AS task_id,
                tt.description AS task_description,
                tt.action_type
            FROM patients AS p
            JOIN activities AS a
                ON a.patient = p.patient_id
            JOIN activity_types AS aty
                ON aty.activity_id = a.activity_type
            JOIN tasks AS t
                ON t.patient = p.patient_id
                AND t.activity = a.activity_type
            JOIN task_types AS tt
                ON tt.activity_id = t.activity
                AND tt.task_id = t.task
            WHERE p.diagnosis IN ({healthy_ids_sql})
              AND a.activity_type IN ({activity_ids_sql})
            ORDER BY a.activity_type, p.patient_id, t.time::time, t.task"""
    ) or []

    print("debug : snapshot db -> caricamento eventi spaziali dei controlli sani")
    time_gap_spatial_events = take_data_fn(
        f"""SELECT
                a.patient AS patient_id,
                a.activity_type AS activity_id,
                aty.description AS activity_description,
                a.start AS activity_start,
                a."end" AS activity_end,
                e.time AS event_time,
                e.sensor AS sensor_id,
                s.description AS sensor_description,
                e.value AS event_value,
                sl.x AS sensor_x,
                sl.y AS sensor_y,
                CONCAT(
                    COALESCE(s.description, 'unknown_sensor'),
                    ' @ (',
                    COALESCE(sl.x::text, '?'),
                    ', ',
                    COALESCE(sl.y::text, '?'),
                    ')'
                ) AS spatial_context
            FROM activities AS a
            JOIN patients AS p
                ON p.patient_id = a.patient
            JOIN activity_types AS aty
                ON aty.activity_id = a.activity_type
            JOIN events AS e
                ON e.patient = a.patient
                AND e.time::time >= a.start::time
                AND e.time::time <= a."end"::time
            LEFT JOIN sensors AS s
                ON s.sensor_id = e.sensor
            LEFT JOIN sensor_locations AS sl
                ON sl.sensor_id = e.sensor
            WHERE p.diagnosis IN ({healthy_ids_sql})
              AND a.activity_type IN ({activity_ids_sql})
            ORDER BY a.activity_type, a.patient, e.time::time, e.sensor"""
    ) or []

    return {
        "meta": {
            "target_patient_ids_filter": [int(patient_id) for patient_id in target_patient_ids],
            "healthy_diagnosis_ids": [int(diagnosis_id) for diagnosis_id in healthy_diagnosis_ids],
        },
        "activities_catalog": activities_catalog,
        "target_patients": target_patients,
        "patient_activities": patient_activities,
        "patient_tasks": patient_tasks,
        "time_gap_control_tasks": time_gap_control_tasks,
        "time_gap_spatial_events": time_gap_spatial_events,
    }


# Carica lo snapshot se presente, altrimenti lo costruisce dal DB.
def load_or_build_snapshot(
    take_data_fn: TakeDataFn,
    snapshot_path: str,
    target_patient_ids: List[int],
    healthy_diagnosis_ids: List[int],
    force_rebuild: bool = False,
) -> Dict[str, object]:
    path = Path(snapshot_path)

    if force_rebuild and path.exists():
        print(f"debug : eliminiamo lo snapshot esistente {snapshot_path}")
        path.unlink()

    if path.exists():
        print(f"debug : snapshot json trovato, saltiamo il caricamento dal db -> {snapshot_path}")
        snapshot = load_snapshot(snapshot_path)
        if is_valid_snapshot_payload(snapshot) and has_matching_snapshot_meta(
            snapshot,
            target_patient_ids=target_patient_ids,
            healthy_diagnosis_ids=healthy_diagnosis_ids,
        ):
            return snapshot

        print(
            "debug : snapshot json non valido, vuoto o non allineato ai filtri correnti, "
            "lo scartiamo e ricarichiamo dal db "
            f"-> {snapshot_path}"
        )
        path.unlink()

    print("debug : snapshot json assente, costruiamo i dati dal db")
    snapshot = build_snapshot_from_db(
        take_data_fn=take_data_fn,
        target_patient_ids=target_patient_ids,
        healthy_diagnosis_ids=healthy_diagnosis_ids,
    )
    if not is_valid_snapshot_payload(snapshot):
        raise RuntimeError(
            "Snapshot DB non valido: query incomplete o nessun catalogo activity/task "
            "recuperato. Il file JSON non verra salvato."
        )
    save_snapshot(snapshot_path, snapshot)
    print(f"debug : snapshot json salvato in {snapshot_path}")
    return snapshot
