import pandas as pd 
import psycopg2
# pyrefly: ignore [missing-import]
import numpy as np
# pyrefly: ignore [missing-import]
from scipy.stats import pearsonr

# Parametri per la connessione al database PostgreSQL locale
db_params = {
    "host": "localhost",
    "database": "CASAS400",
    "user": "postgres",
    "password": "sandro",
    "port": "5432"
}

try:
    connessione = psycopg2.connect(**db_params)
    print("Connessione al database riuscita!")

    # Sommiamo omissioni e perseverazioni all'interno della AVG per ottenere la media delle anomalie totali per attività
    query = """SELECT 
                    p.patient_id, 
                    p.diagnosis, 
                    COALESCE(AVG(t.omission_number + t.perseveration_number), 0) AS avg_anomalie_totali,
                    COUNT(t.activity_id) AS num_activities
                FROM patients AS p 
                LEFT JOIN tracked_anomalies AS t ON p.patient_id = t.patient_id
                WHERE p.patient_id IN (38, 102, 104, 135, 136, 137, 154, 183, 188, 212, 214, 218, 232, 242, 244, 276, 384, 385, 388, 6, 18, 40, 54, 71, 72, 76, 77, 82, 83, 89, 99, 101, 107, 111, 114, 117, 122, 127, 128, 130, 138, 144, 167, 173, 181, 186, 191, 193, 194, 208, 215, 255, 257, 259, 262, 274, 280, 289, 295, 298, 312, 315, 316, 318, 324, 327, 329, 334, 346, 356, 370, 375, 389, 7, 11, 13, 17, 20, 22, 24, 43, 53, 56, 81, 84, 85, 87, 88, 91, 98, 103, 105, 108, 113, 115, 120, 123, 124, 132, 141, 143, 146, 147, 149, 156, 158, 163, 164, 171, 178, 180, 184, 187, 189, 201, 216, 220, 222, 225, 233, 235, 236, 247, 250, 256, 263, 264, 269, 281, 283, 285, 293, 305, 307, 314, 317, 335, 340, 341, 344, 345, 347, 350, 354, 355, 357, 367, 377, 382, 393, 394, 395, 400, 5, 25, 28, 33, 37, 47, 70, 100, 129, 134, 140, 153, 160, 161, 165, 169, 196, 200, 202, 211, 223, 229, 241, 245, 251, 253, 275, 288, 294, 300, 308, 321, 328, 351, 352, 371, 376, 381, 387)
                AND ((p.diagnosis >= 1 AND p.diagnosis <= 5) OR p.diagnosis = 8)
                GROUP BY p.patient_id, p.diagnosis;"""

    df = pd.read_sql_query(query, connessione)
    connessione.close()
    
    # Mappatura dei pesi per la gravità clinica
    def mappa_stato_cognitivo(diag):
        if diag == 1:
            return 1.0  # Demenza
        elif diag == 2:
            return 0.3  # MCI
        elif diag in [3, 4, 5, 8]:
            return 0.0  # Sano
        return None
        
    df['stato_cognitivo'] = df['diagnosis'].apply(mappa_stato_cognitivo)
    
    # Normalizzazione per le anomalie totali
    df['norm_anomalie_totali'] = np.where(df['num_activities'] > 0, df['avg_anomalie_totali'] / df['num_activities'], 0)

    print(f"Dati caricati! Trovati {len(df)} pazienti in totale.\n")

    risultati_totali = []
    
    coppie_da_testare = [
        ("1. Globale (Sani + MCI + Demenza)", [0.0, 0.3, 1.0]),
        ("2. Sani vs MCI", [0.0, 0.3]),
        ("3. Sani vs Demenza", [0.0, 1.0]),
        ("4. MCI vs Demenza", [0.3, 1.0]),
        ("5. Sani Giovani (60-74 anni) vs Demenza", [0.0, 1.0])
    ]

    for nome_coppia, stati in coppie_da_testare:
        df_filtrato = df[df['stato_cognitivo'].isin(stati)]
        
        # Filtro per escludere i sani over 75
        if "60-74" in nome_coppia:
            df_filtrato = df_filtrato[df_filtrato['diagnosis'].isin([1, 4])]
            
        if len(df_filtrato) >= 3:
            r_raw, p_raw = pearsonr(df_filtrato['avg_anomalie_totali'], df_filtrato['stato_cognitivo'])
            r_norm, p_norm = pearsonr(df_filtrato['norm_anomalie_totali'], df_filtrato['stato_cognitivo'])
            
            risultati_totali.append({
                'Confronto': nome_coppia,
                'N° Pazienti': len(df_filtrato),
                ' | ': '|',
                'Pearson r (RAW)': f"{r_raw:.4f}",
                'p-value (RAW)': f"{p_raw:.4f}",
                '  |  ': '|',
                'Pearson r (NORM)': f"{r_norm:.4f}",
                'p-value (NORM)': f"{p_norm:.4f}"
            })

    df_ris_totali = pd.DataFrame(risultati_totali)

    print("="*120)
    print("ANALISI CORRELAZIONE 'TOTALE ANOMALIE' (OMISSIONI + PERSEVERAZIONI)")
    print("="*120 + "\n")
    print(df_ris_totali.to_string(index=False, justify='center').replace('\n', '\n\n'))
    print("\n" + "="*120)

except Exception as e:
    print(f"Errore: {e}")
