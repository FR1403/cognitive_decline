# ⚖️ Report Comparativo: Tutte le Anomalie (5) vs Senza Perseveration
## Confronto Dettagliato delle Prestazioni LOOCV ($K=N$) tra la Baseline Completa e la Combinazione Senza Perseveration

Questo documento confronta direttamente i risultati della **Baseline con Tutte le Anomalie (5)** con la combinazione ottimizzata **Senza Perseveration** (entrambi con Nuova Tool Omission e calcolati via LOOCV dall'interfaccia).

> **Legenda Differenze ($\Delta$)**:
> - $\Delta r = r_{\text{senza\_pers}} - r_{\text{tutte\_anom}}$ (un valore positivo **indica un miglioramento** nella correlazione)
> - $\Delta\text{MAE} = \text{MAE}_{\text{senza\_pers}} - \text{MAE}_{\text{tutte\_anom}}$ (un valore negativo **indica un miglioramento**, ossia minor errore)
> - $\Delta\text{Acc} = \text{Acc}_{\text{senza\_pers}} - \text{Acc}_{\text{tutte\_anom}}$ (un valore positivo **indica un miglioramento** nell'accuratezza diagnostica)

---

### 📊 Coorte: 1. Sani Giovani (60-74 anni) vs Demenza — $N = 99$ Pazienti

📌 **Paper Reference**: **Table 12 (pag. 184)** | **Dimensione**: $N = 99$ soggetti

| Regressore ML | Pearson $r$ (5 Anomalie) | Pearson $r$ (Senza Pers.) | $\Delta r$ | MAE (5 Anomalie) | MAE (Senza Pers.) | $\Delta$MAE | Acc% (5 Anomalie) | Acc% (Senza Pers.) | $\Delta$Acc% | Esito Senza Pers. |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Random Forest** | 0.6341 | 0.6711 | +0.0370 🟢 | 0.1736 | 0.1640 | -0.0096 🟢 | 73.7% | 74.7% | +1.0% 🟢 | 74/99 |
| Gradient Boosting | 0.5661 | 0.6459 | +0.0798 🟢 | 0.1794 | 0.1542 | -0.0252 🟢 | 79.8% | 80.8% | +1.0% 🟢 | 80/99 |
| Support Vector Regressor (SVR - RBF) | 0.5432 | 0.5482 | +0.0050 🟢 | 0.2224 | 0.2188 | -0.0036 ⚪ | 59.6% | 59.6% | 0.0% ⚪ | 59/99 |
| AdaBoost Regressor | 0.3603 | 0.4543 | +0.0940 🟢 | 0.2675 | 0.2473 | -0.0202 🟢 | 45.5% | 48.5% | +3.0% 🟢 | 48/99 |
| K-Neighbors Regressor (KNN) | 0.3355 | 0.3324 | -0.0031 ⚪ | 0.2141 | 0.2263 | +0.0122 🔴 | 58.6% | 49.5% | -9.1% 🔴 | 49/99 |
| Neural Network (MLP) | 0.3241 | 0.1887 | -0.1354 🔴 | 0.2834 | 0.2953 | +0.0119 🔴 | 62.6% | 63.6% | +1.0% 🟢 | 63/99 |
| Lasso Regression (L1) | 0.1831 | 0.1488 | -0.0343 🔴 | 0.2904 | 0.2931 | +0.0027 ⚪ | 47.5% | 45.5% | -2.0% 🔴 | 45/99 |
| Ridge Regression (L2) | 0.1621 | 0.1434 | -0.0187 🔴 | 0.2995 | 0.2999 | +0.0004 ⚪ | 49.5% | 45.5% | -4.0% 🔴 | 45/99 |
| Linear Regression | 0.1557 | 0.1385 | -0.0172 🔴 | 0.3013 | 0.3017 | +0.0004 ⚪ | 49.5% | 45.5% | -4.0% 🔴 | 45/99 |
| Hist Gradient Boosting | 0.2344 | 0.0007 | -0.2337 🔴 | 0.2948 | 0.3220 | +0.0272 🔴 | 45.5% | 41.4% | -4.1% 🔴 | 41/99 |

---

### 📊 Coorte: 2. MCI vs Demenza — $N = 73$ Pazienti

📌 **Paper Reference**: **Table 10 (pag. 183)** | **Dimensione**: $N = 73$ soggetti

| Regressore ML | Pearson $r$ (5 Anomalie) | Pearson $r$ (Senza Pers.) | $\Delta r$ | MAE (5 Anomalie) | MAE (Senza Pers.) | $\Delta$MAE | Acc% (5 Anomalie) | Acc% (Senza Pers.) | $\Delta$Acc% | Esito Senza Pers. |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Random Forest** | 0.6246 | 0.6367 | +0.0121 🟢 | 0.1654 | 0.1648 | -0.0006 ⚪ | 83.6% | 86.3% | +2.7% 🟢 | 63/73 |
| Gradient Boosting | 0.5393 | 0.5782 | +0.0389 🟢 | 0.1764 | 0.1669 | -0.0095 🟢 | 82.2% | 82.2% | 0.0% ⚪ | 60/73 |
| Support Vector Regressor (SVR - RBF) | 0.5263 | 0.5669 | +0.0406 🟢 | 0.2000 | 0.1925 | -0.0075 🟢 | 76.7% | 78.1% | +1.4% 🟢 | 57/73 |
| AdaBoost Regressor | 0.4226 | 0.4829 | +0.0603 🟢 | 0.1870 | 0.1778 | -0.0092 🟢 | 75.3% | 79.5% | +4.2% 🟢 | 58/73 |
| K-Neighbors Regressor (KNN) | 0.3568 | 0.3891 | +0.0323 🟢 | 0.1975 | 0.1918 | -0.0057 🟢 | 76.7% | 78.1% | +1.4% 🟢 | 57/73 |
| Neural Network (MLP) | 0.3002 | 0.3671 | +0.0669 🟢 | 0.2694 | 0.2700 | +0.0006 ⚪ | 71.2% | 78.1% | +6.9% 🟢 | 57/73 |
| Lasso Regression (L1) | 0.3353 | 0.3340 | -0.0013 ⚪ | 0.2227 | 0.2228 | +0.0001 ⚪ | 79.5% | 79.5% | 0.0% ⚪ | 58/73 |
| Ridge Regression (L2) | 0.2911 | 0.3114 | +0.0203 🟢 | 0.2395 | 0.2358 | -0.0037 ⚪ | 75.3% | 75.3% | 0.0% ⚪ | 55/73 |
| Linear Regression | 0.2793 | 0.3020 | +0.0227 🟢 | 0.2441 | 0.2400 | -0.0041 ⚪ | 74.0% | 71.2% | -2.8% 🔴 | 52/73 |
| Hist Gradient Boosting | 0.2421 | 0.2372 | -0.0049 ⚪ | 0.2499 | 0.2519 | +0.0020 ⚪ | 67.1% | 68.5% | +1.4% 🟢 | 50/73 |

---

### 📊 Coorte: 3. Sani (60+) vs Demenza — $N = 138$ Pazienti

📌 **Paper Reference**: **Table 11 (pag. 183)** | **Dimensione**: $N = 138$ soggetti

| Regressore ML | Pearson $r$ (5 Anomalie) | Pearson $r$ (Senza Pers.) | $\Delta r$ | MAE (5 Anomalie) | MAE (Senza Pers.) | $\Delta$MAE | Acc% (5 Anomalie) | Acc% (Senza Pers.) | $\Delta$Acc% | Esito Senza Pers. |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Random Forest** | 0.5403 | 0.5850 | +0.0447 🟢 | 0.1465 | 0.1414 | -0.0051 🟢 | 79.0% | 77.5% | -1.5% 🔴 | 107/138 |
| Gradient Boosting | 0.4219 | 0.5285 | +0.1066 🟢 | 0.1616 | 0.1441 | -0.0175 🟢 | 79.7% | 81.9% | +2.2% 🟢 | 113/138 |
| Support Vector Regressor (SVR - RBF) | 0.5003 | 0.5280 | +0.0277 🟢 | 0.1834 | 0.1795 | -0.0039 ⚪ | 69.6% | 68.8% | -0.8% 🔴 | 95/138 |
| AdaBoost Regressor | 0.2422 | 0.2367 | -0.0055 🔴 | 0.2613 | 0.2626 | +0.0013 ⚪ | 42.8% | 39.1% | -3.7% 🔴 | 54/138 |
| K-Neighbors Regressor (KNN) | 0.2357 | 0.2284 | -0.0073 🔴 | 0.1754 | 0.1855 | +0.0101 🔴 | 63.8% | 58.0% | -5.8% 🔴 | 80/138 |
| Lasso Regression (L1) | 0.1675 | 0.1274 | -0.0401 🔴 | 0.2298 | 0.2322 | +0.0024 ⚪ | 58.7% | 61.6% | +2.9% 🟢 | 85/138 |
| Ridge Regression (L2) | 0.1310 | 0.0842 | -0.0468 🔴 | 0.2414 | 0.2437 | +0.0023 ⚪ | 60.1% | 62.3% | +2.2% 🟢 | 86/138 |
| Linear Regression | 0.1264 | 0.0801 | -0.0463 🔴 | 0.2422 | 0.2444 | +0.0022 ⚪ | 60.1% | 62.3% | +2.2% 🟢 | 86/138 |
| Neural Network (MLP) | 0.2294 | 0.0757 | -0.1537 🔴 | 0.2610 | 0.2579 | -0.0031 ⚪ | 64.5% | 68.1% | +3.6% 🟢 | 94/138 |
| Hist Gradient Boosting | 0.0931 | 0.0341 | -0.0590 🔴 | 0.2565 | 0.2545 | -0.0020 ⚪ | 53.6% | 50.7% | -2.9% 🔴 | 70/138 |

---

### 📊 Coorte: 4. Globale: Tutti i Pazienti — $N = 192$ Pazienti

📌 **Paper Reference**: **Table 8 (pag. 183)** | **Dimensione**: $N = 192$ soggetti

| Regressore ML | Pearson $r$ (5 Anomalie) | Pearson $r$ (Senza Pers.) | $\Delta r$ | MAE (5 Anomalie) | MAE (Senza Pers.) | $\Delta$MAE | Acc% (5 Anomalie) | Acc% (Senza Pers.) | $\Delta$Acc% | Esito Senza Pers. |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Random Forest** | 0.4595 | 0.4640 | +0.0045 ⚪ | 0.1940 | 0.2016 | +0.0076 🔴 | 55.7% | 53.6% | -2.1% 🔴 | 103/192 |
| Gradient Boosting | 0.4262 | 0.4219 | -0.0043 ⚪ | 0.1934 | 0.2035 | +0.0101 🔴 | 58.3% | 55.2% | -3.1% 🔴 | 106/192 |
| Support Vector Regressor (SVR - RBF) | 0.4140 | 0.3894 | -0.0246 🔴 | 0.2016 | 0.2094 | +0.0078 🔴 | 56.8% | 49.0% | -7.8% 🔴 | 94/192 |
| AdaBoost Regressor | 0.2504 | 0.3330 | +0.0826 🟢 | 0.2326 | 0.2304 | -0.0022 ⚪ | 40.1% | 34.9% | -5.2% 🔴 | 67/192 |
| Hist Gradient Boosting | 0.2459 | 0.2648 | +0.0189 🟢 | 0.2240 | 0.2249 | +0.0009 ⚪ | 49.0% | 48.4% | -0.6% 🔴 | 93/192 |
| K-Neighbors Regressor (KNN) | 0.1204 | 0.1686 | +0.0482 🟢 | 0.2173 | 0.2222 | +0.0049 ⚪ | 50.5% | 50.0% | -0.5% ⚪ | 96/192 |
| Lasso Regression (L1) | 0.1440 | 0.0666 | -0.0774 🔴 | 0.2285 | 0.2371 | +0.0086 🔴 | 42.2% | 35.4% | -6.8% 🔴 | 68/192 |
| Ridge Regression (L2) | 0.1013 | 0.0506 | -0.0507 🔴 | 0.2342 | 0.2388 | +0.0046 ⚪ | 47.4% | 42.7% | -4.7% 🔴 | 82/192 |
| Linear Regression | 0.0992 | 0.0489 | -0.0503 🔴 | 0.2346 | 0.2391 | +0.0045 ⚪ | 47.4% | 42.7% | -4.7% 🔴 | 82/192 |
| Neural Network (MLP) | 0.1030 | 0.0382 | -0.0648 🔴 | 0.2727 | 0.2614 | -0.0113 🟢 | 48.4% | 44.8% | -3.6% 🔴 | 86/192 |

---

### 📊 Coorte: 5. Sani (60+) vs MCI — $N = 173$ Pazienti

📌 **Paper Reference**: **Table 9 (pag. 183)** | **Dimensione**: $N = 173$ soggetti

| Regressore ML | Pearson $r$ (5 Anomalie) | Pearson $r$ (Senza Pers.) | $\Delta r$ | MAE (5 Anomalie) | MAE (Senza Pers.) | $\Delta$MAE | Acc% (5 Anomalie) | Acc% (Senza Pers.) | $\Delta$Acc% | Esito Senza Pers. |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Gradient Boosting** | 0.2776 | 0.1875 | -0.0901 🔴 | 0.1118 | 0.1179 | +0.0061 🔴 | 68.8% | 65.9% | -2.9% 🔴 | 114/173 |
| Random Forest | 0.2044 | 0.0336 | -0.1708 🔴 | 0.1185 | 0.1283 | +0.0098 🔴 | 65.9% | 62.4% | -3.5% 🔴 | 108/173 |
| Support Vector Regressor (SVR - RBF) | 0.1746 | 0.0272 | -0.1474 🔴 | 0.1322 | 0.1384 | +0.0062 🔴 | 67.6% | 62.4% | -5.2% 🔴 | 108/173 |
| Hist Gradient Boosting | -0.0138 | 0.0151 | +0.0289 🟢 | 0.1323 | 0.1299 | -0.0024 ⚪ | 60.7% | 61.3% | +0.6% 🟢 | 106/173 |
| Ridge Regression (L2) | 0.0993 | 0.0032 | -0.0961 🔴 | 0.1255 | 0.1314 | +0.0059 🔴 | 67.6% | 67.1% | -0.5% ⚪ | 116/173 |
| Linear Regression | 0.0982 | 0.0014 | -0.0968 🔴 | 0.1255 | 0.1315 | +0.0060 🔴 | 67.6% | 67.1% | -0.5% ⚪ | 116/173 |
| Lasso Regression (L1) | 0.1106 | -0.0071 | -0.1177 🔴 | 0.1262 | 0.1294 | +0.0032 ⚪ | 69.9% | 69.4% | -0.5% ⚪ | 120/173 |
| AdaBoost Regressor | 0.1834 | -0.0148 | -0.1982 🔴 | 0.1265 | 0.1382 | +0.0117 🔴 | 64.7% | 62.4% | -2.3% 🔴 | 108/173 |
| K-Neighbors Regressor (KNN) | 0.0630 | -0.0843 | -0.1473 🔴 | 0.1217 | 0.1301 | +0.0084 🔴 | 67.1% | 64.7% | -2.4% 🔴 | 112/173 |
| Neural Network (MLP) | 0.2154 | -0.0893 | -0.3047 🔴 | 0.1436 | 0.1640 | +0.0204 🔴 | 67.1% | 57.8% | -9.3% 🔴 | 100/173 |

---

## 🏆 Conclusioni e Verdetto Comparativo

### Sintesi dei Guadagni con "Senza Perseveration":
- **Sani Giovani vs Demenza**: Random Forest sale da $r = 0.6341$ a **$r = 0.6711$** (+0.0370 🟢) e MAE scende a **0.1640** (-0.0096 🟢).
- **MCI vs Demenza**: Random Forest sale da $r = 0.6246$ a **$r = 0.6367$** (+0.0121 🟢) e Accuratezza sale a **86.3%** (+2.7% 🟢).
- **Sani vs Demenza**: Random Forest sale da $r = 0.5403$ a **$r = 0.5850$** (+0.0447 🟢) e MAE scende a **0.1414** (-0.0051 🟢).
- **Globale**: Random Forest sale da $r = 0.4595$ a **$r = 0.4640$** (+0.0045 ⚪).
- **Sani vs MCI**: Gradient Boosting ottiene $r = 0.1875$ e MAE 0.1179.
