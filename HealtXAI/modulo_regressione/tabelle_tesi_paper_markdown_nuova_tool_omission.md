# 📊 Tabelle Ufficiali Prestazioni LOOCV per la Tesi di Laurea — Nuova Tool Omission
## Valutazione Leave-One-Out Cross-Validation (LOOCV, $K=N$)

> **Configurazione Feature**: **Tutte le Anomalie (5)** (*Omission, Nuova Tool Omission, Anticipation Omission, Perseveration, Reversal*) + *Reach Touch* + *Action Additions* + 6 Feature di Movimento (*Pacing, Lapping, Sharp Angles, Straightness, Jerk, Length*).

Queste tabelle raggruppano le prestazioni dei **10 regressori di Machine Learning** implementati nel sistema HealthXAI su tutte le **5 coorti cliniche**, ricalcolate a seguito dell'aggiornamento dei test e delle metriche di **Tool Omission** con tutte le anomalie abilitate. Le tabelle sono formattate in modo del tutto simile ai risultati presentati nel paper originale (*Khodabandehloo, Riboni, Alimohammadi - FGCS 2021*) ed estese per la tesi di laurea (Pearson $r$, $p$-value, MAE, RMSE, $R^2$, Accuratezza Diagnostica % ed Esito Diagnosi su $N$ pazienti).

### 📌 Mappatura della Corrispondenza con le Tabelle del Paper HealthXAI

| Coorte Clinica nella Tesi | Dimensione ($N$) | Tabella Corrispondente nel Paper Originale | Pagina nel Paper | Profilo Pazienti nel Paper |
| :--- | :---: | :--- | :---: | :--- |
| **1. Sani Giovani (60-74) vs Demenza** | $N = 99$ | **Table 12** | pag. 184 | Healthy 60-74 ($N=80$) vs PwD ($N=19$) |
| **2. MCI vs Demenza** | $N = 73$ | **Table 10** | pag. 183 | MCI ($N=54$) vs PwD ($N=19$) |
| **3. Sani (60+) vs Demenza** | $N = 138$ | **Table 11** | pag. 183 | Healthy 60+ ($N=119$) vs PwD ($N=19$) |
| **4. Globale (Tutti i Pazienti)** | $N = 192$ | **Table 8** | pag. 183 | Healthy 60+ ($N=119$), MCI ($N=54$), PwD ($N=19$) |
| **5. Sani (60+) vs MCI** | $N = 173$ | **Table 9** | pag. 183 | Healthy 60+ ($N=119$) vs MCI ($N=54$) |

---

### 🏆 Coorte: 1. Sani Giovani (60-74 anni) vs Demenza — $N = 99$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 12 (pag. 184)**  
**Profilo Pazienti**: Sani Giovani (60-74) vs Demenza  
**Dimensione Campione**: $N = 99$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Random Forest** | **0.6341** | < 0.0001 | **0.1736** | 0.3050 | 0.4004 | **73.7%** | 73/99 |
| 🥈 | Gradient Boosting | 0.5661 | < 0.0001 | 0.1794 | 0.3409 | 0.2510 | 79.8% | 79/99 |
| 🥉 | Support Vector Regressor (SVR - RBF) | 0.5432 | < 0.0001 | 0.2224 | 0.3317 | 0.2906 | 59.6% | 59/99 |
| 4 | AdaBoost Regressor | 0.3603 | 0.0002 | 0.2675 | 0.3771 | 0.0832 | 45.5% | 45/99 |
| 5 | K-Neighbors Regressor (KNN) | 0.3355 | 0.0007 | 0.2141 | 0.3825 | 0.0569 | 58.6% | 58/99 |
| 6 | Neural Network (MLP) | 0.3241 | 0.0011 | 0.2834 | 0.4530 | -0.3231 | 62.6% | 62/99 |
| 7 | Hist Gradient Boosting | 0.2344 | 0.0195 | 0.2948 | 0.4007 | -0.0354 | 45.5% | 45/99 |
| 8 | Lasso Regression (L1) | 0.1831 | 0.0697 | 0.2904 | 0.4455 | -0.2797 | 47.5% | 47/99 |
| 9 | Ridge Regression (L2) | 0.1621 | 0.1089 | 0.2995 | 0.4728 | -0.4411 | 49.5% | 49/99 |
| 10 | Linear Regression | 0.1557 | 0.1238 | 0.3013 | 0.4777 | -0.4713 | 49.5% | 49/99 |

---

