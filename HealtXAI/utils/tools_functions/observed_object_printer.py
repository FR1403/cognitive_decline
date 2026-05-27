"""Utility per stampare observed_object(I,X,O) solo quando l'oggetto e' osservato."""

from __future__ import annotations

import re


# Questo valore rappresenta l'assenza di un oggetto osservato.
# Se il risultato del use_object_extractor e' vuoto, non verra' stampato alcun fatto.
EMPTY_OBJECT = ""


# Questo blocco normalizza una stringa nel formato atomico usato nei fatti logici.
# Converte in minuscolo, sostituisce spazi e separatori con underscore e rimuove
# caratteri non compatibili con il formato atteso nei file .lp.
def normalize_logic_atom(value: str) -> str:
    normalized_value = value.strip().lower()
    normalized_value = re.sub(r"[\s\-\/]+", "_", normalized_value)
    normalized_value = re.sub(r"[^a-z0-9_]", "", normalized_value)
    normalized_value = re.sub(r"_+", "_", normalized_value)
    return normalized_value.strip("_")


# Questo blocco costruisce la stringa observed_object(I,X,O) soltanto se
# l'oggetto estratto esiste davvero. Se non esiste, restituisce stringa vuota.
# Il parametro observed_object_result deve contenere il risultato restituito
# dallo script use_object_extractor.
def build_observed_object_fact(
    instance_id: str,
    action_id: str,
    observed_object_result: str,
) -> str:
    normalized_object = normalize_logic_atom(observed_object_result)
    if not normalized_object:
        return EMPTY_OBJECT

    normalized_instance = normalize_logic_atom(instance_id)
    normalized_action = normalize_logic_atom(action_id)

    return (
        f"observed_object({normalized_instance},"
        f"{normalized_action},"
        f"{normalized_object})."
    )


# Questo blocco stampa il fatto observed_object(I,X,O) solo se il fatto e'
# stato effettivamente costruito. In caso contrario non stampa nulla.
# La funzione restituisce comunque la stringa stampata, oppure stringa vuota
# se nessun oggetto e' stato osservato.
def print_observed_object_fact(
    instance_id: str,
    action_id: str,
    observed_object_result: str,
) -> str:
    fact = build_observed_object_fact(
        instance_id=instance_id,
        action_id=action_id,
        observed_object_result=observed_object_result,
    )

    if fact:
        print(fact)

    return fact
