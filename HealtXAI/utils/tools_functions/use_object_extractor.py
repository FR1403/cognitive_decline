"""Estrae l'oggetto/tool usato per performare un'azione via LLM"""

from __future__ import annotations

import json
import os
import re
import urllib.error
import urllib.request
from pathlib import Path
from typing import Callable, Optional

from utils.util_functions import get_lm_studio_url

DEFAULT_LM_STUDIO_URL = get_lm_studio_url()
DEFAULT_MODEL = "mistralai/mistral-7b-instruct-v0.3"
DEFAULT_TIMEOUT_SECONDS = 60
DEFAULT_FALLBACK_OBJECT = ""
RAW_CACHE_SUFFIX = "_raw"

#consulta LLM per estrarre l'oggetto di un'azione 
def extract_use_object(
    action_description: str,
    *,
    endpoint: str = DEFAULT_LM_STUDIO_URL,
    model: str = DEFAULT_MODEL,
    timeout_seconds: int = DEFAULT_TIMEOUT_SECONDS,
    fallback_object: str = DEFAULT_FALLBACK_OBJECT,
    completion_fn: Optional[Callable[[dict, str, int], str]] = None,
) -> str:
    """Return only the object/tool used to execute the given action."""
    raw_answer = extract_raw_use_object(
        action_description,
        endpoint=endpoint,
        model=model,
        timeout_seconds=timeout_seconds,
        fallback_object=fallback_object,
        completion_fn=completion_fn,
    )
    return _parse_object(raw_answer, fallback_object)


def extract_raw_use_object(
    action_description: str,
    *,
    endpoint: str = DEFAULT_LM_STUDIO_URL,
    model: str = DEFAULT_MODEL,
    timeout_seconds: int = DEFAULT_TIMEOUT_SECONDS,
    fallback_object: str = DEFAULT_FALLBACK_OBJECT,
    completion_fn: Optional[Callable[[dict, str, int], str]] = None,
) -> str:
    """Return the raw model output for the given action."""
    normalized_action = action_description.strip()
    if not normalized_action:
        return fallback_object

    resolved_endpoint = _resolve_endpoint(endpoint)
    resolved_model = _resolve_model(model)
    prompt = _build_prompt(normalized_action)
    payload = _build_payload(prompt, resolved_model)
    completion_caller = completion_fn or _call_lm_studio

    try:
        return completion_caller(payload, resolved_endpoint, timeout_seconds)
    except urllib.error.HTTPError:
        fallback_model = _discover_first_model(resolved_endpoint, timeout_seconds)
        if fallback_model and fallback_model != resolved_model:
            retry_payload = _build_payload(prompt, fallback_model)
            try:
                return completion_caller(
                    retry_payload,
                    resolved_endpoint,
                    timeout_seconds,
                )
            except (OSError, urllib.error.URLError, TimeoutError, ValueError, KeyError):
                return fallback_object
        return fallback_object
    except (OSError, urllib.error.URLError, TimeoutError, ValueError, KeyError):
        return fallback_object


def load_object_cache(cache_path: str) -> dict[str, str]:
    path = Path(cache_path)
    if not path.exists():
        return {}

    payload = json.loads(path.read_text(encoding="utf-8"))
    return {str(key): str(value) for key, value in payload.items()}


def save_object_cache(cache_path: str, cache_payload: dict[str, str]) -> None:
    path = Path(cache_path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(cache_payload, indent=2, ensure_ascii=True),
        encoding="utf-8",
    )


def get_raw_cache_path(cache_path: str) -> str:
    path = Path(cache_path)
    return str(path.with_name(f"{path.stem}{RAW_CACHE_SUFFIX}{path.suffix}"))


def load_or_build_object_cache(
    action_descriptions: list[str],
    cache_path: str,
    *,
    force_rebuild: bool = False,
    endpoint: str = DEFAULT_LM_STUDIO_URL,
    model: str = DEFAULT_MODEL,
    timeout_seconds: int = DEFAULT_TIMEOUT_SECONDS,
    fallback_object: str = DEFAULT_FALLBACK_OBJECT,
    completion_fn: Optional[Callable[[dict, str, int], str]] = None,
) -> dict[str, str]:
    path = Path(cache_path)
    raw_path = Path(get_raw_cache_path(cache_path))
    if force_rebuild:
        if path.exists():
            print(f"debug : eliminiamo la cache oggetti pulita esistente {cache_path}")
            path.unlink()
        if raw_path.exists():
            print(f"debug : eliminiamo la cache oggetti grezza esistente {raw_path}")
            raw_path.unlink()

    unique_descriptions = _deduplicate_descriptions(action_descriptions)
    raw_cache_payload = _load_or_build_raw_object_cache(
        action_descriptions=unique_descriptions,
        raw_cache_path=str(raw_path),
        endpoint=endpoint,
        model=model,
        timeout_seconds=timeout_seconds,
        fallback_object=fallback_object,
        completion_fn=completion_fn,
    )
    clean_cache_payload = _parse_raw_object_cache(
        raw_cache_payload=raw_cache_payload,
        fallback_object=fallback_object,
    )
    save_object_cache(cache_path, clean_cache_payload)
    print(f"debug : cache oggetti pulita salvata in {cache_path}")
    return clean_cache_payload


def _deduplicate_descriptions(action_descriptions: list[str]) -> list[str]:
    unique_descriptions = []
    seen_descriptions = set()
    for raw_description in action_descriptions:
        normalized_description = str(raw_description).strip()
        if not normalized_description or normalized_description in seen_descriptions:
            continue
        seen_descriptions.add(normalized_description)
        unique_descriptions.append(normalized_description)
    return unique_descriptions


