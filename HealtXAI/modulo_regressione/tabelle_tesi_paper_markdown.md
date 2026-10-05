# 📊 Tabelle Ufficiali Prestazioni LOOCV per la Tesi di Laurea
## Valutazione Leave-One-Out Cross-Validation (LOOCV, $K=N$)

> **Configurazione Feature**: **Tutte le Anomalie (5)** (*Omission, Tool Omission, Anticipation Omission, Perseveration, Reversal*) + *Reach Touch* + *Action Additions* + 6 Feature di Movimento (*Pacing, Lapping, Sharp Angles, Straightness, Jerk, Length*).

Queste tabelle raggruppano le prestazioni dei **10 regressori di Machine Learning** implementati nel sistema HealthXAI su tutte le **5 coorti cliniche**, formattate in modo del tutto simile ai risultati presentati nel paper originale (*Khodabandehloo, Riboni, Alimohammadi - FGCS 2021*), arricchite con metriche estese per la tesi di laurea (Pearson $r$, $p$-value, MAE, RMSE, $R^2$, Accuratezza Diagnostica % ed Esito Diagnosi su $N$ pazienti).

### 📌 Mappatura della Corrispondenza con le Tabelle del Paper HealthXAI

| Coorte Clinica nella Tesi | Dimensione ($N$) | Tabella Corrispondente nel Paper Originale | Pagina nel Paper | Profilo Pazienti nel Paper |
| :--- | :---: | :--- | :---: | :--- |
| **1. Sani Giovani (60-74) vs Demenza** | $N = 99$ | **Table 12** | pag. 184 | Healthy 60-74 ($N=80$) vs PwD ($N=19$) |
| **2. MCI vs Demenza** | $N = 73$ | **Table 10** | pag. 183 | MCI ($N=53$) vs PwD ($N=19$) |
| **3. Sani (60+) vs Demenza** | $N = 138$ | **Table 11** | pag. 183 | Healthy 60+ ($N=119$) vs PwD ($N=19$) |
| **4. Globale (Tutti i Pazienti)** | $N = 192$ | **Table 8** | pag. 183 | Healthy 60+ ($N=119$), MCI ($N=53$), PwD ($N=19$) |
| **5. Sani (60+) vs MCI** | $N = 173$ | **Table 9** | pag. 183 | Healthy 60+ ($N=119$) vs MCI ($N=53$) |

---

### 🏆 Coorte: 1. Sani Giovani (60-74 anni) vs Demenza — $N = 99$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 12 (pag. 184)**  
**Profilo Pazienti**: Sani Giovani (60-74) vs Demenza  
**Dimensione Campione**: $N = 99$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Gradient Boosting** | **0.6311** | < 0.0001 | **0.1590** | 0.3154 | 0.3584 | **80.8%** | 80/99 |
| 🥈 | Random Forest | 0.6139 | < 0.0001 | 0.1721 | 0.3121 | 0.3721 | 73.7% | 73/99 |
| 🥉 | Support Vector Regressor (SVR - RBF) | 0.5266 | < 0.0001 | 0.2242 | 0.3366 | 0.2695 | 61.6% | 61/99 |
| 4 | K-Neighbors Regressor (KNN) | 0.3766 | 0.0001 | 0.2242 | 0.3701 | 0.1168 | 49.5% | 49/99 |
| 5 | AdaBoost Regressor | 0.3631 | 0.0002 | 0.2489 | 0.3785 | 0.0764 | 54.5% | 54/99 |
| 6 | Neural Network (MLP) | 0.1836 | 0.0689 | 0.2968 | 0.5547 | -0.9840 | 65.7% | 65/99 |
| 7 | Lasso Regression (L1) | 0.1493 | 0.1402 | 0.2944 | 0.4576 | -0.3504 | 45.5% | 45/99 |
| 8 | Ridge Regression (L2) | 0.1490 | 0.1412 | 0.3008 | 0.4809 | -0.4910 | 44.4% | 44/99 |
| 9 | Linear Regression | 0.1436 | 0.1561 | 0.3027 | 0.4860 | -0.5232 | 45.5% | 45/99 |
| 10 | Hist Gradient Boosting | -0.0182 | 0.8585 | 0.3265 | 0.4391 | -0.2430 | 38.4% | 38/99 |

---

