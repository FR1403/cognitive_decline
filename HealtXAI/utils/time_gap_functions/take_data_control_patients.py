"""Funzioni di supporto per recuperare i dati dei controlli dallo snapshot."""

from __future__ import annotations

import re
from typing import Dict, List


# Insieme di default delle diagnosi che consideriamo come controlli sani.
HEALTHY_DIAGNOSIS_IDS = {3, 4, 5, 8}

# Recupera i dati dei pazienti di controllo per una singola activity.
def load_control_patients_activity_data(
    activity_id: int,
    snapshot_data: Dict[str, object],
    activity_tasks_catalog: List[Dict[str, object]],
) -> Dict[str, object]:
    healthy_ids = sorted(
        int(value)
        for value in (
            snapshot_data.get("meta", {}).get("healthy_diagnosis_ids")
            or HEALTHY_DIAGNOSIS_IDS
        )
    )
    rows = [
        row
        for row in (snapshot_data.get("time_gap_control_tasks") or [])
        if int(row["activity_id"]) == int(activity_id)
    ]

    # Normalizziamo l'elenco teorico completo delle task attese ricevuto dallo
    # script principale. In questo modo evitiamo una seconda query e riusiamo
    # i dati gia' caricati a monte.
    expected_tasks = []
    for row in activity_tasks_catalog:
        if int(row["activity_id"]) != int(activity_id):
            continue

        task_description = str(row["task_description"])
        expected_tasks.append(
            {
                "task_id": int(row["task_id"]),
                "task_description": task_description,
                "task_name_clean": _clean_label_for_logic(task_description),
            }
        )

    # Restituiamo le righe ottenute e il catalogo teorico delle task attese.
    return {
        "activity_id": int(activity_id),
        "healthy_diagnosis_ids": healthy_ids,
        "query": "snapshot_json",
        "expected_tasks": expected_tasks,
        "rows": rows,
    }


# Pulisce una descrizione testuale nello stesso stile usato dallo script
# principale per ottenere una costante simbolica piu' facile da riusare.
def _clean_label_for_logic(label: str) -> str:
    clean_label = label.replace(" ", "_")
    return re.sub(r"[^\w]+", "", clean_label.lower())
