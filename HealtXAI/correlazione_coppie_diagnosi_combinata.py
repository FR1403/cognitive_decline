import pandas as pd 
import psycopg2
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
    # Stabilisce la connessione al database
    connessione = psycopg2.connect(**db_params)
    print("Connessione al database riuscita!")

    # Query combinata per recuperare omissioni e perseverazioni assieme
    query = """SELECT 
                    p.patient_id, 
                    p.diagnosis, 
                    AVG(t.omission_number) AS avg_omissioni,
                    AVG(t.perseveration_number) AS avg_perseverazioni,
                    COUNT(t.activity_id) AS num_activities
                FROM tracked_anomalies AS t 
                JOIN patients AS p ON p.patient_id = t.patient_id
                WHERE (diagnosis >= 1 AND diagnosis <= 5) OR diagnosis = 8
                GROUP BY p.patient_id, p.diagnosis;"""

    # Carica i risultati della query in un DataFrame pandas
    df = pd.read_sql_query(query, connessione)
    connessione.close()
    
    # Funzione per mappare le diagnosi in uno stato cognitivo ordinale
    def mappa_stato_cognitivo(diag):
        if diag == 1:
            return 1.0  # Demenza
        elif diag == 2:
            return 0.3  # MCI
        elif diag in [3, 4, 5, 8]:
            return 0.0  # Sano
        return None
        
    # Applica la mappatura
    df['stato_cognitivo'] = df['diagnosis'].apply(mappa_stato_cognitivo)
    
    # Calcolo normalizzazione
    df['norm_omissioni'] = df['avg_omissioni'] / df['num_activities']
    df['norm_perseverazioni'] = df['avg_perseverazioni'] / df['num_activities']

    print(f"Dati caricati! Trovati {len(df)} pazienti in totale.\n")

    risultati_omissioni = []
    risultati_perseverazioni = []
    
    coppie_da_testare = [
        ("1. Globale (Sani + MCI + Demenza)", [0.0, 0.3, 1.0]),
        ("2. Sani vs MCI", [0.0, 0.3]),
        ("3. Sani vs Demenza", [0.0, 1.0]),
        ("4. MCI vs Demenza", [0.3, 1.0]),
        ("5. Sani Giovani (60-74 anni) vs Demenza", [0.0, 1.0])
    ]

    for nome_coppia, stati in coppie_da_testare:
        df_filtrato = df[df['stato_cognitivo'].isin(stati)]
        
        # Selettivo per "Sani Giovani vs Demenza": escludiamo gli over 75 (diagnosis = 5)
        # e teniamo solo la fascia 60-74 (diagnosis = 4) e la demenza (diagnosis = 1)
        if "60-74" in nome_coppia:
            df_filtrato = df_filtrato[df_filtrato['diagnosis'].isin([1, 4])]
            
        if len(df_filtrato) >= 3:
            # --- OMISSIONI ---
            r_raw_om, p_raw_om = pearsonr(df_filtrato['avg_omissioni'], df_filtrato['stato_cognitivo'])
            r_norm_om, p_norm_om = pearsonr(df_filtrato['norm_omissioni'], df_filtrato['stato_cognitivo'])
            
            risultati_omissioni.append({
                'Confronto': nome_coppia,
                'N° Pazienti': len(df_filtrato),
                ' | ': '|',
                'Pearson r (RAW)': f"{r_raw_om:.4f}",
                'p-value (RAW)': f"{p_raw_om:.4f}",
                '  |  ': '|',
                'Pearson r (NORM)': f"{r_norm_om:.4f}",
                'p-value (NORM)': f"{p_norm_om:.4f}"
            })

            # --- PERSEVERAZIONI ---
            r_raw_pe, p_raw_pe = pearsonr(df_filtrato['avg_perseverazioni'], df_filtrato['stato_cognitivo'])
            r_norm_pe, p_norm_pe = pearsonr(df_filtrato['norm_perseverazioni'], df_filtrato['stato_cognitivo'])
            
            risultati_perseverazioni.append({
                'Confronto': nome_coppia,
                'N° Pazienti': len(df_filtrato),
                ' | ': '|',
                'Pearson r (RAW)': f"{r_raw_pe:.4f}",
                'p-value (RAW)': f"{p_raw_pe:.4f}",
                '  |  ': '|',
                'Pearson r (NORM)': f"{r_norm_pe:.4f}",
                'p-value (NORM)': f"{p_norm_pe:.4f}"
            })

    df_ris_omissioni = pd.DataFrame(risultati_omissioni)
    df_ris_perseverazioni = pd.DataFrame(risultati_perseverazioni)

    # --- STAMPA RISULTATI ---
    print("="*120)
    print("ANALISI CORRELAZIONE 'OMISSION': CONFRONTO PER COPPIE DI DIAGNOSI")
    print("="*120 + "\n")
    print(df_ris_omissioni.to_string(index=False, justify='center').replace('\n', '\n\n'))
    print("\n")

    print("="*120)
    print("ANALISI CORRELAZIONE 'PERSEVERATION': CONFRONTO PER COPPIE DI DIAGNOSI")
    print("="*120 + "\n")
    print(df_ris_perseverazioni.to_string(index=False, justify='center').replace('\n', '\n\n'))
    print("\n" + "="*120)

except Exception as e:
    print(f"Errore: {e}")
