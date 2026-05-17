"""Funzioni di supporto per recuperare il contesto spazio-temporale."""

from __future__ import annotations

from typing import Callable, Dict, List, Optional


# Recupera eventi grezzi, sensori, posizioni dei sensori e un contesto
# spaziale leggibile per i pazienti di controllo di una singola activity.
#
# La funzione non apre connessioni al database: riceve in ingresso
# `take_data_fn`, cioe' la funzione dello script principale che esegue la query.
def load_spatial_time_context(
    activity_id: int,
    control_patient_ids: List[int],
    take_data_fn: Callable[[str], Optional[List[Dict[str, object]]]],
) -> Dict[str, object]:
    # Se non abbiamo pazienti di controllo da interrogare, restituiamo subito
    # una struttura vuota ma coerente.
    if not control_patient_ids:
        return {
            "activity_id": int(activity_id),
            "control_patient_ids": [],
            "query": None,
            "rows": [],
        }

    # Normalizziamo e ordiniamo gli id dei pazienti, cosi' la query resta
    # stabile e leggibile.
    patient_ids = sorted(int(patient_id) for patient_id in control_patient_ids)

    # Costruiamo la query principale:
    # - prendiamo gli eventi grezzi dei pazienti richiesti;
    # - limitiamo gli eventi alla finestra temporale della activity;
    # - aggiungiamo il tipo di sensore;
    # - aggiungiamo le coordinate del sensore;
    # - costruiamo anche una stringa di contesto spaziale gia' leggibile.
    query = f"""
        SELECT
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
        WHERE a.activity_type = {int(activity_id)}
          AND a.patient IN ({",".join(str(patient_id) for patient_id in patient_ids)})
        ORDER BY a.patient, e.time::time, e.sensor;
    """

    # Eseguiamo la query tramite la funzione ricevuta dallo script principale.
    rows = take_data_fn(query) or []

    # Restituiamo la query usata e tutte le righe ottenute.
    return {
        "activity_id": int(activity_id),
        "control_patient_ids": patient_ids,
        "query": query,
        "rows": rows,
    }
