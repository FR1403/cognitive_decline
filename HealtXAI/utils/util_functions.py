import psycopg2
from psycopg2.extras import RealDictCursor
import subprocess
# pyrefly: ignore [missing-import]
from llama_cpp import Llama
import json
import os

def _is_wsl() -> bool:
    """Rileva se siamo in esecuzione dentro WSL (1 o 2)."""
    # Metodo 1: variabile d'ambiente (sempre presente in WSL2 recente)
    if "WSL_DISTRO_NAME" in os.environ:
        return True
    # Metodo 2: controllo /proc/version (funziona anche senza la variabile)
    try:
        with open("/proc/version", "r") as f:
            content = f.read().lower()
            if "microsoft" in content or "wsl" in content:
                return True
    except Exception:
        pass
    return False


def get_lm_studio_url(port: int = 1234, path: str = "/v1/chat/completions") -> str:
    """Restituisce l'URL corretto per LM Studio, adattandosi automaticamente se eseguito in WSL."""
    ip = "127.0.0.1"
    if _is_wsl():
        try:
            # In WSL2 l'host Windows si trova all'IP del nameserver in resolv.conf
            with open("/etc/resolv.conf", "r") as f:
                for line in f:
                    if line.startswith("nameserver"):
                        ip = line.split()[1].strip()
                        break
            print(f"debug : WSL rilevato, uso IP Windows: {ip}")
        except Exception:
            ip = "127.0.0.1"
    return f"http://{ip}:{port}{path}"


db_params = {
    "host": "localhost",
    "database": "CASAS400",
    "user": "postgres",
<<<<<<< Updated upstream
    "password": "sandro",
=======
    "password": "la_tua_password",
>>>>>>> Stashed changes
    "port": "5432"
}

gap_cache = {}

MODEL_PATH = "models/Mistral-7B-Instruct-v0.3-Q5_K_M.gguf"
# BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# MODEL_PATH = os.path.join(BASE_DIR, "models", "Mistral-7B-Instruct-v0.3-Q5_K_M.gguf")

try:
    #n_gpu_layers=-1 scarica il modello sulla GPU
    llm = Llama(model_path=MODEL_PATH, n_ctx=2048, n_gpu_layers=-1, n_threads=4, verbose=False)
    print("Mistral-7B caricato con successo")
except Exception as e:
    print(f"Impossibile caricare l'LLM sulla GPU {e}")
    llm = None


    # Chiede a Mistral-7B il gap temporale ottimale basandosi sulla baseline dei sani.
    # Sfrutta una cache interna per rispondere istantaneamente se il task è già stato visto.
    
def get_dynamic_gap_from_llm(task_description, avg_time_healthy, max_time_healthy):
    global gap_cache

    if task_description in gap_cache:
        return gap_cache[task_description]

    prompt = f"""[INST] Sei un assistente medico esperto di domotica assistenziale e declino cognitivo.
Dobbiamo calcolare una soglia di tempo (Gap) in millisecondi per l'azione: "{task_description}".
I pazienti sani eseguono questa azione con una media di {avg_time_healthy} ms e un picco massimo di {max_time_healthy} ms di distanza tra ripetizioni normali.

Se due letture dello stesso sensore avvengono a una distanza SUPERIORE al Gap che deciderai, allora è una PERSEVERAZIONE (patologica). Se avvengono entro il Gap, fa parte dello stesso episodio normale.

Rispondi ESCLUSIVAMENTE con un oggetto JSON contenente la chiave "gap_ms" e il valore numerico stimato. Non aggiungere testo prima o dopo. [/INST]
{{"gap_ms":"""

    try:
        response = llm(prompt, max_tokens=30, temperature=0.1)
        text_response = response['choices'][0]['text'].strip()

        full_json = '{"gap_ms":' + text_response
        if '}' not in full_json:
            full_json += '}'

        data = json.loads(full_json)
        calculated_gap = int(data["gap_ms"])

        gap_cache[task_description] = calculated_gap
        return calculated_gap

    except Exception as e:
        print(f"⚠️ Errore parsing LLM per '{task_description}' ({e}). Uso valore di default.")
        return max_time_healthy




livello_A = '''
% ========================
% Level A - Activity model
% ========================
'''

livello_B = '''
% ===============================
% Level B - Execution observation
% ===============================
'''

livello_C = '''
% ===========================
% Level C - Anomaly detection
% ===========================
'''

def print_data(dati) :
    if dati != None :   
        for i in range(len(dati)) :
            print(dati[i])
    else :
        print("Dati non stampabili")

def take_data(query) :
    try: 
        with psycopg2.connect(**db_params) as conn:
            with conn.cursor(cursor_factory = RealDictCursor) as cur :
                cur.execute(query)
                risultati = cur.fetchall()

                dati_ordinati = []

                for v in range(len(risultati)) :
                    dati_ordinati.append(dict(risultati[v]))

                return dati_ordinati
            
    except Exception as e :
        print (f"Errore all'accesso al database: {e}")
        return None
    
def insert_data(query):
    """
    Inserisce dati nel database.
    :param query: Stringa SQL con i segnaposti (es. "INSERT INTO tabella (col1) VALUES (%s)")
    :param data_tuple: Tupla contenente i valori da inserire (es. (valore1,))
    """
    try: 
        with psycopg2.connect(**db_params) as conn:
            with conn.cursor() as cur:
                # Eseguiamo il comando passando i dati separatamente dalla query
                cur.execute(query)
                
                # Opzionale: recuperare l'ID appena inserito se la query ha "RETURNING id"
                # id_inserito = cur.fetchone()[0]
                
                # Nota: Il commit è automatico all'uscita dal blocco 'with conn'
                print("Inserimento completato con successo.")
                return True
            
    except Exception as e:
        print(f"Errore durante l'inserimento nel database: {e}")
        return False
    

def write_file (file_name, string, type_acess) :

    with open (file_name, type_acess) as file :
        file.writelines(string + "\n")
    


def run_clingo_test (file_path) :
    # print(f"--- Avvio Analisi Logica su: {file_path} ---")

    try :
        # Esegue il comando clingo nel terminale
        # Il parametro "0" dice a clingo di trovare tutti i modelli possibili
        result = subprocess.run (
            ['clingo', file_path, '0'],
            capture_output = True,
            text = True
        )

        cont_anomalies = 0
        lines = result.stdout.split('\n')
        for i, line in enumerate(lines) :
            if line.startswith("Answer:") :
                anomalies = lines[i+1].split()
                

                if anomalies != [] :
                    # print("Anomalie riscontrate:")
                    for a in anomalies:
                        cont_anomalies += 1
                        # print(f"  [!] {a}")

        # if "SATISFIABLE" in result.stdout:
        #     print("\nEsito: Il modello è coerente (SATISFIABLE).")
        # else :
        #     print("\nEsito: Errore nel modello o nessuna soluzione trovata.")
        
        return cont_anomalies
    except Exception as e :
        print(f"Errore nell'esecuzione del file : {e}")
