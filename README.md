# 🩺 HealtXAI: Declino Cognitivo & Anomaly Detection

Questo progetto implementa una pipeline diagnostica assistita per la stima del declino cognitivo tramite biomarcatori digitali comportamentali estratti da ambienti domotici (dataset CASAS) mediante **Answer Set Programming (Clingo)** e modelli di **Machine Learning / Deep Learning Regressivi**.

---

## 📌 Descrizione Sintetica del Progetto

Il sistema si articola su tre moduli principali:

1. **Anomaly Detection Logica (ASP - Clingo)**:
   - **Livello A (Activity Model)**: Modellazione atomica delle attività e dei relativi task (`activity`, `action`, `part_of`).
   - **Livello B (Execution Observation)**: Tracciamento delle istanze e delle azioni eseguite da ciascun paziente.
   - **Livello C (Anomaly Detection)**: Rilevamento automatico di 5 anomalie comportamentali target (*Omission*, *Perseveration*, *Tool Omission*, *Reversal*, *Anticipation Omission*).

2. **Feature Engineering & Aggregazione Paziente (`regression_algorithm.py`)**:
   - Calcolo delle frequenze medie delle anomalie comportamentali fisiche per paziente.
   - Aggregazione per paziente delle metriche di traiettoria (*Pacing*, *Sharp Angles*, *Lapping*, *Length* divisi per il numero di traiettorie, e media di *Straightness* e *Jerk*).

3. **Pipeline ML & HealtXAI Clinical Dashboard (`app_streamlit.py`)**:
   - Batteria di **10 architetture regressive** (Linear Regression, Ridge, Lasso, SVR, KNN, Random Forest, Gradient Boosting, Hist Gradient Boosting, AdaBoost, Reti Neurali MLP).
   - Validazione deterministica tramite **Leave-One-Out Cross-Validation (LOOCV, K=192)** e **Stratified K-Fold**.
   - **Explainable AI (XAI)**, analisi delle correlazioni di **Pearson ($r$)** selezionabili per gruppi clinici (*Sani*, *MCI*, *Demenza*) e confronto differenziale del profilo paziente.

---

## 🔑 Configurazione Password Database PostgreSQL

Tutti gli script che si connettono al database PostgreSQL locale (`CASAS400`) utilizzano il dizionario `db_params`. Ciascun utente deve semplicemente **inserire la password del proprio database PostgreSQL** nel parametro `"password"` dei seguenti file Python:

### 📌 Elenco dei file da aggiornare:
- `HealtXAI/utils/util_functions.py` (utility generali e app Streamlit)
- `HealtXAI/modulo_regressione/regression_algorithm.py` (algoritmi di regressione e ML)
- `HealtXAI/correlazione_coppie_diagnosi_combinata.py` (analisi correlazione combinata)
- `HealtXAI/correlazione_omissioni.py` (analisi correlazione omissioni)
- `HealtXAI/correlazione_perseveration.py` (analisi correlazione perseverazione)
- `HealtXAI/pearson_correlation_omission_con_normalizzazione.py` (correlazione di Pearson con normalizzazione)

```python
db_params = {
    "host": "localhost",
    "database": "CASAS400",
    "user": "postgres",
    "password": "INSERISCI_LA_TUA_PASSWORD_QUI",
    "port": "5432"
}
```

*(Nota: Se il database PostgreSQL locale non è presente o è disattivato, l'applicazione Streamlit e gli script di regressione funzioneranno comunque automaticamente utilizzando il dataset offline integrato `dataset_regressione.csv`)*

---

## 🛠️ Guida all'Installazione e Configurazione Ambiente Isolato (`venv`)

Per evitare di "sporcare" le dipendenze globali di sistema, si consiglia di creare ed attivare un ambiente virtuale Python dedicato (`venv`).

---

### 🪟 Guida per WINDOWS (PowerShell o Prompt dei Comandi)

1. **Apri il terminale** nella cartella principale del progetto:
   ```powershell
   cd c:\percorso\del\progetto\declino_cognitivo
   ```

2. **CREA l'ambiente virtuale (`venv`)** *(da fare solo la prima volta)*:
   ```powershell
   python -m venv venv
   ```

3. **ATTIVA l'ambiente virtuale (`venv`)** *(da fare ogni volta prima di lavorare)*:
   - *In PowerShell:*
     ```powershell
     .\venv\Scripts\Activate.ps1
     ```
     *(Nota: Se PowerShell blocca l'esecuzione degli script, esegui prima: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process`)*
   - *In Prompt dei Comandi (CMD):*
     ```cmd
     venv\Scripts\activate.bat
     ```

4. **INSTALLA le dipendenze Python**:
   ```powershell
   python -m pip install --upgrade pip
   pip install -r requirements.txt
   ```

---

### 🐧 Guida per LINUX / WSL / macOS (Ubuntu / Debian / Bash)

1. **Apri il terminale** nella cartella del progetto:
   ```bash
   cd /percorso/del/progetto/declino_cognitivo
   ```

2. **Installa i pacchetti di sistema necessari** (richiesti per la GUI `tkinter` e il solver `clingo`):
   ```bash
   sudo apt update
   sudo apt install -y python3-tk python3-venv clingo libpq-dev
   ```

3. **CREA l'ambiente virtuale (`venv`)** *(da fare solo la prima volta)*:
   ```bash
   python3 -m venv venv
   ```

4. **ATTIVA l'ambiente virtuale (`venv`)** *(da fare ogni volta prima di lavorare)*:
   ```bash
   source venv/bin/activate
   ```

5. **INSTALLA le dipendenze Python**:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

6. *(Opzionale)* Per disattivare l'ambiente virtuale quando hai finito:
   ```bash
   deactivate
   ```

---

## 🚀 Avvio dell'Applicazione e dei Moduli

### 1. Dashboard Clinica Streamlit (HealtXAI UI)
Per avviare la dashboard interattiva con classifica modelli, Explainable AI e correlazioni di Pearson:
```bash
streamlit run HealtXAI/modulo_regressione/app_streamlit.py
```

### 2. Addestramento e Valutazione Modelli (LOOCV / Stratified)
Per eseguire l'addestramento da linea di comando e stampare il report completo di Leave-One-Out Cross-Validation:
```bash
python HealtXAI/modulo_regressione/train_regression.py
```

### 3. Test ed Esecuzione Anomaly Detection (Clingo / ASP)
Per eseguire l'estrazione delle anomalie logiche tramite Clingo:
```bash
python HealtXAI/run_test_clingo.py <nome_cartella>
# Esempio:
python HealtXAI/run_test_clingo.py test_omission_creati_clingo
```

### 4. Database PostgreSQL locale tramite Docker
Se desideri avviare l'istanza PostgreSQL `CASAS400` in ambiente containerizzato:
```bash
docker compose up -d --build
```

---

## 📋 File `requirements.txt`

Tutte le dipendenze necessarie sono unificate nel file [requirements.txt](file:///c:/Users/flavy/tirocinio/declino_cognitivo/requirements.txt):

```txt
streamlit>=1.30.0
pandas>=2.0.0
numpy>=1.24.0
scikit-learn>=1.3.0
scipy>=1.10.0
plotly>=5.15.0
psycopg2-binary>=2.9.0
clingo>=5.6.0
```
