"""Extract the object/tool used to perform an action via an LLM."""

from __future__ import annotations

import json
import os
import re
import urllib.error
import urllib.request
from typing import Callable, Optional


DEFAULT_LM_STUDIO_URL = "http://127.0.0.1:1234/v1/chat/completions"
DEFAULT_MODEL = "mistral-7b-instruct-v0.3"
DEFAULT_TIMEOUT_SECONDS = 60
DEFAULT_FALLBACK_OBJECT = ""


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
    normalized_action = action_description.strip()
    if not normalized_action:
        return fallback_object

    resolved_endpoint = _resolve_endpoint(endpoint)
    resolved_model = _resolve_model(model)
    prompt = _build_prompt(normalized_action)
    payload = _build_payload(prompt, resolved_model)
    completion_caller = completion_fn or _call_lm_studio

    try:
        raw_answer = completion_caller(payload, resolved_endpoint, timeout_seconds)
        return _parse_object(raw_answer, fallback_object)
    except urllib.error.HTTPError:
        fallback_model = _discover_first_model(resolved_endpoint, timeout_seconds)
        if fallback_model and fallback_model != resolved_model:
            retry_payload = _build_payload(prompt, fallback_model)
            try:
                raw_answer = completion_caller(
                    retry_payload,
                    resolved_endpoint,
                    timeout_seconds,
                )
                return _parse_object(raw_answer, fallback_object)
            except (OSError, urllib.error.URLError, TimeoutError, ValueError, KeyError):
                return fallback_object
        return fallback_object
    except (OSError, urllib.error.URLError, TimeoutError, ValueError, KeyError):
        return fallback_object


def _build_payload(prompt: str, model: str) -> dict:
    return {
        "model": model,
        "messages": [
            {
                "role": "user",
                "content": (
                    "You identify the object used to perform an action. "
                    "Return only the object name. "
                    "If multiple objects are mentioned, choose the instrument "
                    "that executes the action, not the object receiving it. "
                    "No explanations. No JSON. No full sentence.\n\n"
                    f"{prompt}"
                ),
            },
        ],
        "temperature": 0.0,
        "max_tokens": 24,
        "stream": False,
    }


def _build_prompt(action_description: str) -> str:
    return "\n".join(
        [
            "Identify the object most likely used to perform this action.",
            "Return only the object/tool name.",
            "If the phrase implies both a tool and a target/container/object,",
            "return the tool that performs the action.",
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
