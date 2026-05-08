import pandas as pd 
import psycopg2
# pyrefly: ignore [missing-import]
from scipy.stats import pearsonr

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

    # con la query ci recuperiamo id, diagnosi e media di omission rilevate e salvate nella tabella
    # solo per le diagnosi 1-5 e 8 relative a demenza/alzheimer/MCI/paziente sano 
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
    
    # Mappiamo i diagnosis_id nello stato cognitivo richiesto
    # 1 (dementia) -> 2 (Alzheimer/Dementia)
    # 2 (MCI) -> 1 (MCI)
    # 3, 4, 5, 8 (varie età sane) -> 0 (Sano)
    def mappa_stato_cognitivo(diag):
        if diag == 1:
            return 2
        elif diag == 2:
            return 1
        elif diag in [3, 4, 5, 8]:
            return 0
        return None
        
    # recuperiamo i dati presi dalla tabella del database la diagnosi (stato cognitivo) utilizzando la funzione che 
    # mappa i valori a 1, 2 o 3 in base al tipo di diagnosi
    dati_paziente_omission['stato_cognitivo'] = dati_paziente_omission['diagnosis'].apply(mappa_stato_cognitivo)

    print(f"Dati caricati correttamente! Trovati {len(dati_paziente_omission)} pazienti")

    pd.set_option('display.max_rows', None) # forziamo pandas a stampare tutte le righe 
    print("\nAnteprima dei dati estratti (con stato cognitivo calcolato):")
    print(dati_paziente_omission[['patient_id', 'diagnosis', 'stato_cognitivo', 'avg_omissions']])

    # Servono almeno 3 pazienti per dare senso statistico 
    if len(dati_paziente_omission) >= 3:
        # Calcoliamo r di Pearson e il p-value
        # Confrontiamo il numero di omissioni con il NUOVO stato cognitivo 
        r_coeff, p_value = pearsonr(dati_paziente_omission['avg_omissions'], dati_paziente_omission['stato_cognitivo'])

        # In base al coefficiente trovato con la correlazione di pearson 
        if r_coeff == 0: # se è uguale a zero non c'è nessuna correlazione fra i dati
            interpretazione = "Nessuna corrispondenza"
        elif r_coeff > 0: # se è maggiore di zero c'è una correlazione fra le anomalie riscontrate e la diagnosi del paziente 
            interpretazione = "Correlazione positiva"
        else: # altrimenti la correlazioen è negativa 
            interpretazione = "Correlazione negativa"

        # creiamo una tabella dei dati dove vengono inseriti il coefficiente di pearson, il p-value che ci dice se 
        # il risultato è significativo oppure è frutto del caso (Se il p-value è molto basso (di solito minore di 0.05, cioè meno del 5%): 
        # Significa che è altamente improbabile che questa correlazione sia nata per caso)
        #Se il p-value è alto (maggiore di 0.05): Significa che c'è un'alta probabilità 
        # che la correlazione sia solo un abbaglio causato dal campione ristretto.
        # e infine l'interpretazione del valore di pearson trovato
        df_risultati = pd.DataFrame([{
            'Tipo di Analisi': 'Media Omissioni (SQL) vs Diagnosi',
            'Pearson r': round(r_coeff, 4),
            'Significatività (p-value)': round(p_value, 4),
            'Numero di Pazienti': len(dati_paziente_omission),
            'Interpretazione': interpretazione
        }])

        # Mostriamo la tabella a schermo
        print("\n" + "="*80)
        print("TABELLA DI SINTESI PER IL PROFESSORE")
        print("="*80)
        print(df_risultati.to_string(index=False))
        print("="*80)

        # Salviamo il report in Excel per il professore
        df_risultati.to_excel("correlazione_globale_media_SQL.xlsx", index=False)
        print("\nRisultati salvati in 'correlazione_globale_media_SQL.xlsx'!")
    else:
        print("\nNon ci sono abbastanza pazienti (minimo 3) per calcolare la correlazione.")

except Exception as e:
    print(f"Si è verificato un errore durante la connessione o l'elaborazione: {e}")
