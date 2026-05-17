"""Funzioni di supporto per costruire statistiche utili al contesto LLM."""

from __future__ import annotations

from collections import defaultdict
from datetime import datetime
from math import dist
from statistics import StatisticsError, mean, median, multimode, pstdev
from typing import Callable, Dict, List, Optional, Tuple

from .spatial_time_context import load_spatial_time_context
from .take_data_control_patients import load_control_patients_activity_data


# Costanti per interpretare gli orari provenienti dal database.
TIME_FORMATS = ("%H:%M:%S.%f", "%H:%M:%S")


# Costruisce l'intero contesto statistico per l'LLM a partire dalla activity
# richiesta. Questo modulo coordina i moduli di recupero dati e poi comprime
# i risultati in un riassunto statistico unico.
def collect_llm_time_gap_context_stats(
    activity_id: int,
    take_data_fn: Callable[[str], Optional[List[Dict[str, object]]]],
    activity_tasks_catalog: List[Dict[str, object]],
) -> Dict[str, object]:
    # Recuperiamo prima le osservazioni delle task dei controlli sani.
    control_patients_data = load_control_patients_activity_data(
        activity_id=activity_id,
        take_data_fn=take_data_fn,
        activity_tasks_catalog=activity_tasks_catalog,
    )

    # Estraiamo gli id dei controlli effettivamente presenti nei dati raccolti.
    control_patient_ids = sorted(
        {int(row["patient_id"]) for row in (control_patients_data.get("rows") or [])}
    )

    # Recuperiamo poi il contesto spazio-temporale degli stessi controlli.
    spatial_time_data = load_spatial_time_context(
        activity_id=activity_id,
        control_patient_ids=control_patient_ids,
        take_data_fn=take_data_fn,
    )

    # A questo punto deleghiamo a una funzione dedicata la costruzione delle
    # statistiche aggregate che andranno nel contesto per l'LLM.
    stats = build_llm_time_gap_context_stats(
        control_patients_data=control_patients_data,
        spatial_time_data=spatial_time_data,
    )

    # Restituiamo direttamente il blocco statistico pronto per il costruttore
    # del prompt. I dati grezzi restano interni a questo passaggio.
    return stats


# Costruisce un riassunto statistico unico a partire dai dati dei controlli e
# dal contesto spazio-temporale gia' raccolto dagli altri moduli.
def build_llm_time_gap_context_stats(
    control_patients_data: Dict[str, object],
    spatial_time_data: Dict[str, object],
) -> Dict[str, object]:
    # Estraiamo le due liste principali di record dai dizionari in ingresso.
    control_rows = control_patients_data.get("rows") or []
    spatial_rows = spatial_time_data.get("rows") or []
    expected_tasks = control_patients_data.get("expected_tasks") or []

    # Prepariamo le statistiche ricavate dalla sequenza di task osservate.
    task_stats = _build_task_level_stats(control_rows)
    activity_stats = _build_activity_level_stats(control_rows, expected_tasks)

    # Prepariamo le statistiche ricavate dagli eventi grezzi e dai sensori.
    spatial_stats = _build_spatial_level_stats(spatial_rows)

    # Restituiamo una struttura compatta, pensata per essere passata al
    # costruttore del prompt senza dettagli tecnici o dati raw inutili.
    return {
        "control_patient_count": activity_stats["control_patient_count"],
        "expected_task_count": len(expected_tasks),
        "activity_stats": activity_stats,
        "task_stats": task_stats,
        "spatial_stats": spatial_stats,
    }


