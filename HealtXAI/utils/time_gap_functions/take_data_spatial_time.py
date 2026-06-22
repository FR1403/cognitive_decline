"""Funzioni di supporto per recuperare il contesto spazio-temporale dallo snapshot."""

from __future__ import annotations

from typing import Dict, List


# Recupera eventi grezzi, sensori, posizioni dei sensori e un contesto
# spaziale leggibile per i pazienti di controllo di una singola activity.
#
# La funzione filtra gli eventi grezzi gia' presenti nello snapshot JSON.
def load_spatial_time_context(
    activity_id: int,
    control_patient_ids: List[int],
    snapshot_data: Dict[str, object],
) -> Dict[str, object]:
    # Se non abbiamo pazienti di controllo da interrogare, restituiamo subito
    # una struttura vuota ma coerente.
    if not control_patient_ids:
        return {
            "activity_id": int(activity_id),
            "control_patient_ids": [],
            "query": "snapshot_json",
            "rows": [],
        }

    # Normalizziamo e ordiniamo gli id dei pazienti per il filtro in memoria.
    patient_ids = sorted(int(patient_id) for patient_id in control_patient_ids)
    rows = [
        row
        for row in (snapshot_data.get("time_gap_spatial_events") or [])
        if int(row["activity_id"]) == int(activity_id)
        and int(row["patient_id"]) in patient_ids
    ]

    # Restituiamo il filtro logico usato e tutte le righe ottenute.
    return {
        "activity_id": int(activity_id),
        "control_patient_ids": patient_ids,
        "query": "snapshot_json",
        "rows": rows,
    }