### 🏆 Coorte: 2. MCI vs Demenza — $N = 73$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 10 (pag. 183)**  
**Profilo Pazienti**: MCI vs Demenza  
**Dimensione Campione**: $N = 73$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Random Forest** | **0.6246** | < 0.0001 | **0.1654** | 0.2398 | 0.3901 | **83.6%** | 61/73 |
| 🥈 | Gradient Boosting | 0.5393 | < 0.0001 | 0.1764 | 0.2665 | 0.2476 | 82.2% | 60/73 |
| 🥉 | Support Vector Regressor (SVR - RBF) | 0.5263 | < 0.0001 | 0.2000 | 0.2615 | 0.2754 | 76.7% | 56/73 |
| 4 | AdaBoost Regressor | 0.4226 | 0.0002 | 0.1870 | 0.2910 | 0.1018 | 75.3% | 55/73 |
| 5 | K-Neighbors Regressor (KNN) | 0.3568 | 0.0019 | 0.1975 | 0.2944 | 0.0807 | 76.7% | 56/73 |
| 6 | Lasso Regression (L1) | 0.3353 | 0.0037 | 0.2227 | 0.3035 | 0.0241 | 79.5% | 58/73 |
| 7 | Neural Network (MLP) | 0.3002 | 0.0099 | 0.2694 | 0.3730 | -0.4744 | 71.2% | 52/73 |
| 8 | Ridge Regression (L2) | 0.2911 | 0.0125 | 0.2395 | 0.3211 | -0.0931 | 75.3% | 55/73 |
| 9 | Linear Regression | 0.2793 | 0.0167 | 0.2441 | 0.3270 | -0.1337 | 74.0% | 54/73 |
| 10 | Hist Gradient Boosting | 0.2421 | 0.0390 | 0.2499 | 0.3124 | -0.0346 | 67.1% | 49/73 |

---

### 🏆 Coorte: 3. Sani (60+) vs Demenza — $N = 138$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 11 (pag. 183)**  
**Profilo Pazienti**: Sani (60+) vs Demenza  
**Dimensione Campione**: $N = 138$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Random Forest** | **0.5403** | < 0.0001 | **0.1465** | 0.2919 | 0.2822 | **79.0%** | 109/138 |
| 🥈 | Support Vector Regressor (SVR - RBF) | 0.5003 | < 0.0001 | 0.1834 | 0.2988 | 0.2478 | 69.6% | 96/138 |
| 🥉 | Gradient Boosting | 0.4219 | < 0.0001 | 0.1616 | 0.3338 | 0.0618 | 79.7% | 110/138 |
| 4 | AdaBoost Regressor | 0.2422 | 0.0042 | 0.2613 | 0.3544 | -0.0583 | 42.8% | 59/138 |
| 5 | K-Neighbors Regressor (KNN) | 0.2357 | 0.0054 | 0.1754 | 0.3468 | -0.0132 | 63.8% | 88/138 |
| 6 | Neural Network (MLP) | 0.2294 | 0.0068 | 0.2610 | 0.4294 | -0.5535 | 64.5% | 89/138 |
| 7 | Lasso Regression (L1) | 0.1675 | 0.0495 | 0.2298 | 0.3768 | -0.1957 | 58.7% | 81/138 |
| 8 | Ridge Regression (L2) | 0.1310 | 0.1256 | 0.2414 | 0.4016 | -0.3585 | 60.1% | 83/138 |
| 9 | Linear Regression | 0.1264 | 0.1396 | 0.2422 | 0.4040 | -0.3742 | 60.1% | 83/138 |
| 10 | Hist Gradient Boosting | 0.0931 | 0.2773 | 0.2565 | 0.3744 | -0.1806 | 53.6% | 74/138 |

---

### 🏆 Coorte: 4. Globale: Tutti i Pazienti — $N = 192$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 8 (pag. 183)**  
**Profilo Pazienti**: Sani (60+) vs MCI vs Demenza (Tutti i Pazienti)  
**Dimensione Campione**: $N = 192$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Random Forest** | **0.4595** | < 0.0001 | **0.1940** | 0.2694 | 0.1987 | **55.7%** | 107/192 |
| 🥈 | Gradient Boosting | 0.4262 | < 0.0001 | 0.1934 | 0.2796 | 0.1376 | 58.3% | 112/192 |
| 🥉 | Support Vector Regressor (SVR - RBF) | 0.4140 | < 0.0001 | 0.2016 | 0.2748 | 0.1677 | 56.8% | 109/192 |
| 4 | AdaBoost Regressor | 0.2504 | 0.0005 | 0.2326 | 0.2997 | 0.0096 | 40.1% | 77/192 |
| 5 | Hist Gradient Boosting | 0.2459 | 0.0006 | 0.2240 | 0.3100 | -0.0599 | 49.0% | 94/192 |
| 6 | Lasso Regression (L1) | 0.1440 | 0.0462 | 0.2285 | 0.3130 | -0.0805 | 42.2% | 81/192 |
| 7 | K-Neighbors Regressor (KNN) | 0.1204 | 0.0962 | 0.2173 | 0.3161 | -0.1023 | 50.5% | 97/192 |
| 8 | Neural Network (MLP) | 0.1030 | 0.1549 | 0.2727 | 0.3938 | -0.7105 | 48.4% | 93/192 |
| 9 | Ridge Regression (L2) | 0.1013 | 0.1623 | 0.2342 | 0.3323 | -0.2176 | 47.4% | 91/192 |
| 10 | Linear Regression | 0.0992 | 0.1712 | 0.2346 | 0.3332 | -0.2243 | 47.4% | 91/192 |

