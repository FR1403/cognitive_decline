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


# output_dir = "test_omission_creati_clingo"
if len(sys.argv) < 2:
    print("Errore: Devi specificare il nome della cartella da analizzare!")
    print("Uso da terminale: python3 run_test_clingo.py <nome_cartella>")
    sys.exit(1)
# os.makedirs(output_dir, exist_ok=True)
output_dir = sys.argv[1]

# --- AVVIO TEST CLINGO ---

cartella_corrente = os.path.dirname(os.path.abspath(__file__))
# 1. Diciamo a Python di cercare DENTRO la cartella dei risultati
cartella_risultati = os.path.join(cartella_corrente, output_dir) 

# salviamo il percorso di ogni file con estensione .lp presente nella cartella creata 
percorso_glob = os.path.join(cartella_risultati, "*.lp")
file_lp = glob.glob(percorso_glob)

# Piccolo controllo di sicurezza per capire se sta leggendo qualcosa
# if not file_lp:
#     print(f"\n[ATTENZIONE] Nessun file .lp trovato nella cartella '{output_dir}'.")
# else:
#     print(f"\nTrovati {len(file_lp)} file da analizzare.")

# # avvio analisi dei test 
for file_path in file_lp :
    nome_file = os.path.basename(file_path)
#     print(f"\nAnalizzando il file: {nome_file}")

    # 2. Passiamo l'intero 'file_path' a Clingo, non solo il nome!
    run_clingo_test(file_path)