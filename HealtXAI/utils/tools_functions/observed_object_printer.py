"""Stampa il fatto observed_object(I,X,O) solo per azioni eseguite con oggetto osservato."""

from __future__ import annotations

import re


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