---

### 🏆 Coorte: 5. Sani (60+) vs MCI — $N = 173$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 9 (pag. 183)**  
**Profilo Pazienti**: Sani (60+) vs MCI  
**Dimensione Campione**: $N = 173$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Gradient Boosting** | **0.2776** | 0.0002 | **0.1118** | 0.1371 | 0.0273 | **68.8%** | 119/173 |
| 🥈 | Neural Network (MLP) | 0.2154 | 0.0044 | 0.1436 | 0.1942 | -0.9508 | 67.1% | 116/173 |
| 🥉 | Random Forest | 0.2044 | 0.0070 | 0.1185 | 0.1396 | -0.0107 | 65.9% | 114/173 |
| 4 | AdaBoost Regressor | 0.1834 | 0.0157 | 0.1265 | 0.1396 | -0.0077 | 64.7% | 112/173 |
| 5 | Support Vector Regressor (SVR - RBF) | 0.1746 | 0.0216 | 0.1322 | 0.1414 | -0.0337 | 67.6% | 117/173 |
| 6 | Lasso Regression (L1) | 0.1106 | 0.1474 | 0.1262 | 0.1386 | 0.0064 | 69.9% | 121/173 |
| 7 | Ridge Regression (L2) | 0.0993 | 0.1936 | 0.1255 | 0.1473 | -0.1244 | 67.6% | 117/173 |
| 8 | Linear Regression | 0.0982 | 0.1988 | 0.1255 | 0.1476 | -0.1279 | 67.6% | 117/173 |
| 9 | K-Neighbors Regressor (KNN) | 0.0630 | 0.4099 | 0.1217 | 0.1487 | -0.1426 | 67.1% | 116/173 |
| 10 | Hist Gradient Boosting | -0.0138 | 0.8570 | 0.1323 | 0.1546 | -0.2383 | 60.7% | 105/173 |

---

## 🔍 Sintesi dei Risultati con la Nuova Tool Omission e Confronto con il Paper HealthXAI

1. **Sani Giovani (60-74) vs Demenza ($N=99$) — *Confronto con Table 12 (pag. 184)***:
   - Paper originale: Pearson $r = 0.707$ (M5' decision tree, MAE 0.161, RMSE 0.279).
   - **Nuova Tool Omission (Baseline 5 anomalie)**: **Random Forest** si conferma al 1° posto con **$r = 0.6341$** (< 0.0001), MAE **0.1736**, RMSE 0.3050, $R^2 = 0.4004$ e un'**Accuratezza Diagnostica del 73.7%** (73/99 diagnosi esatte).

2. **MCI vs Demenza ($N=73$) — *Confronto con Table 10 (pag. 183)***:
   - Paper originale: Pearson $r = 0.508$ (M5' decision tree, MAE 0.192, RMSE 0.265).
   - **Nuova Tool Omission (Baseline 5 anomalie)**: **Random Forest** ottiene **$r = 0.6246$** (< 0.0001), MAE **0.1654**, RMSE 0.2398, $R^2 = 0.3901$ e **Accuratezza Diagnostica dell'83.6%** (61/73 diagnosi esatte).

3. **Sani (60+) vs Demenza ($N=138$) — *Confronto con Table 11 (pag. 183)***:
   - Paper originale: Pearson $r = 0.581$ (M5' decision tree, MAE 0.185, RMSE 0.281).
   - **Nuova Tool Omission (Baseline 5 anomalie)**: **Random Forest** ottiene **$r = 0.5403$** (< 0.0001), MAE **0.1465**, RMSE 0.2919, $R^2 = 0.2822$ e **79.0% di accuratezza** (109/138 diagnosi esatte).

4. **Globale: Tutti i Pazienti ($N=192$) — *Confronto con Table 8 (pag. 183)***:
   - Paper originale: Pearson $r = 0.517$ (SVM, MAE 0.174, RMSE 0.276).
   - **Nuova Tool Omission (Baseline 5 anomalie)**: **Random Forest** registra un Pearson **$r = 0.4595$** (< 0.0001), MAE **0.1940**, RMSE 0.2694, $R^2 = 0.1987$ e accuratezza **55.7%** (107/192).

5. **Sani (60+) vs MCI ($N=173$) — *Confronto con Table 9 (pag. 183)***:
   - Paper originale: Pearson $r = 0.249$ (Linear Regression, MAE 0.119, RMSE 0.136).
   - **Nuova Tool Omission (Baseline 5 anomalie)**: **Gradient Boosting** registra **$r = 0.2776$** (< 0.0001), MAE **0.1118**, RMSE 0.1371, $R^2 = 0.0273$ e accuratezza **68.8%** (119/173).
