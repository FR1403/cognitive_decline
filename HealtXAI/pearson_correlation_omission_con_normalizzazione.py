import pandas as pd 
import psycopg2
# pyrefly: ignore [missing-import]
from scipy.stats import pearsonr  # Torniamo a Pearson come richiesto!

db_params = {
    "host": "localhost",
    "database": "CASAS400",
    "user": "postgres",
    "password": "sandro",
    "port": "5432"
}

try:
    # 1. Stabiliamo la connessione con il database PostgreSQL
    connessione = psycopg2.connect(**db_params)
    print("Connessione al database riuscita!")

    query_omission = """SELECT 
                            p.patient_id, 
                            p.diagnosis, 
                            AVG(t.omission_number) AS avg_omissions
                        FROM tracked_anomalies AS t 
                        JOIN patients AS p ON p.patient_id = t.patient_id
                        WHERE (diagnosis >= 1 AND diagnosis <= 5) OR diagnosis = 8
                        GROUP BY p.patient_id, p.diagnosis;"""

    dati_paziente_omission = pd.read_sql_query(query_omission, connessione)
    connessione.close()
    
    # Mappiamo i diagnosis_id in uno "Score di Gravità" (0, 1, 2)
    def mappa_stato_cognitivo(diag):
        if diag == 1:
            return 2  # Alzheimer/Dementia (Gravità Alta)
        elif diag == 2:
            return 1  # MCI (Gravità Media)
        elif diag in [3, 4, 5, 8]:
            return 0  # Sano (Gravità Assente)
        return None
        
    dati_paziente_omission['stato_cognitivo'] = dati_paziente_omission['diagnosis'].apply(mappa_stato_cognitivo)

    # -------------------------------------------------------------------------
    # NORMALIZZAZIONE Z-SCORE (Migliora l'affidabilità di Pearson)
    # -------------------------------------------------------------------------
    media_global = dati_paziente_omission['avg_omissions'].mean()
    dev_standard_global = dati_paziente_omission['avg_omissions'].std()
    
    # Z-score = (Valore - Media) / Deviazione Standard
    dati_paziente_omission['avg_omissions_norm'] = (dati_paziente_omission['avg_omissions'] - media_global) / dev_standard_global
    # -------------------------------------------------------------------------

    # Servono almeno 3 pazienti per dare senso statistico 
    if len(dati_paziente_omission) >= 3:
        
        # Calcoliamo Pearson (r) e p-value usando i dati normalizzati
        r_coeff, p_value = pearsonr(dati_paziente_omission['avg_omissions_norm'], dati_paziente_omission['stato_cognitivo'])

        # INTERPRETAZIONE CORRETTA: Prima guardiamo il p-value, poi il coefficiente
        if p_value > 0.05:
            interpretazione = "Nessuna correlazione statisticamente significativa (p > 0.05)"
        else:
            if r_coeff > 0:
                interpretazione = "Correlazione positiva statisticamente significativa"
            elif r_coeff < 0:
                interpretazione = "Correlazione negativa statisticamente significativa"
            else:
                interpretazione = "Nessuna corrispondenza"

        # Creiamo la tabella finale dei risultati
        df_risultati = pd.DataFrame([{
            'Tipo di Analisi': 'Omissioni (Z-Score) vs Diagnosi Cognitiva',
            'Pearson r': round(r_coeff, 4),
            'Significatività (p-value)': round(p_value, 4),
            'Numero Pazienti': len(dati_paziente_omission),
            'Interpretazione': interpretazione
        }])

        # Mostriamo la tabella a schermo
        print("\n" + "="*80)
        print("TABELLA DI SINTESI")
        print("="*80)
        print(df_risultati.to_string(index=False))
        print("="*80)

        # Salviamo il report in Excel
        # df_risultati.to_excel("correlazione_pearson_zscore.xlsx", index=False)
        # print("\nRisultati salvati con successo!")
    else:
        print("\nNon ci sono abbastanza pazienti (minimo 3) per calcolare la correlazione.")

except Exception as e:
    print(f"Si è verificato un errore durante la connessione o l'elaborazione: {e}")