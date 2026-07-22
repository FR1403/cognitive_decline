from __future__ import annotations

import json
import os
import re
import urllib.error
import urllib.request
from collections import defaultdict
from pathlib import Path
from typing import Any

from utils.util_functions import take_data


FORCE_REBUILD_CATALOG_SNAPSHOT = False
FORCE_REBUILD_DEPENDENCY_GRAPH = False

DEFAULT_LLM_URL = os.getenv(
    "LLM_API_URL",
    "http://127.0.0.1:1234/v1/chat/completions",
)
DEFAULT_MODEL = os.getenv("LLM_MODEL", "mistral-7b-instruct-v0.3")
DEFAULT_LLM_API_KEY = os.getenv("LLM_API_KEY", "")
DEFAULT_LLM_HTTP_REFERER = os.getenv("LLM_HTTP_REFERER", "")
DEFAULT_LLM_APP_TITLE = os.getenv("LLM_APP_TITLE", "")
DEFAULT_TIMEOUT_SECONDS = 300
DEFAULT_MAX_TOKENS = 1200
DEFAULT_TEMPERATURE = 0.0

script_dir = os.path.dirname(os.path.abspath(__file__))
sequence_functions_dir = script_dir
sequence_json_dir = os.path.join(sequence_functions_dir, "anticipation_reversal_json")
catalog_snapshot_path = os.path.join(
    sequence_json_dir,
    "activity_dependency_catalog_snapshot.json",
)
dependency_graph_path = os.path.join(
    sequence_json_dir,
    "activity_dependency_graph.json",
)

#trasforma testo in label
def clean_logic_label(label: str) -> str:
    clean_label = label.replace(" ", "_")
    return re.sub(r"[^\w]+", "", clean_label.lower())


