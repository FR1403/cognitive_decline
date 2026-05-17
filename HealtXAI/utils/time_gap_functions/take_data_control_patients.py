"""Funzioni di supporto per recuperare i dati dei pazienti di controllo."""

from __future__ import annotations

import re
from typing import Callable, Dict, List, Optional


# Insieme di default delle diagnosi che consideriamo come controlli sani.
HEALTHY_DIAGNOSIS_IDS = {3, 4, 5, 8}

# Recupera i dati dei pazienti di controllo per una singola activity.
# Prende in ingresso l'id della activity e una funzione (in questo caso sara'
# take_data) che esegue la query sul database.
def load_control_patients_activity_data(
    activity_id: int,
    take_data_fn: Callable[[str], Optional[List[Dict[str, object]]]],
    activity_tasks_catalog: List[Dict[str, object]],
) -> Dict[str, object]:
    # Insieme hardcoded delle diagnosi sane 
    healthy_ids = sorted(HEALTHY_DIAGNOSIS_IDS)

    # Query principale:
    # - seleziona solo i pazienti di controllo;
    # - aggiunge la descrizione testuale della activity;
    # - prende tutte le task osservate della stessa activity;
    # - aggiunge i metadati della task e della finestra temporale
    #   dell'attivita';
    # - esclude i controlli che presentano almeno una perseveration
    #   nell'activity richiesta;
    # - ordina i risultati per paziente e tempo.
    query = f"""
        SELECT
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
        WHERE p.diagnosis IN ({",".join(str(value) for value in healthy_ids)})
          AND a.activity_type = {int(activity_id)}
          AND NOT EXISTS (
              SELECT 1
              FROM participants_activity_anomalies AS paa
              WHERE paa.patient_id = p.patient_id
                AND paa.activity_type = a.activity_type
                AND paa."Perseverations" > 0
          )
        ORDER BY p.patient_id, t.time::time, t.task;
    """

    # Recuperiamo i dati, e se non sono presenti, restituiamo una lista vuota
    # se i dati son presenti, restituiamo una lista di dizionari
    rows = take_data_fn(query) or []

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

    # Restituiamo la query costruita, le righe ottenute e il catalogo teorico
    # delle task attese per l'activity.
    return {
        "activity_id": int(activity_id),
        "healthy_diagnosis_ids": healthy_ids,
        "query": query,
        "expected_tasks": expected_tasks,
        "rows": rows,
    }


# Pulisce una descrizione testuale nello stesso stile usato dallo script
# principale per ottenere una costante simbolica piu' facile da riusare.
def _clean_label_for_logic(label: str) -> str:
    clean_label = label.replace(" ", "_")
    return re.sub(r"[^\w]+", "", clean_label.lower())