def _load_or_build_raw_object_cache(
    action_descriptions: list[str],
    raw_cache_path: str,
    *,
    endpoint: str,
    model: str,
    timeout_seconds: int,
    fallback_object: str,
    completion_fn: Optional[Callable[[dict, str, int], str]],
) -> dict[str, str]:
    raw_cache_payload = load_object_cache(raw_cache_path)
    missing_descriptions = [
        description
        for description in action_descriptions
        if description not in raw_cache_payload
    ]

    if raw_cache_payload and not missing_descriptions:
        print(f"debug : cache oggetti grezza trovata, usiamo quella -> {raw_cache_path}")
        return raw_cache_payload

    if raw_cache_payload:
        print(
            "debug : cache oggetti grezza trovata ma incompleta, estraiamo le task mancanti "
            f"({len(missing_descriptions)})"
        )
    else:
        print(
            "debug : cache oggetti grezza assente, estraiamo il testo raw con LM Studio "
            f"per {len(action_descriptions)} task"
        )

    descriptions_to_fetch = missing_descriptions or action_descriptions
    for description in descriptions_to_fetch:
        raw_cache_payload[description] = extract_raw_use_object(
            description,
            endpoint=endpoint,
            model=model,
            timeout_seconds=timeout_seconds,
            fallback_object=fallback_object,
            completion_fn=completion_fn,
        )

    save_object_cache(raw_cache_path, raw_cache_payload)
    print(f"debug : cache oggetti grezza salvata in {raw_cache_path}")
    return raw_cache_payload


def _parse_raw_object_cache(
    raw_cache_payload: dict[str, str],
    *,
    fallback_object: str,
) -> dict[str, str]:
    clean_cache_payload: dict[str, str] = {}
    for description, raw_answer in raw_cache_payload.items():
        clean_cache_payload[str(description)] = _parse_object(
            str(raw_answer),
            fallback_object,
        )
    return clean_cache_payload

#costruisce il prompt
def _build_payload(prompt: str, model: str) -> dict:
    return {
        "model": model,
        "messages": [
            {
                "role": "user",
                "content": prompt,
            },
        ],
        "temperature": 0.0,
        "max_tokens": 24,
        "stream": False,
    }


def _build_prompt(action_description: str) -> str:
    return "\n".join(
        [
            "Identify the object or tool most likely used to perform this action.",
            "Return exactly one object/tool name.",
            "If multiple objects are mentioned, choose the instrument that executes the action,",
            "not the object receiving it.",
            "No parentheses. No explanatory notes. No alternatives.",
            "No explanations. No JSON. No full sentence.",
            "If no tool or object is used, return an empty string.",
            "",
            f"Action: {action_description}",
            "",
            "Examples:",
            "- sweep kitchen floor -> broom",
            "- stir soup in a bowl -> spoon",
            "- cut bread with a knife -> knife",
            "- pour water into a glass -> pitcher",
        ]
    )


def _call_lm_studio(payload: dict, endpoint: str, timeout_seconds: int) -> str:
    data = json.dumps(payload).encode("utf-8")
    request = urllib.request.Request(
        endpoint,
        data=data,
        headers={"Content-Type": "application/json"},
        method="POST",
    )

    with urllib.request.urlopen(request, timeout=timeout_seconds) as response:
        response_text = response.read().decode("utf-8")

    response_payload = json.loads(response_text)
    return response_payload["choices"][0]["message"]["content"]


def _parse_object(answer: str, fallback_object: str) -> str:
    cleaned = answer.strip()
    if not cleaned:
        return fallback_object

    cleaned = cleaned.strip("\"'`")
    cleaned = re.sub(r"^(object|tool)\s*:\s*", "", cleaned, flags=re.IGNORECASE)
    cleaned = cleaned.splitlines()[0].strip()
    cleaned = re.sub(r"\([^)]*\)", "", cleaned).strip()
    cleaned = re.split(r"\s+or\s+|\s*/\s*|,", cleaned, maxsplit=1, flags=re.IGNORECASE)[0].strip()
    cleaned = cleaned.rstrip(".")

    if not cleaned:
        return fallback_object

    return cleaned


def _resolve_endpoint(endpoint: str) -> str:
    env_endpoint = os.getenv("LM_STUDIO_URL") or os.getenv("OPENAI_BASE_URL")
    return (env_endpoint or endpoint).strip()


def _resolve_model(model: str) -> str:
    env_model = os.getenv("LM_STUDIO_MODEL") or os.getenv("OPENAI_MODEL")
    return (env_model or model).strip()


def _models_endpoint_from_chat_endpoint(chat_endpoint: str) -> str:
    if chat_endpoint.endswith("/chat/completions"):
        return chat_endpoint[: -len("/chat/completions")] + "/models"
    return chat_endpoint.rstrip("/") + "/models"


def _discover_first_model(endpoint: str, timeout_seconds: int) -> str:
    models_endpoint = _models_endpoint_from_chat_endpoint(endpoint)
    request = urllib.request.Request(models_endpoint, method="GET")

    try:
        with urllib.request.urlopen(request, timeout=timeout_seconds) as response:
            response_text = response.read().decode("utf-8")
    except (OSError, urllib.error.URLError, TimeoutError, json.JSONDecodeError):
        return ""

    try:
        payload = json.loads(response_text)
    except json.JSONDecodeError:
        return ""

    models = payload.get("data", [])
    if not models:
        return ""

    return str(models[0].get("id", "")).strip()