# Costruisce statistiche generali sull'activity, utili per dare all'LLM una
# vista d'insieme del comportamento dei controlli sani.
def _build_activity_level_stats(
    control_rows: List[Dict[str, object]],
    expected_tasks: List[Dict[str, object]],
) -> Dict[str, object]:
    rows_by_patient = _group_rows_by_patient(control_rows)

    activity_durations_seconds = []
    observed_task_counts = []
    missing_expected_task_counts = []
    within_patient_gap_ms = []

    for patient_rows in rows_by_patient.values():
        patient_rows = _sort_rows_by_task_time(patient_rows)

        if not patient_rows:
            continue

        first_row = patient_rows[0]
        start_time = _parse_time(str(first_row["activity_start"]))
        end_time = _parse_time(str(first_row["activity_end"]))
        activity_durations_seconds.append(
            round((end_time - start_time).total_seconds(), 3)
        )

        observed_task_ids = {int(row["task_id"]) for row in patient_rows}
        observed_task_counts.append(len(observed_task_ids))
        missing_expected_task_counts.append(
            max(len(expected_tasks) - len(observed_task_ids), 0)
        )

        patient_times = [_parse_time(str(row["task_time"])) for row in patient_rows]
        within_patient_gap_ms.extend(_compute_consecutive_deltas_ms(patient_times))

    return {
        "control_patient_count": len(rows_by_patient),
        "activity_duration_seconds": _describe_numbers(activity_durations_seconds),
        "observed_task_count_per_patient": _describe_numbers(observed_task_counts),
        "missing_expected_task_count_per_patient": _describe_numbers(
            missing_expected_task_counts
        ),
        "task_gap_ms_between_consecutive_observations": _describe_numbers(
            within_patient_gap_ms
        ),
    }


# Costruisce statistiche per singola task attesa/osservata. Questi dati
# restano tecnici ma sono gia' ridotti a sole statistiche quantitative.
def _build_task_level_stats(
    control_rows: List[Dict[str, object]],
) -> List[Dict[str, object]]:
    grouped_rows: Dict[int, List[Dict[str, object]]] = defaultdict(list)
    patient_sets: Dict[int, set[int]] = defaultdict(set)

    for row in control_rows:
        task_id = int(row["task_id"])
        grouped_rows[task_id].append(row)
        patient_sets[task_id].add(int(row["patient_id"]))

    stats = []
    for task_id in sorted(grouped_rows):
        rows = grouped_rows[task_id]
        rows_by_patient = _group_rows_by_patient(rows)
        offsets_from_activity_start_ms = []
        gap_ms_between_repetitions = []

        for patient_rows in rows_by_patient.values():
            ordered_rows = _sort_rows_by_task_time(patient_rows)
            patient_times = [_parse_time(str(row["task_time"])) for row in ordered_rows]
            offsets_from_activity_start_ms.extend(
                _compute_offsets_from_activity_start_ms(ordered_rows)
            )
            gap_ms_between_repetitions.extend(
                _compute_consecutive_deltas_ms(patient_times)
            )

        stats.append(
            {
                "task_id": task_id,
                "task_description": str(rows[0]["task_description"]),
                "control_patient_count": len(patient_sets[task_id]),
                "observation_count": len(rows),
                "task_time_from_activity_start_ms": _describe_numbers(
                    offsets_from_activity_start_ms
                ),
                "gap_ms_between_repetitions": _describe_numbers(
                    gap_ms_between_repetitions
                ),
                "activity_completion_ratio": round(
                    len(patient_sets[task_id]) / len(_unique_patient_ids(control_rows)),
                    3,
                )
                if control_rows
                else None,
            }
        )

    return stats

