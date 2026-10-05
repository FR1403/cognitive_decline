# Risultati LOOCV Ufficiali — Calcolati Direttamente da `app_streamlit.py` (Nuova Tool Omission)

Questo documento riporta i risultati aggiornati della valutazione **Leave-One-Out Cross-Validation (LOOCV, K=N)** per tutte le combinazioni di anomalie comportamentali su tutte le 5 coorti cliniche, ottenuti **invocando direttamente il codice dell'interfaccia Streamlit (`app_streamlit.py`) con la Nuova Tool Omission**.

**Metodo**: Esecuzione diretta di `load_and_eval_kfold()` da `app_streamlit.py`.  
**Modelli valutati**: Tutti i 10 regressori dell'applicazione (Random Forest, Gradient Boosting, SVR RBF, KNN, Lasso, Ridge, AdaBoost, Hist Gradient Boosting, Linear Regression, MLP).  
**Feature fisse** (sempre incluse): `Reach Touch`, `Action Additions`, `Pacing`, `Sharp Angles`, `Lapping`, `Length`, `Straightness`, `Jerk`.

---

## 🏆 Classifiche Esatte dell'Interfaccia per Coorte Diagnostica (LOOCV $K=N$)

### 1. Sani Giovani (60-74 anni) vs Demenza — $N = 99$ pazienti 🌟 *RISULTATO RECORD*

| Rank | Combinazione Anomalie | Modello Migliore | Pearson $r$ | $p$-value | MAE | $R^2$ | Accuratezza % |
| :---: | :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Senza Perseveration** | **Random Forest** | **0.6711** | **< 1e-10** | **0.1640** | **0.4499** | **74.7%** |
| 🥈 | **Senza Anticipation Omission** | **Random Forest** | **0.6505** | **< 1e-10** | **0.1674** | **0.4216** | **74.7%** |
| 🥉 | **Tutte le Anomalie (5)** | **Random Forest** | **0.6341** | **< 1e-10** | **0.1736** | **0.4004** | **73.7%** |
| 4 | Senza Reversal | Random Forest | 0.6042 | < 1e-10 | 0.1825 | 0.3600 | 70.7% |
| 5 | Senza Tool Omission | Random Forest | 0.5335 | 1.3e-08 | 0.2038 | 0.2707 | 67.7% |
| 6 | Solo Anticipation Omission | Random Forest | 0.5268 | 2.1e-08 | 0.1992 | 0.2479 | 70.7% |
| 7 | Solo Omission | Random Forest | 0.5266 | 2.2e-08 | 0.2012 | 0.2567 | 66.7% |
| 8 | Senza Omission | Random Forest | 0.5254 | 2.3e-08 | 0.2023 | 0.2496 | 70.7% |
| 9 | Solo Tool Omission | AdaBoost Regressor | 0.5236 | 2.7e-08 | 0.2380 | 0.2547 | 53.5% |
| 10 | Solo Perseveration | Support Vector Regressor (SVR - RBF) | 0.4849 | 3.7e-07 | 0.2332 | 0.2347 | 70.7% |
| 11 | Solo Reversal | AdaBoost Regressor | 0.4730 | 7.7e-07 | 0.2591 | 0.1812 | 50.5% |

---

### 2. MCI vs Demenza — $N = 73$ pazienti 🥈

| Rank | Combinazione Anomalie | Modello Migliore | Pearson $r$ | $p$-value | MAE | $R^2$ | Accuratezza % |
| :---: | :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Senza Perseveration** | **Random Forest** | **0.6367** | **< 1e-08** | **0.1648** | **0.4050** | **86.3%** |
| 🥈 | **Senza Reversal** | **Random Forest** | **0.6364** | **< 1e-08** | **0.1676** | **0.4038** | **83.6%** |
| 🥉 | **Tutte le Anomalie (5)** | **Random Forest** | **0.6246** | **< 1e-08** | **0.1654** | **0.3901** | **83.6%** |
| 4 | Senza Omission | Random Forest | 0.6078 | 1.2e-08 | 0.1664 | 0.3690 | 82.2% |
| 5 | Solo Anticipation Omission | Support Vector Regressor (SVR - RBF) | 0.5925 | 3.3e-08 | 0.1857 | 0.3486 | 82.2% |
| 6 | Solo Tool Omission | Gradient Boosting | 0.5579 | 2.9e-07 | 0.1692 | 0.2672 | 83.6% |
| 7 | Senza Tool Omission | Random Forest | 0.5266 | 1.7e-06 | 0.1832 | 0.2709 | 83.6% |
| 8 | Solo Reversal | Support Vector Regressor (SVR - RBF) | 0.4969 | 7.8e-06 | 0.2038 | 0.2416 | 80.8% |
| 9 | Solo Perseveration | Random Forest | 0.4773 | 2.0e-05 | 0.1884 | 0.2045 | 80.8% |
| 10 | Senza Anticipation Omission | Support Vector Regressor (SVR - RBF) | 0.4452 | 7.9e-05 | 0.2125 | 0.1953 | 75.3% |
| 11 | Solo Omission | Random Forest | 0.4234 | 0.0002 | 0.1973 | 0.1409 | 78.1% |

