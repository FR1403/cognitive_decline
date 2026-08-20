import pandas as pd 
import psycopg2
import os
from scipy.stats import pearsonr

# Parametri per la connessione al database PostgreSQL (inserire la password del proprio database)
db_params = {
    "host": "localhost",
    "database": "CASAS400",
    "user": "postgres",
    "password": "sandro",
    "port": "5432"
}

try:
    # Tentativo di connessione al database PostgreSQL con fallback su CSV locale
    try:
        connessione = psycopg2.connect(**db_params)
        print("Connessione al database PostgreSQL riuscita!")

        query = """
            SELECT 
                p.patient_id, 
                p.diagnosis, 
                AVG(t.omission_number) AS avg_omissioni,
                AVG(t.perseveration_number) AS avg_perseverazioni,
                AVG(COALESCE(t.tool_omission_number, 0)) AS avg_tool_omissioni,
                AVG(COALESCE(t.reversal_number, 0)) AS avg_reversal,
                AVG(COALESCE(t.anticipation_omission_number, 0)) AS avg_anticipation_omission,
                AVG(COALESCE(paa."Reach-touch", 0)) AS avg_reach_touch,
                AVG(COALESCE(paa."Action additions", 0)) AS avg_action_additions,
                COUNT(t.activity_id) AS num_activities
            FROM tracked_anomalies AS t 
            JOIN patients AS p ON p.patient_id = t.patient_id
            LEFT JOIN public.participants_activity_anomalies paa 
                   ON paa.patient_id = t.patient_id AND paa.activity_type = t.activity_id
            WHERE (diagnosis >= 1 AND diagnosis <= 5) OR diagnosis = 8
            GROUP BY p.patient_id, p.diagnosis;"""

        df = pd.read_sql_query(query, connessione)
        connessione.close()
    except Exception as db_err:
        print(f"Nota: Connessione DB non disponibile ({db_err}). Caricamento dal dataset locale CSV...")
        script_dir = os.path.dirname(os.path.abspath(__file__))
        csv_path = os.path.join(script_dir, "modulo_regressione", "dataset_regressione.csv")
        if not os.path.exists(csv_path):
            csv_path = os.path.join(script_dir, "dataset_regressione.csv")
            
        df_csv = pd.read_csv(csv_path)
        df = pd.DataFrame({
            'patient_id': df_csv['patient_id'],
            'diagnosis': df_csv['diagnosis'],
            'avg_omissioni': df_csv.get('Media_Omissioni', 0),
            'avg_perseverazioni': df_csv.get('Media_Perseverazioni', 0),
            'avg_tool_omissioni': df_csv.get('Media_ToolOmissioni', 0),
            'avg_reversal': df_csv.get('Media_Reversal', 0),
            'avg_anticipation_omission': df_csv.get('Media_AnticipationOmission', 0),
            'avg_reach_touch': df_csv.get('Media_ReachTouch', 0),
            'avg_action_additions': df_csv.get('Media_ActionAdditions', 0),
            'num_activities': df_csv.get('N_Attivita_Svolte', 16)
        })

    # Funzione per mappare le diagnosi in uno stato cognitivo ordinale
    def mappa_stato_cognitivo(diag):
        if diag == 1:
            return 1.0  # Demenza
        elif diag == 2:
            return 0.3  # MCI
        elif diag in [3, 4, 5, 8]:
            return 0.0  # Sano
        return None
        
    df['stato_cognitivo'] = df['diagnosis'].apply(mappa_stato_cognitivo)
    
    # Calcolo media anomalie globale
    df['avg_anomalie_globale'] = (
        df['avg_omissioni'] + 
        df['avg_perseverazioni'] + 
        df['avg_tool_omissioni'] + 
        df['avg_reversal'] + 
        df['avg_anticipation_omission']
    )
    
    # Calcolo normalizzazioni per attività
    df['norm_omissioni'] = df['avg_omissioni'] / df['num_activities'].replace(0, 1)
    df['norm_perseverazioni'] = df['avg_perseverazioni'] / df['num_activities'].replace(0, 1)
    df['norm_tool_omissioni'] = df['avg_tool_omissioni'] / df['num_activities'].replace(0, 1)
    df['norm_reversal'] = df['avg_reversal'] / df['num_activities'].replace(0, 1)
    df['norm_anticipation_omission'] = df['avg_anticipation_omission'] / df['num_activities'].replace(0, 1)
    df['norm_anomalie_globale'] = df['avg_anomalie_globale'] / df['num_activities'].replace(0, 1)

    print(f"Dati caricati con successo! Trovati {len(df)} pazienti in totale.\n")

    # Dizionario delle sole anomalie comportamentali da analizzare
    features_to_analyze = [
        ("OMISSIONI", "avg_omissioni", "norm_omissioni"),
        ("PERSEVERAZIONI", "avg_perseverazioni", "norm_perseverazioni"),
        ("TOOL OMISSION", "avg_tool_omissioni", "norm_tool_omissioni"),
        ("REVERSAL", "avg_reversal", "norm_reversal"),
        ("ANTICIPATION OMISSION", "avg_anticipation_omission", "norm_anticipation_omission"),
        ("MEDIA ANOMALIE GLOBALE", "avg_anomalie_globale", "norm_anomalie_globale")
    ]

    coppie_da_testare = [
        ("1. Globale (Sani + MCI + Demenza)", [0.0, 0.3, 1.0]),
        ("2. Sani vs MCI", [0.0, 0.3]),
        ("3. Sani vs Demenza", [0.0, 1.0]),
        ("4. MCI vs Demenza", [0.3, 1.0]),
        ("5. Sani Giovani (60-74 anni) vs Demenza", [0.0, 1.0])
    ]

    dizionario_risultati = {titolo: [] for titolo, _, _ in features_to_analyze}

    for nome_coppia, stati in coppie_da_testare:
        df_filtrato = df[df['stato_cognitivo'].isin(stati)].copy()
        
        # Per "Sani Giovani vs Demenza": escludiamo gli over 75 (diagnosis = 5) e teniamo diagnosis 1 (Demenza) e 4 (Sani 60-74)
        if "60-74" in nome_coppia:
            df_filtrato = df_filtrato[df_filtrato['diagnosis'].isin([1, 4])]
            
        if len(df_filtrato) >= 3:
            for titolo, col_raw, col_norm in features_to_analyze:
                x_raw = df_filtrato[col_raw]
                x_norm = df_filtrato[col_norm]
                y_target = df_filtrato['stato_cognitivo']
                
                # Calcolo Pearson per RAW
                if len(x_raw.unique()) > 1 and len(y_target.unique()) > 1:
                    r_raw, p_raw = pearsonr(x_raw, y_target)
                else:
                    r_raw, p_raw = 0.0, 1.0
                    
                # Calcolo Pearson per NORM
                if len(x_norm.unique()) > 1 and len(y_target.unique()) > 1:
                    r_norm, p_norm = pearsonr(x_norm, y_target)
                else:
                    r_norm, p_norm = 0.0, 1.0
                    
                dizionario_risultati[titolo].append({
                    'Confronto': nome_coppia,
                    'N° Pazienti': len(df_filtrato),
                    ' | ': '|',
                    'Pearson r (RAW)': f"{r_raw:.4f}",
                    'p-value (RAW)': f"{p_raw:.4f}",
                    '  |  ': '|',
                    'Pearson r (NORM)': f"{r_norm:.4f}",
                    'p-value (NORM)': f"{p_norm:.4f}"
                })

    # --- STAMPA RISULTATI IN FORMATO TABELLARE UNIFICATO ---
    for titolo, _, _ in features_to_analyze:
        df_res = pd.DataFrame(dizionario_risultati[titolo])
        print("="*120)
        print(f"ANALISI CORRELAZIONE '{titolo}': CONFRONTO PER COPPIE DI DIAGNOSI")
        print("="*120 + "\n")
        print(df_res.to_string(index=False, justify='center').replace('\n', '\n\n'))
        print("\n")

except Exception as e:
    print(f"Errore generale: {e}")
