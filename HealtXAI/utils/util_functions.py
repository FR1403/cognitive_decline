import psycopg2
from psycopg2.extras import RealDictCursor
import subprocess


db_params = {
    "host" : "localhost",
    "database" : "CASAS400",
    "user" : "postgres",
    "password" : "sandro",
    "port" : "5432"
}

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
    

def write_file (file_name, string, type_acess) :

    with open (file_name, type_acess) as file :
        file.writelines(string + "\n")
    


def run_clingo_test (file_path) :
    print(f"--- Avvio Analisi Logica su: {file_path} ---")

    try :
        # Esegue il comando clingo nel terminale
        # Il parametro "0" dice a clingo di trovare tutti i modelli possibili
        result = subprocess.run (
            ['clingo', file_path, '0'],
            capture_output = True,
            text = True
        )

        lines = result.stdout.split('\n')
        for i, line in enumerate(lines) :
            if line.startswith("Answer:") :
                anomalies = lines[i+1].split()
                if anomalies != [] :
                    print("Anomalie riscontrate:")
                    for a in anomalies:
                        print(f"  [!] {a}")

        if "SATISFIABLE" in result.stdout:
            print("\nEsito: Il modello è coerente (SATISFIABLE).")
        else :
            print("\nEsito: Errore nel modello o nessuna soluzione trovata.")

    except Exception as e :
        print(f"Errore nell'esecuzione del file : {e}")