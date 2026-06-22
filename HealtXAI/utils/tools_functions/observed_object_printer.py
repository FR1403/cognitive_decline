"""Stampa il fatto observed_object(I,X,O) solo per azioni eseguite con oggetto osservato."""

from __future__ import annotations

import re
from typing import Iterable, Optional


# Questo valore rappresenta il caso in cui non esiste alcun fatto da stampare.
# Viene restituito quando l'oggetto non e' stato osservato oppure il risultato
# dell'estrazione e' vuoto.
EMPTY_FACT = ""


# Questo blocco trasforma una stringa libera in un identificatore compatibile
# con i fatti logici in stile Clingo/Datalog.
# La normalizzazione:
# - converte tutto in minuscolo
# - sostituisce spazi, trattini e slash con underscore
# - rimuove caratteri non alfanumerici
# - compatta eventuali underscore ripetuti
def normalize_logic_atom(value: str) -> str:
    normalized_value = value.strip().lower()
    normalized_value = re.sub(r"[\s\-/]+", "_", normalized_value)
    normalized_value = re.sub(r"[^a-z0-9_]", "", normalized_value)
    normalized_value = re.sub(r"_+", "_", normalized_value)
    return normalized_value.strip("_")


# Questo blocco valida il risultato prodotto dallo script use_object_extractor.
# Se il valore e' vuoto o contiene solo spazi, significa che per questa azione
# non e' stato osservato alcun oggetto e quindi non deve essere stampato alcun
# fatto observed_object.
def has_observed_object(extracted_object: str) -> bool:
    return bool(extracted_object and extracted_object.strip())


# Questo blocco costruisce il fatto observed_object(I,X,O) per una azione gia'
# eseguita, ma solo se l'oggetto e' stato realmente osservato.
# La funzione non si occupa di capire se l'azione e' stata eseguita oppure no:
# questa informazione deve arrivare gia' filtrata dallo script principale.
# Se l'oggetto non e' osservato, restituisce stringa vuota.
def build_observed_object_fact(
    instance_id: str,
    action_id: str,
    extracted_object: str,
) -> str:
    if not has_observed_object(extracted_object):
        return EMPTY_FACT

    normalized_instance = normalize_logic_atom(instance_id)
    normalized_action = normalize_logic_atom(action_id)
    normalized_object = normalize_logic_atom(extracted_object)

    if not normalized_object:
        return EMPTY_FACT

    return (
        f"observed_object({normalized_instance},"
        f"{normalized_action},"
        f"{normalized_object})."
    )


# Questo blocco stampa il fatto observed_object(I,X,O) solo quando il fatto e'
# stato costruito correttamente.
# La funzione e' pensata per essere chiamata dal ciclo principale sulle azioni
# eseguite dal paziente, dopo aver ricevuto il risultato di use_object_extractor.
# Se nessun oggetto e' osservato, non stampa nulla e restituisce stringa vuota.
def print_observed_object_fact(
    instance_id: str,
    action_id: str,
    extracted_object: str,
) -> str:
    fact = build_observed_object_fact(
        instance_id=instance_id,
        action_id=action_id,
        extracted_object=extracted_object,
    )

    if fact:
        print(fact)

    return fact


RETRIEVAL_ACTION_TYPES = {1, 10}
RETRIEVAL_VERBS_PATTERN = re.compile(
    r"\b(retrieve|retrieves|locate|locates|obtain|obtains|gather|gathers|"
    r"pick|picks|pick up|picks up|take|takes|choose|chooses|select|selects|"
    r"bring|brings)\b",
    flags=re.IGNORECASE,
)


def normalize_text_key(value: str) -> str:
    normalized_value = value.strip().lower()
    normalized_value = re.sub(r"\s+", " ", normalized_value)
    return normalized_value


def _extract_task_description(task_row: dict[str, object]) -> str:
    if "task_description" in task_row:
        return str(task_row["task_description"])
    if "description" in task_row:
        return str(task_row["description"])
    return ""


def _extract_action_type(task_row: dict[str, object]) -> Optional[int]:
    raw_action_type = task_row.get("action_type")
    if raw_action_type in (None, ""):
        return None

    try:
        return int(raw_action_type)
    except (TypeError, ValueError):
        return None


def _is_retrieval_task(task_row: dict[str, object]) -> bool:
    action_type = _extract_action_type(task_row)
    task_description = _extract_task_description(task_row)

    if action_type in RETRIEVAL_ACTION_TYPES:
        return True

    return bool(RETRIEVAL_VERBS_PATTERN.search(task_description))


def find_retrieval_task_for_object(
    activity_tasks: Iterable[dict[str, object]],
    expected_object: str,
    object_cache: dict[str, str],
) -> Optional[dict[str, object]]:
    normalized_expected_object = normalize_logic_atom(expected_object)
    if not normalized_expected_object:
        return None

    for task_row in activity_tasks:
        if not _is_retrieval_task(task_row):
            continue

        task_description = _extract_task_description(task_row)
        cached_object = object_cache.get(task_description, "")
        normalized_cached_object = normalize_logic_atom(cached_object)
        normalized_description = normalize_logic_atom(task_description)

        if normalized_cached_object == normalized_expected_object:
            return task_row

        if normalized_expected_object and normalized_expected_object in normalized_description:
            return task_row

    return None


def was_object_retrieved_before_action(
    expected_object: str,
    activity_tasks: Iterable[dict[str, object]],
    performed_rows: Iterable[dict[str, object]],
    action_order: int,
    object_cache: dict[str, str],
) -> bool:
    retrieval_task = find_retrieval_task_for_object(
        activity_tasks=activity_tasks,
        expected_object=expected_object,
        object_cache=object_cache,
    )
    if not retrieval_task:
        return False

    retrieval_task_id = retrieval_task.get("task_id")
    if retrieval_task_id is None:
        return False

    for order_index, performed_row in enumerate(performed_rows, start=1):
        if order_index >= action_order:
            break

        if str(performed_row.get("task_id")) == str(retrieval_task_id):
            return True

    return False
