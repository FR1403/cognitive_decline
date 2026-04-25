from utils.util_functions import * 
import os 
import glob


output_dir = "test_omission_creati_clingo"
os.makedirs(output_dir, exist_ok=True)

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