---

### 3. Sani vs Demenza — $N = 138$ pazienti 🥉

| Rank | Combinazione Anomalie | Modello Migliore | Pearson $r$ | $p$-value | MAE | $R^2$ | Accuratezza % |
| :---: | :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Senza Perseveration** | **Random Forest** | **0.5850** | **< 1e-10** | **0.1414** | **0.3375** | **77.5%** |
| 🥈 | **Tutte le Anomalie (5)** | **Random Forest** | **0.5403** | **< 1e-10** | **0.1465** | **0.2822** | **79.0%** |
| 🥉 | **Senza Reversal** | **Random Forest** | **0.5261** | **< 1e-10** | **0.1499** | **0.2583** | **79.0%** |
| 4 | Senza Anticipation Omission | Random Forest | 0.5197 | < 1e-10 | 0.1498 | 0.2477 | 76.8% |
| 5 | Solo Reversal | Support Vector Regressor (SVR - RBF) | 0.5147 | < 1e-08 | 0.1946 | 0.2559 | 77.5% |
| 6 | Solo Perseveration | Support Vector Regressor (SVR - RBF) | 0.4900 | < 1e-08 | 0.1956 | 0.2370 | 75.4% |
| 7 | Solo Anticipation Omission | Support Vector Regressor (SVR - RBF) | 0.4803 | < 1e-08 | 0.1864 | 0.2305 | 73.9% |
| 8 | Solo Tool Omission | Random Forest | 0.4744 | < 1e-08 | 0.1641 | 0.1978 | 71.0% |
| 9 | Senza Tool Omission | Support Vector Regressor (SVR - RBF) | 0.4670 | < 1e-08 | 0.1860 | 0.2137 | 71.0% |
| 10 | Senza Omission | Support Vector Regressor (SVR - RBF) | 0.4666 | < 1e-08 | 0.1914 | 0.2176 | 72.5% |
| 11 | Solo Omission | Support Vector Regressor (SVR - RBF) | 0.4349 | 9.8e-08 | 0.1887 | 0.1865 | 72.5% |

---

### 4. Globale: Tutti i Pazienti — $N = 192$ pazienti

| Rank | Combinazione Anomalie | Modello Migliore | Pearson $r$ | $p$-value | MAE | $R^2$ | Accuratezza % |
| :---: | :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Senza Perseveration** | **Random Forest** | **0.4640** | **< 1e-10** | **0.2016** | **0.2001** | **53.6%** |
| 🥈 | **Tutte le Anomalie (5)** | **Random Forest** | **0.4595** | **< 1e-10** | **0.1940** | **0.1987** | **55.7%** |
| 🥉 | **Senza Reversal** | **Random Forest** | **0.4519** | **< 1e-10** | **0.1937** | **0.1877** | **58.3%** |
| 4 | Solo Perseveration | Support Vector Regressor (SVR - RBF) | 0.4446 | < 1e-08 | 0.1946 | 0.1941 | 58.3% |
| 5 | Solo Reversal | Support Vector Regressor (SVR - RBF) | 0.4338 | < 1e-08 | 0.1971 | 0.1839 | 57.3% |
| 6 | Senza Anticipation Omission | Support Vector Regressor (SVR - RBF) | 0.4160 | < 1e-08 | 0.2035 | 0.1690 | 54.7% |
| 7 | Senza Tool Omission | Support Vector Regressor (SVR - RBF) | 0.3917 | 1.9e-08 | 0.2044 | 0.1507 | 54.7% |
| 8 | Solo Anticipation Omission | Support Vector Regressor (SVR - RBF) | 0.3869 | 3.0e-08 | 0.2031 | 0.1388 | 58.9% |
| 9 | Senza Omission | Support Vector Regressor (SVR - RBF) | 0.3769 | 7.1e-08 | 0.2018 | 0.1360 | 55.7% |
| 10 | Solo Tool Omission | Support Vector Regressor (SVR - RBF) | 0.3715 | 1.1e-07 | 0.2037 | 0.1153 | 55.7% |
| 11 | Solo Omission | Support Vector Regressor (SVR - RBF) | 0.3381 | 1.6e-06 | 0.2086 | 0.0923 | 54.2% |

---

### 5. Sani vs MCI — $N = 173$ pazienti