# Costruisce statistiche utili per interpretare gli eventi grezzi e il contesto
# spaziale osservato nei controlli sani.
def _build_spatial_level_stats(
    spatial_rows: List[Dict[str, object]],
) -> Dict[str, object]:
    if not spatial_rows:
        return {
            "event_count": 0,
            "event_count_per_patient": _describe_numbers([]),
            "event_gap_ms": _describe_numbers([]),
            "distance_between_consecutive_events": _describe_numbers([]),
            "movement_speed_units_per_second": _describe_numbers([]),
            "same_sensor_transition_ratio": None,
            "spatial_dispersion": None,
        }

    rows_by_patient = _group_rows_by_patient(spatial_rows)
    event_gap_ms = []
    distance_between_events = []
    movement_speed = []
    event_count_per_patient = []
    x_values = []
    y_values = []
    same_sensor_transitions = 0
    all_transitions = 0

    for patient_rows in rows_by_patient.values():
        patient_rows = _sort_rows_by_event_time(patient_rows)
        event_count_per_patient.append(len(patient_rows))
        event_times = []

        for row in patient_rows:
            event_times.append(_parse_time(str(row["event_time"])))

            if row.get("sensor_x") is not None:
                x_values.append(float(row["sensor_x"]))
            if row.get("sensor_y") is not None:
                y_values.append(float(row["sensor_y"]))

        event_gap_ms.extend(_compute_consecutive_deltas_ms(event_times))
        patient_distances, patient_speeds, patient_same_sensor, patient_transition_count = (
            _compute_spatial_transitions(patient_rows)
        )
        distance_between_events.extend(patient_distances)
        movement_speed.extend(patient_speeds)
        same_sensor_transitions += patient_same_sensor
        all_transitions += patient_transition_count

    return {
        "event_count": len(spatial_rows),
        "event_count_per_patient": _describe_numbers(event_count_per_patient),
        "event_gap_ms": _describe_numbers(event_gap_ms),
        "distance_between_consecutive_events": _describe_numbers(
            distance_between_events
        ),
        "movement_speed_units_per_second": _describe_numbers(movement_speed),
        "same_sensor_transition_ratio": round(
            same_sensor_transitions / all_transitions, 3
        )
        if all_transitions > 0
        else None,
        "spatial_dispersion": _build_spatial_dispersion(x_values, y_values),
    }


# Raggruppa le righe per paziente.
def _group_rows_by_patient(
    rows: List[Dict[str, object]],
) -> Dict[int, List[Dict[str, object]]]:
    grouped_rows: Dict[int, List[Dict[str, object]]] = defaultdict(list)

    for row in rows:
        grouped_rows[int(row["patient_id"])].append(row)

    return grouped_rows


# Ordina le righe dei task per orario e task_id.
def _sort_rows_by_task_time(
    rows: List[Dict[str, object]],
) -> List[Dict[str, object]]:
    return sorted(
        rows,
        key=lambda row: (_parse_time(str(row["task_time"])), int(row["task_id"])),
    )


# Ordina le righe degli eventi grezzi per orario e sensore.
def _sort_rows_by_event_time(
    rows: List[Dict[str, object]],
) -> List[Dict[str, object]]:
    return sorted(
        rows,
        key=lambda row: (_parse_time(str(row["event_time"])), str(row["sensor_id"])),
    )


# Calcola il tempo di ogni task rispetto all'inizio dell'activity.
def _compute_offsets_from_activity_start_ms(
    rows: List[Dict[str, object]],
) -> List[int]:
    offsets_ms = []

    for row in rows:
        activity_start = _parse_time(str(row["activity_start"]))
        task_time = _parse_time(str(row["task_time"]))
        offsets_ms.append(int((task_time - activity_start).total_seconds() * 1000))

    return offsets_ms


# Calcola i delta temporali tra eventi/tempi consecutivi.
def _compute_consecutive_deltas_ms(times: List[datetime]) -> List[int]:
    deltas_ms = []

    for previous, current in zip(times, times[1:]):
        delta_ms = int((current - previous).total_seconds() * 1000)
        if delta_ms >= 0:
            deltas_ms.append(delta_ms)

    return deltas_ms


# Riassume una lista di valori numerici con statistiche compatte.
def _describe_numbers(values: List[float]) -> Dict[str, Optional[float]]:
    if not values:
        return {
            "count": 0,
            "min": None,
            "max": None,
            "mean": None,
            "median": None,
            "mode": None,
            "p25": None,
            "p75": None,
            "p90": None,
            "p95": None,
            "iqr": None,
            "std_dev": None,
        }

    sorted_values = sorted(values)

    return {
        "count": len(values),
        "min": round(min(values), 3),
        "max": round(max(values), 3),
        "mean": round(mean(values), 3),
        "median": round(median(values), 3),
        "mode": _safe_mode(sorted_values),
        "p25": _percentile(sorted_values, 25),
        "p75": _percentile(sorted_values, 75),
        "p90": _percentile(sorted_values, 90),
        "p95": _percentile(sorted_values, 95),
        "iqr": _iqr(sorted_values),
        "std_dev": _safe_std_dev(sorted_values),
    }


