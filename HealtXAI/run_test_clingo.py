from utils.util_functions import * 
import os 
import glob
import sys 
import subprocess

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

        cont_anomalies = 0
        lines = result.stdout.split('\n')
        for i, line in enumerate(lines) :
            if line.startswith("Answer:") :
                anomalies = lines[i+1].split()
                

                if anomalies != [] :
                    print("Anomalie riscontrate:")
                    for a in anomalies:
                        cont_anomalies += 1
                        print(f"  [!] {a}")
                else:
                    print("Nessuna anomalia trovata")

        if "SATISFIABLE" in result.stdout:
            print("\nEsito: Il modello è coerente (SATISFIABLE).")
        else :
            print("\nEsito: Errore nel modello o nessuna soluzione trovata.")
        
        return cont_anomalies
    except Exception as e :
        print(f"Errore nell'esecuzione del file : {e}")

import re

# output_dir = "test_omission_creati_clingo"
if len(sys.argv) < 2:
    print("Errore: Devi specificare il nome della cartella da analizzare!")
    print("Uso da terminale: python3 run_test_clingo.py <nome_cartella>")
    sys.exit(1)
# os.makedirs(output_dir, exist_ok=True)
output_dir = sys.argv[1]

# Determiniamo la colonna del database in base al nome della cartella specificata
if "omission" in output_dir.lower():
    colonna_db = "omission_number"
elif "perseveration" in output_dir.lower():
    colonna_db = "perseveration_number"
else:
    # default fallback se il nome cartella non contiene né omission né perseveration
    colonna_db = "omission_number"

# --- AVVIO TEST CLINGO ---

cartella_corrente = os.path.dirname(os.path.abspath(__file__))
# 1. Diciamo a Python di cercare DENTRO la cartella dei risultati
cartella_risultati = os.path.join(cartella_corrente, output_dir) 

# salviamo il percorso di ogni file con estensione .lp presente nella cartella creata 
percorso_glob = os.path.join(cartella_risultati, "*.lp")
file_lp = glob.glob(percorso_glob)

# Piccolo controllo di sicurezza per capire se sta leggendo qualcosa
if not file_lp:
    print(f"\n[ATTENZIONE] Nessun file .lp trovato nella cartella '{output_dir}'.")
else:
    print(f"\nTrovati {len(file_lp)} file da analizzare.")

# avvio analisi dei test 
for file_path in file_lp :
    nome_file = os.path.basename(file_path)
    print(f"\nAnalizzando il file: {nome_file}")

    # 2. Passiamo l'intero 'file_path' a Clingo, non solo il nome!
    anomalie = run_clingo_test(file_path)
    
    # 3. Estraiamo patient_id e activity_id dal nome del file
    pat = re.search(r'patient_(\d+)', file_path)
    act = re.search(r'activity_(\d+)', file_path)
    
    if pat and act:
        patient_id = pat.group(1)
        activity_id = act.group(1)
        
        # 4. Costruiamo e lanciamo la query di inserimento (upsert per aggiornare se esiste già)
        query_insert = f'''
            INSERT INTO tracked_anomalies (patient_id, activity_id, {colonna_db})
            VALUES ({patient_id}, {activity_id}, {anomalie})
            ON CONFLICT (patient_id, activity_id) 
            DO UPDATE SET {colonna_db} = EXCLUDED.{colonna_db};
        '''
        
        try:
            insert_data(query_insert)
            print(f"✅ Salvato nel DB: Paziente {patient_id}, Attività {activity_id} -> {anomalie} ({colonna_db})")
        except Exception as e:
            print(f"❌ Errore nel salvataggio DB per Paziente {patient_id}, Attività {activity_id}: {e}")
    else:
        print(f"⚠️ Impossibile estrarre patient_id o activity_id dal nome file: {nome_file}")