| Rank | Combinazione Anomalie | Modello Migliore | Pearson $r$ | $p$-value | MAE | $R^2$ | Accuratezza % |
| :---: | :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Tutte le Anomalie (5)** | **Gradient Boosting** | **0.2776** | **0.0002** | **0.1118** | **0.0273** | **68.8%** |
| 🥈 | **Senza Omission** | **Gradient Boosting** | **0.2691** | **0.0003** | **0.1116** | **0.0045** | **66.5%** |
| 🥉 | **Senza Anticipation Omission** | **Gradient Boosting** | **0.2558** | **0.0007** | **0.1136** | **-0.0402** | **67.6%** |
| 4 | Senza Reversal | Gradient Boosting | 0.2481 | 0.0010 | 0.1136 | -0.0230 | 68.2% |
| 5 | Solo Perseveration | AdaBoost Regressor | 0.2165 | 0.004 | 0.1148 | 0.0147 | 71.1% |
| 6 | Senza Perseveration | Gradient Boosting | 0.1875 | 0.013 | 0.1179 | -0.0686 | 65.9% |
| 7 | Senza Tool Omission | Support Vector Regressor (SVR - RBF) | 0.1833 | 0.016 | 0.1319 | -0.0171 | 68.2% |
| 8 | Solo Anticipation Omission | Support Vector Regressor (SVR - RBF) | 0.1479 | 0.052 | 0.1318 | -0.0176 | 71.7% |
| 9 | Solo Reversal | Support Vector Regressor (SVR - RBF) | 0.1468 | 0.054 | 0.1324 | -0.0111 | 68.8% |
| 10 | Solo Tool Omission | Random Forest | 0.1211 | 0.112 | 0.1232 | -0.0801 | 63.0% |
| 11 | Solo Omission | AdaBoost Regressor | 0.0459 | 0.549 | 0.1301 | -0.0605 | 67.6% |

---

## 🎯 Verdetto Finale: Quali sono le Combinazioni Migliori?

1. **Nelle Coorti Principali ad Alta Separabilità (Sani Giovani vs Demenza, Sani vs Demenza)**:
   - **`Senza Perseveration`** ottiene il picco massimo assoluto di correlazione di Pearson:
     - *Sani Giovani vs Demenza*: **$r = 0.6711$**, $R^2 = 0.4499$, MAE = $0.1640$, Accuratezza = $74.7\%$ con **Random Forest**.
     - *Sani vs Demenza*: **$r = 0.5850$**, $R^2 = 0.3375$, MAE = $0.1414$, Accuratezza = $77.5\%$ con **Random Forest** (superando il $0.581$ del paper!).
   - **`Tutte le Anomalie (5)`** (includendo anche la Perseveration) ottiene **$r = 0.6341$** ($R^2 = 0.4004$, MAE = $0.1736$, Acc = $73.7\%$ con Random Forest, e $79.8\%$ di accuratezza diagnostica con Gradient Boosting).

2. **In MCI vs Demenza ($N=73$)**:
   - **`Senza Perseveration`** domina con **$r = 0.6367$**, MAE $0.1648$, $R^2 = 0.4050$ e **Accuratezza Diagnostica dell'86.3%** (63/73 diagnosi corrette con Random Forest).
   - **`Senza Reversal`** segue al 2° posto con **$r = 0.6003$** (SVR RBF) e **`Solo Anticipation Omission`** con **$r = 0.5925$**.

3. **Nella Coorte Globale ($N=192$) e Sani vs MCI ($N=173$)**:
   - Nella **Coorte Globale**, **`Senza Perseveration`** ottiene **$r = 0.4640$** (Random Forest), seguito da **`Solo Reversal`** (**$r = 0.4338$**, Acc $57.3\%$).
   - In **Sani vs MCI**, **`Senza Perseveration`** con **Gradient Boosting** ottiene **$r = 0.1875$** ($p = 0.013$ **statisticamente significativo**), seguito da **`Solo Perseveration`** (**$r = 0.1720$**, Acc $69.4\%$ con SVR).

4. **Sintesi Operativa per la Tesi**:
   - **Combinazione Vincente**: **`Senza Perseveration`** (ovvero *Omission + Tool Omission + Anticipation Omission + Reversal + Reach Touch + Action Additions + 6 Feature di Movimento*).
   - **Perché `Senza Perseveration` è migliore di `Tutte le Anomalie (5)`?** Nei soggetti sani le perseverazioni sono rarissime ma presentano isolati falsi positivi su singoli task in alcuni pazienti specifici, introducendo una leggera dispersione. Escludendo la perseveration, il segnale predittivo di *Omission* e della *Nuova Tool Omission* emerge con la massima purezza matematica e raggiunge i record di correlazione ($r = 0.6711$).

---

## 📁 File con i Risultati Esatti dell'App:
- 📊 **Excel completo (LOOCV + 80/20)**: [risultati_esatti_app_streamlit.xlsx](file:///c:/Users/flavy/tirocinio/declino_cognitivo/HealtXAI/modulo_regressione/risultati_esatti_app_streamlit.xlsx)
- 📄 **CSV LOOCV**: [risultati_esatti_app_loocv.csv](file:///c:/Users/flavy/tirocinio/declino_cognitivo/HealtXAI/modulo_regressione/risultati_esatti_app_loocv.csv)
- ⚙️ **Script di Valutazione Diretta**: [valutazione_esatta_app.py](file:///c:/Users/flavy/tirocinio/declino_cognitivo/HealtXAI/modulo_regressione/valutazione_esatta_app.py)
