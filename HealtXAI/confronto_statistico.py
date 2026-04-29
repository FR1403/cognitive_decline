import psycopg2
import pandas as pd
from scipy import stats # Import corretto per le versioni recenti
import sys

# Parametri presi dalle tue util_functions.py
db_params = {
    "host": "localhost",
    "database": "CASAS400",
    "user": "postgres",
    "password": "sandro",
    "port": "5432"
}

def calculate_anomaly_correlation():
    try:
        # Connessione al database
        conn = psycopg2.connect(**db_params)
        
        # Query basata sulla tua tabella tracked_anomalies
        query = """
        SELECT 
            CASE 
                WHEN p.diagnosis IN ('old-old 75+', 'young-old 60-74') THEN 0
                WHEN p.diagnosis = 'MCI' THEN 1
                WHEN p.diagnosis = 'dementia' THEN 2
            END as cognitive_value,
            t.perseveration_number
        FROM tracked_anomalies t
        JOIN patients p ON t.patient_id = p.patient_id
        JOIN senior_participants s ON t.patient_id = s.patient_id
        WHERE s.diagnosis_id IN (1, 2, 4, 5, 8)
        AND p.diagnosis IS NOT NULL;
        """
        
        # Caricamento in DataFrame
        df = pd.read_sql_query(query, conn)
        conn.close()

        # Pulizia dati
        df = df.dropna()
        
        if len(df) < 2:
            print("Dati insufficienti per calcolare la correlazione.")
            return

        # Calcolo correlazione di Pearson
        r_coeff, p_value = stats.pearsonr(df['perseveration_number'], df['cognitive_value'])

        print(f"--- Analisi Statistica tracked_anomalies ---")
        print(f"Campione: {len(df)} osservazioni.")
        print(f"Coefficiente di Pearson (r): {r_coeff:.4f}")
        print(f"Significatività (p-value): {p_value:.4f}")

        # Interpretazione
        if p_value < 0.05:
            print("Risultato: Esiste una correlazione statisticamente significativa.")
        else:
            print("Risultato: Non è stata trovata una correlazione significativa.")

    except Exception as e:
        print(f"Errore durante l'analisi: {e}")

if __name__ == "__main__":
    calculate_anomaly_correlation()