### 🏆 Coorte: 2. MCI vs Demenza — $N = 73$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 10 (pag. 183)**  
**Profilo Pazienti**: MCI vs Demenza  
**Dimensione Campione**: $N = 73$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Random Forest** | **0.6010** | < 0.0001 | **0.1738** | 0.2455 | 0.3610 | **86.3%** | 63/73 |
| 🥈 | Support Vector Regressor (SVR - RBF) | 0.5434 | < 0.0001 | 0.1961 | 0.2579 | 0.2949 | 79.5% | 58/73 |
| 🥉 | AdaBoost Regressor | 0.5236 | < 0.0001 | 0.1685 | 0.2686 | 0.2354 | 79.5% | 58/73 |
| 4 | Gradient Boosting | 0.5051 | < 0.0001 | 0.1837 | 0.2771 | 0.1859 | 79.5% | 58/73 |
| 5 | Neural Network (MLP) | 0.3754 | 0.0011 | 0.2560 | 0.3692 | -0.4450 | 75.3% | 55/73 |
| 6 | K-Neighbors Regressor (KNN) | 0.3709 | 0.0012 | 0.1918 | 0.2940 | 0.0836 | 78.1% | 57/73 |
| 7 | Lasso Regression (L1) | 0.3291 | 0.0045 | 0.2236 | 0.3044 | 0.0176 | 79.5% | 58/73 |
| 8 | Ridge Regression (L2) | 0.3173 | 0.0062 | 0.2344 | 0.3142 | -0.0467 | 72.6% | 53/73 |
| 9 | Linear Regression | 0.3066 | 0.0083 | 0.2386 | 0.3192 | -0.0802 | 71.2% | 52/73 |
| 10 | Hist Gradient Boosting | 0.1564 | 0.1864 | 0.2606 | 0.3242 | -0.1141 | 67.1% | 49/73 |

---

### 🏆 Coorte: 3. Sani (60+) vs Demenza — $N = 138$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 11 (pag. 183)**  
**Profilo Pazienti**: Sani (60+) vs Demenza  
**Dimensione Campione**: $N = 138$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Random Forest** | **0.5446** | < 0.0001 | **0.1478** | 0.2906 | 0.2887 | **77.5%** | 107/138 |
| 🥈 | Support Vector Regressor (SVR - RBF) | 0.5108 | < 0.0001 | 0.1853 | 0.2971 | 0.2567 | 70.3% | 97/138 |
| 🥉 | Gradient Boosting | 0.4980 | < 0.0001 | 0.1563 | 0.3229 | 0.1217 | 78.3% | 108/138 |
| 4 | K-Neighbors Regressor (KNN) | 0.2984 | 0.0004 | 0.1783 | 0.3358 | 0.0503 | 59.4% | 82/138 |
| 5 | AdaBoost Regressor | 0.2171 | 0.0105 | 0.2440 | 0.3554 | -0.0637 | 44.9% | 62/138 |
| 6 | Lasso Regression (L1) | 0.1337 | 0.1179 | 0.2319 | 0.3841 | -0.2429 | 60.9% | 84/138 |
| 7 | Ridge Regression (L2) | 0.0904 | 0.2917 | 0.2440 | 0.4130 | -0.4365 | 60.9% | 84/138 |
| 8 | Linear Regression | 0.0861 | 0.3153 | 0.2448 | 0.4156 | -0.4549 | 61.6% | 85/138 |
| 9 | Neural Network (MLP) | 0.0854 | 0.3196 | 0.2522 | 0.4705 | -0.8647 | 67.4% | 93/138 |
| 10 | Hist Gradient Boosting | -0.0487 | 0.5707 | 0.2582 | 0.3902 | -0.2821 | 52.9% | 73/138 |

---

### 🏆 Coorte: 4. Coorte Globale (Sani + MCI + Demenza) — $N = 192$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 8 (pag. 183)**  
**Profilo Pazienti**: Sani (60+) vs MCI vs Demenza (Tutti i Pazienti)  
**Dimensione Campione**: $N = 192$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Random Forest** | **0.4045** | < 0.0001 | **0.2043** | 0.2790 | 0.1414 | **51.0%** | 98/192 |
| 🥈 | Support Vector Regressor (SVR - RBF) | 0.4022 | < 0.0001 | 0.2080 | 0.2767 | 0.1558 | 50.0% | 96/192 |
| 🥉 | Gradient Boosting | 0.3467 | < 0.0001 | 0.2116 | 0.3004 | 0.0046 | 54.2% | 104/192 |
| 4 | AdaBoost Regressor | 0.2826 | < 0.0001 | 0.2322 | 0.2948 | 0.0412 | 35.9% | 69/192 |
| 5 | K-Neighbors Regressor (KNN) | 0.2109 | 0.0033 | 0.2213 | 0.3036 | -0.0169 | 47.9% | 92/192 |
| 6 | Hist Gradient Boosting | 0.1988 | 0.0057 | 0.2348 | 0.3176 | -0.1123 | 45.3% | 87/192 |
| 7 | Lasso Regression (L1) | 0.0771 | 0.2876 | 0.2362 | 0.3209 | -0.1357 | 35.9% | 69/192 |
| 8 | Ridge Regression (L2) | 0.0537 | 0.4592 | 0.2385 | 0.3395 | -0.2713 | 43.2% | 83/192 |
| 9 | Linear Regression | 0.0519 | 0.4745 | 0.2387 | 0.3405 | -0.2787 | 43.8% | 84/192 |
| 10 | Neural Network (MLP) | 0.0517 | 0.4768 | 0.2580 | 0.4098 | -0.8528 | 46.9% | 90/192 |

---

### 🏆 Coorte: 5. Sani (60+) vs MCI — $N = 173$ Pazienti