def save_json(json_path: str, payload: object) -> None:
    path = Path(json_path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(
        json.dumps(payload, indent=2, ensure_ascii=False),
        encoding="utf-8",
    )


def load_json(json_path: str) -> object:
    return json.loads(Path(json_path).read_text(encoding="utf-8"))

#estrazione catalogo activity/task dal db
def build_activity_tasks_catalog_from_db() -> list[dict[str, object]]:
    print("debug : caricamento catalogo atteso activity/task dal db")
    return take_data(
        """SELECT
                aty.activity_id,
                aty.description AS activity_description,
                tt.task_id,
                tt.description AS task_description,
                tt.action_type
            FROM activity_types AS aty
            JOIN task_types AS tt
                ON tt.activity_id = aty.activity_id
            ORDER BY aty.activity_id, tt.task_id"""
    ) or []

#prima legge lo snapshot, altrimenti carica da DB
def load_or_build_catalog_snapshot(
    snapshot_path: str,
    force_rebuild: bool = False,
) -> list[dict[str, object]]:
    path = Path(snapshot_path)

    if force_rebuild and path.exists():
        print(f"debug : eliminiamo lo snapshot catalogo esistente {snapshot_path}")
        path.unlink()

    if path.exists():
        print(f"debug : snapshot catalogo trovato, lo riusiamo -> {snapshot_path}")
        payload = load_json(snapshot_path)
        if not isinstance(payload, list):
            raise ValueError("Lo snapshot del catalogo dipendenze deve contenere una lista.")
        return payload

    catalog = build_activity_tasks_catalog_from_db()
    save_json(snapshot_path, catalog)
    print(f"debug : snapshot catalogo salvato in {snapshot_path}")
    return catalog

#trasforma il catalogo in una struttura utilizzabile
def build_activity_catalog(
    activity_tasks_catalog: list[dict[str, object]],
) -> list[dict[str, object]]:
    grouped_catalog: dict[int, dict[str, object]] = {}

    for row in activity_tasks_catalog:
        activity_id = int(row["activity_id"])
        if activity_id not in grouped_catalog:
            activity_description = str(row["activity_description"])
            grouped_catalog[activity_id] = {
                "activity_id": activity_id,
                "activity_description": activity_description,
                "activity_clean": clean_logic_label(activity_description),
                "tasks": [],
            }

        grouped_catalog[activity_id]["tasks"].append(
            {
                "task_id": int(row["task_id"]),
                "task_description": str(row["task_description"]),
                "task_fact": clean_logic_label(str(row["task_description"])),
                "action_type": int(row["action_type"]),
            }
        )

    ordered_activities: list[dict[str, object]] = []
    for activity_id in sorted(grouped_catalog):
        activity_entry = grouped_catalog[activity_id]
        ordered_tasks = sorted(
            activity_entry["tasks"],
            key=lambda task_info: int(task_info["task_id"]),
        )
        for expected_pos, task_info in enumerate(ordered_tasks, start=1):
            task_info["expected_pos"] = expected_pos
        activity_entry["tasks"] = ordered_tasks
        ordered_activities.append(activity_entry)

    return ordered_activities

#costruisce il prompt per le dipendenze
def build_dependency_prompt(activity_entry: dict[str, object]) -> str:
    tasks_lines: list[str] = []
    for task_info in activity_entry["tasks"]:
        tasks_lines.append(
            (
                f'- task_id={int(task_info["task_id"])}, '
                f'task_fact="{str(task_info["task_fact"])}", '
                f'action_type={int(task_info["action_type"])}, '
                f'description="{str(task_info["task_description"])}"'
            )
        )

    tasks_block = "\n".join(tasks_lines)

    return f"""Sei un assistente che costruisce un grafo di prerequisiti operativi tra task attese.

Activity:
- activity_id={int(activity_entry["activity_id"])}
- activity_description="{str(activity_entry["activity_description"])}"

Task attese dell'activity:
{tasks_block}

Obiettivo:
individua solo i vincoli di precedenza NECESSARI per una corretta esecuzione dell'activity.

Definizione di dipendenza:
- una dipendenza BEFORE -> AFTER esiste solo se BEFORE deve avvenire prima di AFTER;
- non basta che BEFORE venga spesso prima di AFTER;
- non basta che BEFORE renda AFTER piu sensata o piu ordinata;
- la dipendenza esiste solo se eseguire AFTER prima di BEFORE rende BEFORE impossibile, non piu corretto, non piu utile, pericoloso, dannoso, sporco, irreversibile, oppure compromette il risultato finale dell'activity.

Considera come dipendenze necessarie questi casi:

1. Prerequisito fisico o di accesso
- BEFORE serve per poter accedere a un oggetto, contenitore, spazio o risorsa necessaria ad AFTER.
- esempio: aprire una confezione prima di prendere il contenuto.

2. Prerequisito operativo forte
- senza BEFORE, AFTER non puo essere eseguita correttamente.
- esempio: riempire un contenitore prima di usarlo per versare o scaldare qualcosa.

3. Anticipazione che rende impossibile o scorretta un'azione precedente
- se AFTER viene fatta troppo presto, BEFORE non puo piu essere eseguita correttamente in seguito.
- questo caso e molto importante.
- esempio: spalmare il burro sul pane prima di tostarlo puo rendere non piu corretta o dannosa la tostatura successiva.

4. Disastro operativo, danno o risultato compromesso
- se fare AFTER prima di BEFORE puo causare un danno, sporcare, creare un uso scorretto di un oggetto, compromettere il risultato finale o rendere l'attivita operativamente sbagliata, allora la dipendenza e necessaria.
- esempio: avviare la lavatrice prima di aggiungere il detersivo o prima di selezionare il programma compromette il lavaggio corretto.

5. Chiusura, avvio o conclusione prematura
- se AFTER chiude, sigilla, avvia, conclude o blocca una fase di preparazione e quindi impedisce o compromette le task precedenti mancanti, allora c'e dipendenza.
- esempio: chiudere, avviare o concludere un processo prima di aver completato le preparazioni necessarie.

Regola pratica:
per ogni possibile coppia BEFORE -> AFTER chiediti:
- se AFTER venisse eseguita prima, BEFORE potrebbe ancora essere svolta correttamente dopo?
- se la risposta e NO, probabilmente la dipendenza e necessaria.
- se la risposta e SI, probabilmente NON e una dipendenza necessaria.

Esempi validi di dipendenza:
- aprire la confezione del pane -> prendere due fette di pane
- tostare il pane -> mettere il burro su una fetta
- aggiungere il detersivo -> avviare la lavatrice
- selezionare il programma -> avviare la lavatrice
- prendere la ciotola -> versare i cereali nella ciotola

Esempi NON validi:
- task che sono solo spesso consecutive
- task in ordine narrativamente naturale ma non necessario
- task dove AFTER fatta prima non impedisce davvero BEFORE
- task dove BEFORE migliora solo la qualita ideale del risultato ma non e un prerequisito operativo forte

Vincoli obbligatori:
- includi solo dipendenze forti, chiare e giustificabili;
- evita dipendenze duplicate;
- non creare task nuove;
- non usare task_id non presenti nella lista;
- per ogni dipendenza devi sempre restituire sia before_task_id sia after_task_id;
- before_task_id e after_task_id devono essere presi esclusivamente dalla lista delle task attese sopra;
- non omettere mai i task_id e non sostituirli con sole descrizioni o task_fact;
- non inserire dipendenze tra una task e se stessa;
- se non ci sono dipendenze necessarie, restituisci una lista vuota.

Restituisci SOLO un JSON valido nel seguente formato:
{{
  "dependencies": [
    {{
      "before_task_id": 1,
      "after_task_id": 2,
      "reason": "breve motivazione"
    }}
  ]
}}

Se non sei sicuro dei task_id corretti, restituisci:
{{
  "dependencies": []
}}
"""

#invia il prompt a lm studio e riceve il grafo delle dipendenze
def ask_lm_studio_for_dependencies(
    activity_entry: dict[str, object],
    llm_url: str = DEFAULT_LLM_URL,
    model: str = DEFAULT_MODEL,
    api_key: str = DEFAULT_LLM_API_KEY,
    http_referer: str = DEFAULT_LLM_HTTP_REFERER,
    app_title: str = DEFAULT_LLM_APP_TITLE,
    timeout_seconds: int = DEFAULT_TIMEOUT_SECONDS,
    max_tokens: int = DEFAULT_MAX_TOKENS,
    temperature: float = DEFAULT_TEMPERATURE,
) -> list[dict[str, object]]:
    prompt = build_dependency_prompt(activity_entry)
    request_payload = {
        "model": model,
        "temperature": temperature,
        "max_tokens": max_tokens,
        "messages": [
            {"role": "user", "content": prompt},
        ],
    }

    request_headers = {"Content-Type": "application/json"}
    if api_key:
        request_headers["Authorization"] = f"Bearer {api_key}"
    if http_referer:
        request_headers["HTTP-Referer"] = http_referer
    if app_title:
        request_headers["X-Title"] = app_title

    request = urllib.request.Request(
        llm_url,
        data=json.dumps(request_payload).encode("utf-8"),
        headers=request_headers,
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

    parsed_response = json.loads(raw_response)
    llm_content = extract_message_content(parsed_response)
    llm_json = parse_json_from_text(llm_content)
    dependencies = llm_json.get("dependencies", [])

    if not isinstance(dependencies, list):
        raise ValueError(
            "La risposta dell'LLM deve contenere il campo 'dependencies' come lista."
        )

    return dependencies

#estrae il contenuto dalla risposta del llm
def extract_message_content(parsed_response: dict[str, Any]) -> str:
    try:
        return str(parsed_response["choices"][0]["message"]["content"]).strip()
    except (KeyError, IndexError, TypeError) as error:
        raise ValueError(
            "Formato risposta LLM non riconosciuto: impossibile leggere il contenuto."
        ) from error

#recupera il json dalla risposta del llm
def parse_json_from_text(text: str) -> dict[str, object]:
    try:
        parsed = json.loads(text)
    except json.JSONDecodeError:
        decoder = json.JSONDecoder()
        for match in re.finditer(r"\{", text):
            try:
                parsed, _ = decoder.raw_decode(text[match.start():])
                break
            except json.JSONDecodeError:
                continue
        else:
            cleaned_text = text.strip()
            if cleaned_text.startswith("```") and cleaned_text.endswith("```"):
                fenced_lines = cleaned_text.splitlines()
                if len(fenced_lines) >= 3:
                    fenced_body = "\n".join(fenced_lines[1:-1]).strip()
                    try:
                        parsed = json.loads(fenced_body)
                    except json.JSONDecodeError as error:
                        raise ValueError(
                            "La risposta dell'LLM non contiene un JSON valido. "
                            f"Anteprima: {cleaned_text[:300]}"
                        ) from error
                else:
                    raise ValueError(
                        "La risposta dell'LLM non contiene un JSON valido. "
                        f"Anteprima: {cleaned_text[:300]}"
                    )
            else:
                parsed = parse_dependencies_from_plain_text(cleaned_text)

    if not isinstance(parsed, dict):
        raise ValueError("La risposta dell'LLM deve essere un oggetto JSON.")

    return parsed


def parse_dependencies_from_plain_text(text: str) -> dict[str, object]:
    dependency_pairs: list[tuple[int, int]] = []
    current_before: int | None = None

    for raw_line in text.splitlines():
        line = raw_line.strip()
        if not line:
            continue

        before_match = re.search(r"before_task_id\s*:\s*(\d+)", line, re.IGNORECASE)
        if before_match:
            current_before = int(before_match.group(1))
            continue

        after_match = re.search(r"after_task_id\s*:\s*(\d+)", line, re.IGNORECASE)
        if after_match and current_before is not None:
            dependency_pairs.append((current_before, int(after_match.group(1))))
            current_before = None

    if not dependency_pairs:
        raise ValueError(
            "La risposta dell'LLM non contiene un JSON valido. "
            f"Anteprima: {text[:300]}"
        )

    dependencies = [
        {
            "before_task_id": before_task_id,
            "after_task_id": after_task_id,
            "reason": "Estratto da risposta testuale non JSON dell'LLM.",
        }
        for before_task_id, after_task_id in dependency_pairs
    ]
    return {"dependencies": dependencies}

#pulizia e normalizzazione dipendenze
def normalize_dependencies(
    activity_entry: dict[str, object],
    raw_dependencies: list[dict[str, object]],
) -> list[dict[str, object]]:
    activity_id = int(activity_entry["activity_id"])
    activity_description = str(activity_entry["activity_description"])
    task_by_id = {
        int(task_info["task_id"]): task_info
        for task_info in activity_entry["tasks"]
    }
    dependencies_by_pair: dict[tuple[int, int], dict[str, object]] = {}

    for dependency_index, dependency_entry in enumerate(raw_dependencies, start=1):
        if not isinstance(dependency_entry, dict):
            continue

        raw_before_task_id = dependency_entry.get("before_task_id")
        raw_after_task_id = dependency_entry.get("after_task_id")

        if raw_before_task_id is None or raw_after_task_id is None:
            print(
                "warning : LLM ha restituito una dipendenza senza task_id "
                f"activity_id={activity_id} activity_description=\"{activity_description}\" "
                f"dependency_index={dependency_index} payload={dependency_entry}"
            )
            continue

        try:
            before_task_id = int(raw_before_task_id)
            after_task_id = int(raw_after_task_id)
        except (TypeError, ValueError):
            print(
                "warning : LLM ha restituito task_id non validi "
                f"activity_id={activity_id} activity_description=\"{activity_description}\" "
                f"dependency_index={dependency_index} payload={dependency_entry}"
            )
            continue

        if before_task_id == after_task_id:
            continue
        if before_task_id not in task_by_id or after_task_id not in task_by_id:
            print(
                "warning : LLM ha restituito task_id fuori catalogo "
                f"activity_id={activity_id} activity_description=\"{activity_description}\" "
                f"dependency_index={dependency_index} payload={dependency_entry}"
            )
            continue

        pair_key = (before_task_id, after_task_id)
        if pair_key in dependencies_by_pair:
            continue

        before_task = task_by_id[before_task_id]
        after_task = task_by_id[after_task_id]
        dependencies_by_pair[pair_key] = {
            "before_task_id": before_task_id,
            "before_task_description": str(before_task["task_description"]),
            "before_task_fact": str(before_task["task_fact"]),
            "after_task_id": after_task_id,
            "after_task_description": str(after_task["task_description"]),
            "after_task_fact": str(after_task["task_fact"]),
            "reason": str(dependency_entry.get("reason", "")).strip(),
        }

    return sorted(
        dependencies_by_pair.values(),
        key=lambda entry: (
            int(entry["before_task_id"]),
            int(entry["after_task_id"]),
        ),
    )

#caricamento dati da json al posto del llm
def load_dependency_graph_from_json(
    json_path: str,
) -> dict[int, list[tuple[str, str]]]:
    payload = load_json(json_path)
    if not isinstance(payload, dict):
        raise ValueError("Il JSON del grafo dipendenze deve essere un oggetto.")

    raw_activities = payload.get("activities", [])
    if not isinstance(raw_activities, list):
        raise ValueError("Il JSON del grafo dipendenze deve contenere 'activities'.")

    dependency_map: dict[int, list[tuple[str, str]]] = {}
    for activity_entry in raw_activities:
        if not isinstance(activity_entry, dict):
            continue

        try:
            activity_id = int(activity_entry["activity_id"])
        except (KeyError, TypeError, ValueError):
            continue

        dependency_pairs: list[tuple[str, str]] = []
        raw_dependencies = activity_entry.get("dependencies", [])
        if isinstance(raw_dependencies, list):
            for dependency_entry in raw_dependencies:
                if not isinstance(dependency_entry, dict):
                    continue
                before_task_fact = str(dependency_entry.get("before_task_fact", "")).strip()
                after_task_fact = str(dependency_entry.get("after_task_fact", "")).strip()
                if not before_task_fact or not after_task_fact:
                    continue
                dependency_pairs.append((after_task_fact, before_task_fact))

        dependency_map[activity_id] = dependency_pairs

    return dependency_map

#pipeline del builder del grafo
def run_activity_dependency_graph_pipeline(
    *,
    snapshot_path: str,
    export_json_path: str,
    force_rebuild_snapshot: bool = False,
    force_rebuild_graph: bool = False,
) -> dict[int, list[tuple[str, str]]]:
    print("debug : entriamo nel builder del grafo dipendenze activity/task")

    #cancella il grafo in caso di rebuild forzato
    if force_rebuild_graph and Path(export_json_path).exists():
        print(f"debug : eliminiamo il grafo dipendenze esistente {export_json_path}")
        Path(export_json_path).unlink()
    
    #riutilizza il grafo se gia presente
    if Path(export_json_path).exists():
        print(f"debug : grafo dipendenze gia presente, lo riusiamo -> {export_json_path}")
        return load_dependency_graph_from_json(export_json_path)

    #carica o costruisce il catalogo dal DB
    activity_tasks_catalog = load_or_build_catalog_snapshot(
        snapshot_path=snapshot_path,
        force_rebuild=force_rebuild_snapshot,
    )
    
    #riorganizza il catalogo
    grouped_catalog = build_activity_catalog(activity_tasks_catalog)

    #strutture utili
    exported_activities: list[dict[str, object]] = []
    dependency_counter_by_activity: dict[int, int] = defaultdict(int)

    #per ogni activity chiede a LM Studio le dipendenze e le salva nel json
    for activity_entry in grouped_catalog:
        activity_id = int(activity_entry["activity_id"])
        print(
            "debug : interrogazione LM Studio per dipendenze "
            f"activity_id={activity_id}"
        )
        raw_dependencies = ask_lm_studio_for_dependencies(activity_entry)
        normalized_dependencies = normalize_dependencies(activity_entry, raw_dependencies)
        dependency_counter_by_activity[activity_id] = len(normalized_dependencies)

        exported_activities.append(
            {
                "activity_id": activity_id,
                "activity_description": str(activity_entry["activity_description"]),
                "activity_clean": str(activity_entry["activity_clean"]),
                "tasks": activity_entry["tasks"],
                "dependencies": normalized_dependencies,
            }
        )

    #esporta il json completo con metadati
    export_payload = {
        "source": "lm_studio",
        "llm_url": DEFAULT_LLM_URL,
        "model": DEFAULT_MODEL,
        "activities": exported_activities,
    }

    save_json(export_json_path, export_payload)
    print(f"debug : grafo dipendenze salvato in {export_json_path}")

    #stampa un riepilogo delle dipendenze per ogni activity
    for activity_id in sorted(dependency_counter_by_activity):
        print(
            "debug : riepilogo dipendenze "
            f"activity_id={activity_id}, count={dependency_counter_by_activity[activity_id]}"
        )

    #restituisce il grafo delle dipendenze
    return load_dependency_graph_from_json(export_json_path)

#blocco per generare direttamente il grafo dipendenze
if __name__ == "__main__":
    run_activity_dependency_graph_pipeline(
        snapshot_path=catalog_snapshot_path,
        export_json_path=dependency_graph_path,
        force_rebuild_snapshot=FORCE_REBUILD_CATALOG_SNAPSHOT,
        force_rebuild_graph=FORCE_REBUILD_DEPENDENCY_GRAPH,
    )