# Riassume la dispersione spaziale delle coordinate osservate.
def _build_spatial_dispersion(
    x_values: List[float],
    y_values: List[float],
) -> Optional[Dict[str, float]]:
    if not x_values or not y_values:
        return None

    center_x = mean(x_values)
    center_y = mean(y_values)
    distances_from_center = [
        dist((x_value, y_value), (center_x, center_y))
        for x_value, y_value in zip(x_values, y_values)
    ]

    return {
        "x_min": round(min(x_values), 3),
        "x_max": round(max(x_values), 3),
        "y_min": round(min(y_values), 3),
        "y_max": round(max(y_values), 3),
        "center_x": round(center_x, 3),
        "center_y": round(center_y, 3),
        "mean_distance_from_center": round(mean(distances_from_center), 3),
    }


# Calcola distanze, velocita' e transizioni "stesso sensore" tra eventi
# consecutivi della stessa activity e dello stesso paziente.
def _compute_spatial_transitions(
    patient_rows: List[Dict[str, object]],
) -> Tuple[List[float], List[float], int, int]:
    distances = []
    speeds = []
    same_sensor_count = 0
    transition_count = 0

    for previous, current in zip(patient_rows, patient_rows[1:]):
        transition_count += 1

        if str(previous["sensor_id"]) == str(current["sensor_id"]):
            same_sensor_count += 1

        previous_point = _extract_coordinates(previous)
        current_point = _extract_coordinates(current)
        previous_time = _parse_time(str(previous["event_time"]))
        current_time = _parse_time(str(current["event_time"]))
        delta_seconds = (current_time - previous_time).total_seconds()

        if previous_point is None or current_point is None:
            continue

        distance_value = dist(previous_point, current_point)
        distances.append(distance_value)

        if delta_seconds > 0:
            speeds.append(distance_value / delta_seconds)

    return distances, speeds, same_sensor_count, transition_count


# Estrae la coppia di coordinate del sensore se entrambe presenti.
def _extract_coordinates(row: Dict[str, object]) -> Optional[Tuple[float, float]]:
    if row.get("sensor_x") is None or row.get("sensor_y") is None:
        return None

    return float(row["sensor_x"]), float(row["sensor_y"])


# Restituisce l'insieme degli id paziente unici presenti nei dati task-level.
def _unique_patient_ids(control_rows: List[Dict[str, object]]) -> set[int]:
    return {int(row["patient_id"]) for row in control_rows}


# Calcola un percentile semplice con interpolazione lineare.
def _percentile(sorted_values: List[float], percentile: int) -> Optional[float]:
    if not sorted_values:
        return None

    if len(sorted_values) == 1:
        return round(sorted_values[0], 3)

    rank = (len(sorted_values) - 1) * (percentile / 100)
    lower_index = int(rank)
    upper_index = min(lower_index + 1, len(sorted_values) - 1)
    fraction = rank - lower_index

    interpolated = (
        sorted_values[lower_index]
        + (sorted_values[upper_index] - sorted_values[lower_index]) * fraction
    )
    return round(interpolated, 3)


# Calcola l'intervallo interquartile.
def _iqr(sorted_values: List[float]) -> Optional[float]:
    p25 = _percentile(sorted_values, 25)
    p75 = _percentile(sorted_values, 75)

    if p25 is None or p75 is None:
        return None

    return round(p75 - p25, 3)


# Restituisce una moda compatta solo se davvero informativa.
def _safe_mode(sorted_values: List[float]) -> Optional[float]:
    if not sorted_values:
        return None

    modes = multimode(sorted_values)
    if len(modes) != 1:
        return None

    return round(float(modes[0]), 3)


# Calcola la deviazione standard della popolazione in modo sicuro.
def _safe_std_dev(values: List[float]) -> Optional[float]:
    if len(values) < 2:
        return 0.0 if values else None

    try:
        return round(pstdev(values), 3)
    except StatisticsError:
        return None


# Converte una stringa oraria del database in un oggetto datetime.
def _parse_time(value: str) -> datetime:
    for time_format in TIME_FORMATS:
        try:
            return datetime.strptime(value, time_format)
        except ValueError:
            continue

    raise ValueError(f"Formato orario non supportato: {value}")
