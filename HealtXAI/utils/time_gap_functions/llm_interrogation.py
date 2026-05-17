"""Funzioni di supporto per interrogare l'LLM e leggere il time gap."""

from __future__ import annotations

import json
import re
import urllib.error
import urllib.request
from typing import Any, Dict


# Parametri di default per una endpoint compatibile con OpenAI-style chat
# completions. Restano modificabili dal chiamante se servira' in seguito.
DEFAULT_LLM_URL = "http://127.0.0.1:1234/v1/chat/completions"
DEFAULT_MODEL = "mistral-7b-instruct-v0.3"
DEFAULT_TIMEOUT_SECONDS = 120
DEFAULT_MAX_TOKENS = 512
DEFAULT_TEMPERATURE = 0.1


# Invia il prompt all'LLM, si aspetta una risposta JSON e restituisce
# direttamente la variazione percentuale scelta dal modello.
def ask_time_gap_llm(
    prompt: str,
    llm_url: str = DEFAULT_LLM_URL,
    model: str = DEFAULT_MODEL,
    timeout_seconds: int = DEFAULT_TIMEOUT_SECONDS,
    max_tokens: int = DEFAULT_MAX_TOKENS,
    temperature: float = DEFAULT_TEMPERATURE,
) -> float:
    # Costruiamo il payload in formato chat-completions compatibile con LM
    # Studio e endpoint simili.
    request_payload = {
        "model": model,
        "temperature": temperature,
        "max_tokens": max_tokens,
        "messages": [
            {"role": "user", "content": prompt},
        ],
    }

    request = urllib.request.Request(
        llm_url,
        data=json.dumps(request_payload).encode("utf-8"),
        headers={"Content-Type": "application/json"},
        method="POST",
    )

    try:
        with urllib.request.urlopen(request, timeout=timeout_seconds) as response:
            raw_response = response.read().decode("utf-8")
    except urllib.error.HTTPError as error:
        error_body = error.read().decode("utf-8", errors="replace")
        raise RuntimeError(
            f"Errore durante la chiamata all'LLM: HTTP {error.code}: {error_body}"
        ) from error
    except urllib.error.URLError as error:
        raise RuntimeError(f"Errore durante la chiamata all'LLM: {error}") from error

    return _extract_variation_percent_from_response(raw_response)


# Estrae il valore `variation_percent` dalla risposta dell'endpoint.
def _extract_variation_percent_from_response(raw_response: str) -> float:
    parsed_response = json.loads(raw_response)
    llm_content = _extract_message_content(parsed_response)
    parsed_content = _parse_json_from_text(llm_content)

    if "variation_percent" not in parsed_content:
        raise ValueError(
            "La risposta dell'LLM non contiene il campo variation_percent."
        )

    return float(parsed_content["variation_percent"])


# Estrae il contenuto testuale dal formato tipico delle chat completions.
def _extract_message_content(parsed_response: Dict[str, Any]) -> str:
    try:
        return str(parsed_response["choices"][0]["message"]["content"]).strip()
    except (KeyError, IndexError, TypeError) as error:
        raise ValueError(
            "Formato risposta LLM non riconosciuto: impossibile leggere il contenuto."
        ) from error


# Interpreta il testo dell'LLM come JSON. Se il modello aggiunge testo attorno
# al JSON, proviamo comunque a isolare l'oggetto principale.
def _parse_json_from_text(text: str) -> Dict[str, Any]:
    try:
        return json.loads(text)
    except json.JSONDecodeError:
        match = re.search(r"\{.*\}", text, re.DOTALL)
        if not match:
            raise ValueError("La risposta dell'LLM non contiene un JSON valido.")

        return json.loads(match.group(0))