📌 **Tabella Corrispondente del Paper Originale**: **Table 9 (pag. 183)**  
**Profilo Pazienti**: Sani (60+) vs MCI  
**Dimensione Campione**: $N = 173$ soggetti

| Rank | Regressore ML | Pearson $r$ | $p$-value | MAE | RMSE | $R^2$ | Accuratezza % | Esito Diagnosi |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 🥇 | **Support Vector Regressor (SVR - RBF)** | **0.0228** | 0.7656 | **0.1385** | 0.1470 | -0.1178 | **64.2%** | 111/173 |
| 🥈 | Hist Gradient Boosting | 0.0066 | 0.9313 | 0.1310 | 0.1538 | -0.2241 | 61.8% | 107/173 |
| 🥉 | Ridge Regression (L2) | -0.0013 | 0.9862 | 0.1314 | 0.1530 | -0.2118 | 67.1% | 116/173 |
| 4 | Linear Regression | -0.0032 | 0.9669 | 0.1315 | 0.1533 | -0.2166 | 67.1% | 116/173 |
| 5 | Random Forest | -0.0043 | 0.9556 | 0.1295 | 0.1476 | -0.1275 | 61.3% | 106/173 |
| 6 | Lasso Regression (L1) | -0.0044 | 0.9547 | 0.1293 | 0.1413 | -0.0336 | 69.4% | 120/173 |
| 7 | Gradient Boosting | -0.0221 | 0.7725 | 0.1316 | 0.1570 | -0.2748 | 60.7% | 105/173 |
| 8 | K-Neighbors Regressor (KNN) | -0.0296 | 0.6987 | 0.1262 | 0.1525 | -0.2039 | 64.7% | 112/173 |
| 9 | AdaBoost Regressor | -0.0599 | 0.4334 | 0.1393 | 0.1480 | -0.1334 | 65.9% | 114/173 |
| 10 | Neural Network (MLP) | -0.0885 | 0.2468 | 0.1640 | 0.2534 | -2.3226 | 59.0% | 102/173 |

---

## 🔍 Confronto e Sintesi dei Risultati con il Paper Originale HealthXAI

1. **Sani Giovani (60-74) vs Demenza ($N=99$) — *Confronto con Table 12 (pag. 184)***:
   - Nel paper originale (*Table 12*), l'algoritmo migliore otteneva un **Pearson $r = 0.707$** con M5' decision tree (MAE 0.161, RMSE 0.279).
   - Nella nostra implementazione extended con feature ingegnerizzate (Tutte le Anomalie), **Gradient Boosting** si posiziona al primo posto con **$r = 0.6311$** ($p < 0.0001$), MAE **0.1590** e una **Accuratezza Diagnostica dell'80.8%** (80/99 diagnosi esatte), seguito da Random Forest ($r = 0.6139$, Acc 73.7%).

2. **MCI vs Demenza ($N=73$) — *Confronto con Table 10 (pag. 183)***:
   - Nel paper originale (*Table 10*), l'algoritmo migliore otteneva **$r = 0.508$** con M5' decision tree (MAE 0.192, RMSE 0.265).
   - Nella nostra implementazione, **Random Forest** raggiunge **$r = 0.6010$** ($p < 0.0001$), MAE **0.1738** e una straordinaria **Accuratezza Diagnostica dell'86.3%** (63/73 diagnosi esatte), superando nettamente il baseline del paper (+0.093 in correlazione Pearson).

3. **Sani (60+) vs Demenza ($N=138$) — *Confronto con Table 11 (pag. 183)***:
   - Nel paper originale (*Table 11*), M5' decision tree registrava **$r = 0.581$** (MAE 0.185, RMSE 0.281).
   - Nella nostra valutazione, **Random Forest** ottiene **$r = 0.5446$** ($p < 0.0001$), MAE **0.1478** e **77.5% di accuratezza diagnostica** (107/138 diagnosi esatte).

4. **Globale: Tutti i Pazienti ($N=192$) — *Confronto con Table 8 (pag. 183)***:
   - Nel paper originale (*Table 8*), SVM registrava **$r = 0.517$** (MAE 0.174, RMSE 0.276).
   - Nella nostra analisi globale con 3 classi di target (0.0, 0.3, 1.0), **Random Forest** e **SVR (RBF)** registrano un Pearson $r \approx 0.4045$ e $0.4022$ ($p < 0.0001$), con MAE $\approx 0.2043$.

5. **Sani (60+) vs MCI ($N=173$) — *Confronto con Table 9 (pag. 183)***:
   - Nel paper originale (*Table 9*), Linear Regression registrava **$r = 0.249$** (MAE 0.119, RMSE 0.136).
   - Coerentemente con i rilievi del paper, la distinzione tra soggetti sani ed MCI con sole feature di frequenza/durata sulle brevi sessioni di test risente della forte sovrapposizione nei pattern comportamentali tra sani ed MCI, ottenendo una correlazione vicina allo 0 con la configurazione 'Tutte le anomalie'.
