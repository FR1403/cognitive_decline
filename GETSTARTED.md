# Guida Rapida di Avvio (Quick Start)

Consulta la guida di dettaglio in [README.md](file:///c:/Users/flavy/tirocinio/declino_cognitivo/README.md).

---

### 1. Creazione e Attivazione Ambiente Isolato (`venv`)

- **Windows (PowerShell)**:
  ```powershell
  # 1. CREA l'ambiente virtuale venv (da eseguire solo la prima volta)
  python -m venv venv

  # 2. ATTIVA l'ambiente virtuale venv (da eseguire ogni volta prima di lavorare)
  .\venv\Scripts\Activate.ps1

  # 3. INSTALLA le dipendenze Python nel venv
  pip install -r requirements.txt
  ```

- **Linux / WSL (Ubuntu/Debian)**:
  ```bash
  # 1. INSTALLA le dipendenze di sistema operativo
  sudo apt update && sudo apt install -y python3-tk python3-venv clingo libpq-dev

  # 2. CREA l'ambiente virtuale venv (da eseguire solo la prima volta)
  python3 -m venv venv

  # 3. ATTIVA l'ambiente virtuale venv (da eseguire ogni volta prima di lavorare)
  source venv/bin/activate

  # 4. INSTALLA le dipendenze Python nel venv
  pip install -r requirements.txt
  ```

---

### 2. Configurazione Password Database PostgreSQL

Per connettersi al proprio database locale PostgreSQL `CASAS400`, modificare la password nel dizionario `db_params` nei seguenti file Python:
- `HealtXAI/utils/util_functions.py`
- `HealtXAI/modulo_regressione/regression_algorithm.py`
- `HealtXAI/correlazione_coppie_diagnosi_combinata.py`
- `HealtXAI/correlazione_omissioni.py`
- `HealtXAI/correlazione_perseveration.py`
- `HealtXAI/pearson_correlation_omission_con_normalizzazione.py`

```python
db_params = {
    "host": "localhost",
    "database": "CASAS400",
    "user": "postgres",
    "password": "LA_TUA_PASSWORD",
    "port": "5432"
}
```

---

### 3. Avvio Dashboard Clinica (Streamlit)
```bash
streamlit run HealtXAI/modulo_regressione/app_streamlit.py
```

---

### 4. Esecuzione Test Clingo (ASP Anomaly Detection)

- **Singolo test file .lp**:
  ```bash
  clingo nome_file.lp
  ```

- **Tutti i test Clingo (dalla cartella `HealtXAI`)**:
  ```bash
  cd HealtXAI
  python run_test_clingo.py test_omission_creati_clingo
  ```

---

### 5. Database PostgreSQL (Docker Compose)
Per avviare il container del database dalla radice del progetto:
```bash
docker compose up -d --build
```

---

### 6. Disattivazione Ambiente Virtuale
```bash
deactivate
```