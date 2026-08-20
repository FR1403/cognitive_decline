import psycopg2
import pandas as pd
import numpy as np
import os

# Parametri per la connessione al database PostgreSQL (inserire la password del proprio database)
db_params = {
    "host": "localhost",
    "database": "CASAS400",
    "user": "postgres",
    "password": "sandro",
    "port": "5432"
}

def create_feature_vectors(db_password=None):
    try:
        params = db_params.copy()
        if db_password and str(db_password).strip():
            params["password"] = str(db_password).strip()
        connessione = psycopg2.connect(**params)
        print("Connessione al database riuscita!")

        # Query per recuperare tutte le anomalie per ogni paziente e per ogni attività
        query = """
            WITH trajectory_metrics AS (
                SELECT 
                    tr.patient_id, 
                    SUM(CAST(tr.pacing AS NUMERIC)) / NULLIF(COUNT(tr.trajectory_number), 0) AS pacing,
                    SUM(CAST(tr.sharp_angles AS NUMERIC)) / NULLIF(COUNT(tr.trajectory_number), 0) AS sharp_angles,
                    SUM(CAST(tr.lapping AS NUMERIC)) / NULLIF(COUNT(tr.trajectory_number), 0) AS lapping,
                    SUM(CAST(tr.length AS NUMERIC)) / NULLIF(COUNT(tr.trajectory_number), 0) AS length,
                    AVG(CAST(tr.straightness AS NUMERIC)) AS straightness,
                    AVG(CAST(tr.jerk AS NUMERIC)) AS jerk
                FROM trajectory_anomalies AS tr
                GROUP BY tr.patient_id
            )
            SELECT 
                t.patient_id, 
                p.diagnosis,
                t.activity_id,
                COALESCE(t.omission_number, 0) AS omission,
                COALESCE(t.perseveration_number, 0) AS perseveration,
                COALESCE(t.tool_omission_number, 0) AS tool_omission,
                COALESCE(t.reversal_number, 0) AS reversal,
                COALESCE(t.anticipation_omission_number, 0) AS anticipation_omission,
                COALESCE(paa."Reach-touch", 0) AS reach_touch,
                COALESCE(paa."Action additions", 0) AS action_additions,
                COALESCE(tm.pacing, 0) AS pacing,
                COALESCE(tm.sharp_angles, 0) AS sharp_angles,
                COALESCE(tm.lapping, 0) AS lapping,
                COALESCE(tm.length, 0) AS length,
                COALESCE(tm.straightness, 0) AS straightness,
                COALESCE(tm.jerk, 0) AS jerk
            FROM tracked_anomalies t
            JOIN patients p ON p.patient_id = t.patient_id
            LEFT JOIN public.participants_activity_anomalies paa 
                   ON paa.patient_id = t.patient_id AND paa.activity_type = t.activity_id
            LEFT JOIN trajectory_metrics tm ON tm.patient_id = t.patient_id
            WHERE p.diagnosis IN (1, 2, 4, 5) 
              AND t.activity_id BETWEEN 1 AND 16
        """
        
        df = pd.read_sql_query(query, connessione)
        connessione.close()

        if df.empty:
            print("Nessun dato trovato nel database.")
            return None

        # Funzione per mappare le diagnosi in un valore target per la regressione
        def mappa_stato_cognitivo(diag):
            if diag == 1:
                return 1.0  # Demenza
            elif diag == 2:
                return 0.3  # MCI
            elif diag in [4, 5]:
                return 0.0  # Sano
            return None

        patients_data = []

        # Raggruppiamo i dati estratti per paziente
        grouped = df.groupby('patient_id')

        for patient_id, group in grouped:
            diagnosis = group['diagnosis'].iloc[0]
            target_value = mappa_stato_cognitivo(diagnosis)
            
            if target_value is None:
                continue
                
            pacing_val = group['pacing'].iloc[0]
            sharp_angles_val = group['sharp_angles'].iloc[0]
            lapping_val = group['lapping'].iloc[0]
            length_val = group['length'].iloc[0]
            straightness_val = group['straightness'].iloc[0]
            jerk_val = group['jerk'].iloc[0]

            patient_features = {
                'patient_id': patient_id,
                'pacing': float(pacing_val) if pd.notna(pacing_val) else 0.0,
                'sharp_angles': float(sharp_angles_val) if pd.notna(sharp_angles_val) else 0.0,
                'lapping': float(lapping_val) if pd.notna(lapping_val) else 0.0,
                'length': float(length_val) if pd.notna(length_val) else 0.0,
                'straightness': float(straightness_val) if pd.notna(straightness_val) else 0.0,
                'jerk': float(jerk_val) if pd.notna(jerk_val) else 0.0
            }

            n_activities = int(group['activity_id'].nunique())
            tot_omissions = group['omission'].sum()
            tot_perseverations = group['perseveration'].sum()
            tot_tool_omissions = group['tool_omission'].sum()
            tot_reversal = group['reversal'].sum()
            tot_anticipation_omission = group['anticipation_omission'].sum()
            tot_reach_touch = group['reach_touch'].sum() if 'reach_touch' in group.columns else 0
            tot_action_additions = group['action_additions'].sum() if 'action_additions' in group.columns else 0
            tot_anomalies_globale = (tot_omissions + tot_perseverations + tot_tool_omissions + 
                                     tot_reversal + tot_anticipation_omission + tot_reach_touch + tot_action_additions)

            patient_features['N_Attivita_Svolte'] = n_activities
            patient_features['Media_Omissioni'] = round(tot_omissions / n_activities, 4) if n_activities > 0 else 0.0
            patient_features['Media_Perseverazioni'] = round(tot_perseverations / n_activities, 4) if n_activities > 0 else 0.0
            patient_features['Media_ToolOmissioni'] = round(tot_tool_omissions / n_activities, 4) if n_activities > 0 else 0.0
            patient_features['Media_Reversal'] = round(tot_reversal / n_activities, 4) if n_activities > 0 else 0.0
            patient_features['Media_AnticipationOmission'] = round(tot_anticipation_omission / n_activities, 4) if n_activities > 0 else 0.0
            patient_features['Media_ReachTouch'] = round(tot_reach_touch / n_activities, 4) if n_activities > 0 else 0.0
            patient_features['Media_ActionAdditions'] = round(tot_action_additions / n_activities, 4) if n_activities > 0 else 0.0
            patient_features['Media_Anomalie_Globale'] = round(tot_anomalies_globale / n_activities, 4) if n_activities > 0 else 0.0
            patient_features['diagnosis'] = int(diagnosis)
            patient_features['Target_StatoCognitivo'] = target_value

            patients_data.append(patient_features)

        final_df = pd.DataFrame(patients_data)

        columns_order = ['patient_id', 'diagnosis']
            
        columns_order.extend([
            'N_Attivita_Svolte',
            'Media_Omissioni',
            'Media_Perseverazioni',
            'Media_ToolOmissioni',
            'Media_Reversal',
            'Media_AnticipationOmission',
            'Media_ReachTouch',
            'Media_ActionAdditions',
            'Media_Anomalie_Globale',
            'pacing',
            'sharp_angles',
            'lapping',
            'length',
            'straightness',
            'jerk',
            'Target_StatoCognitivo'
        ])
        
        final_df = final_df[columns_order]

        print(f"Vettori creati con successo! N° Pazienti analizzati: {len(final_df)}")
        print(f"Forma del dataset (Righe, Colonne): {final_df.shape}")
        
        pd.set_option('display.max_columns', None)
        print("\nPrimi 5 pazienti nel dataset:")
        print(final_df.head())

        return final_df

    except Exception as e:
        print(f"Errore: {e}")
        return None

if __name__ == "__main__":
    print("Avvio della creazione del dataset per la regressione...")
    df_dataset = create_feature_vectors()
    
    if df_dataset is not None:
        csv_path = os.path.join(os.path.dirname(__file__), 'dataset_regressione.csv')
        print("\nSalvataggio del dataset in formato CSV...")
        df_dataset.to_csv(csv_path, index=False)
        print(f"Dataset salvato correttamente in '{csv_path}'!")
