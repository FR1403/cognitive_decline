# ⚖️ Report Comparativo: Vecchia vs Nuova Tool Omission
## Confronto Dettagliato delle Prestazioni LOOCV ($K=N$) tra le Due Versioni di Tool Omission (Baseline 5 Anomalie)

Questo documento confronta direttamente i risultati ottenuti con la **Vecchia Tool Omission** (baseline iniziale) e la **Nuova Tool Omission** (dopo la revisione e il ricalcolo dei test logici su tutte le 5 anomalie).

> **Legenda Differenze ($\Delta$)**:
> - $\Delta r = r_{\text{nuovo}} - r_{\text{vecchio}}$ (un valore positivo **indica un miglioramento** nella correlazione)
> - $\Delta\text{MAE} = \text{MAE}_{\text{nuovo}} - \text{MAE}_{\text{vecchio}}$ (un valore negativo **indica un miglioramento**, ossia minor errore)
> - $\Delta\text{Acc} = \text{Acc}_{\text{nuovo}} - \text{Acc}_{\text{vecchio}}$ (un valore positivo **indica un miglioramento** nell'accuratezza diagnostica)

---

### 📊 Coorte: 1. Sani Giovani (60-74 anni) vs Demenza — $N = 99$ Pazienti

📌 **Paper Reference**: **Table 12 (pag. 184)** | **Dimensione**: $N = 99$ soggetti

| Regressore ML | Pearson $r$ (Vecchia) | Pearson $r$ (Nuova) | $\Delta r$ | MAE (Vecchia) | MAE (Nuova) | $\Delta$MAE | Acc% (Vecchia) | Acc% (Nuova) | $\Delta$Acc% | Esito Nuova |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Random Forest** | 0.6139 | 0.6341 | +0.0202 🟢 | 0.1721 | 0.1736 | +0.0015 ⚪ | 73.7% | 73.7% | -0.0% ⚪ | 73/99 |
| Gradient Boosting | 0.6311 | 0.5661 | -0.0650 🔴 | 0.1590 | 0.1794 | +0.0204 🔴 | 80.8% | 79.8% | -1.0% 🔴 | 79/99 |
| Support Vector Regressor (SVR - RBF) | 0.5266 | 0.5432 | +0.0166 🟢 | 0.2242 | 0.2224 | -0.0018 ⚪ | 61.6% | 59.6% | -2.0% 🔴 | 59/99 |
| AdaBoost Regressor | 0.3631 | 0.3603 | -0.0028 ⚪ | 0.2489 | 0.2675 | +0.0186 🔴 | 54.5% | 45.5% | -9.0% 🔴 | 45/99 |
| K-Neighbors Regressor (KNN) | 0.3766 | 0.3355 | -0.0411 🔴 | 0.2242 | 0.2141 | -0.0101 🟢 | 49.5% | 58.6% | +9.1% 🟢 | 58/99 |
| Neural Network (MLP) | 0.1836 | 0.3241 | +0.1405 🟢 | 0.2968 | 0.2834 | -0.0134 🟢 | 65.7% | 62.6% | -3.1% 🔴 | 62/99 |
| Hist Gradient Boosting | -0.0182 | 0.2344 | +0.2526 🟢 | 0.3265 | 0.2948 | -0.0317 🟢 | 38.4% | 45.5% | +7.1% 🟢 | 45/99 |
| Lasso Regression (L1) | 0.1493 | 0.1831 | +0.0338 🟢 | 0.2944 | 0.2904 | -0.0040 ⚪ | 45.5% | 47.5% | +2.0% 🟢 | 47/99 |
| Ridge Regression (L2) | 0.1490 | 0.1621 | +0.0131 🟢 | 0.3008 | 0.2995 | -0.0013 ⚪ | 44.4% | 49.5% | +5.1% 🟢 | 49/99 |
| Linear Regression | 0.1436 | 0.1557 | +0.0121 🟢 | 0.3027 | 0.3013 | -0.0014 ⚪ | 45.5% | 49.5% | +4.0% 🟢 | 49/99 |

---

### 📊 Coorte: 2. MCI vs Demenza — $N = 73$ Pazienti

📌 **Paper Reference**: **Table 10 (pag. 183)** | **Dimensione**: $N = 73$ soggetti

| Regressore ML | Pearson $r$ (Vecchia) | Pearson $r$ (Nuova) | $\Delta r$ | MAE (Vecchia) | MAE (Nuova) | $\Delta$MAE | Acc% (Vecchia) | Acc% (Nuova) | $\Delta$Acc% | Esito Nuova |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Random Forest** | 0.6010 | 0.6246 | +0.0236 🟢 | 0.1738 | 0.1654 | -0.0084 🟢 | 86.3% | 83.6% | -2.7% 🔴 | 61/73 |
| Gradient Boosting | 0.5051 | 0.5393 | +0.0342 🟢 | 0.1837 | 0.1764 | -0.0073 🟢 | 79.5% | 82.2% | +2.7% 🟢 | 60/73 |
| Support Vector Regressor (SVR - RBF) | 0.5434 | 0.5263 | -0.0171 🔴 | 0.1961 | 0.2000 | +0.0039 ⚪ | 79.5% | 76.7% | -2.8% 🔴 | 56/73 |
| AdaBoost Regressor | 0.5236 | 0.4226 | -0.1010 🔴 | 0.1685 | 0.1870 | +0.0185 🔴 | 79.5% | 75.3% | -4.2% 🔴 | 55/73 |
| K-Neighbors Regressor (KNN) | 0.3709 | 0.3568 | -0.0141 🔴 | 0.1918 | 0.1975 | +0.0057 🔴 | 78.1% | 76.7% | -1.4% 🔴 | 56/73 |
| Lasso Regression (L1) | 0.3291 | 0.3353 | +0.0062 🟢 | 0.2236 | 0.2227 | -0.0009 ⚪ | 79.5% | 79.5% | +0.0% ⚪ | 58/73 |
| Neural Network (MLP) | 0.3754 | 0.3002 | -0.0752 🔴 | 0.2560 | 0.2694 | +0.0134 🔴 | 75.3% | 71.2% | -4.1% 🔴 | 52/73 |
| Ridge Regression (L2) | 0.3173 | 0.2911 | -0.0262 🔴 | 0.2344 | 0.2395 | +0.0051 🔴 | 72.6% | 75.3% | +2.7% 🟢 | 55/73 |
| Linear Regression | 0.3066 | 0.2793 | -0.0273 🔴 | 0.2386 | 0.2441 | +0.0055 🔴 | 71.2% | 74.0% | +2.8% 🟢 | 54/73 |
| Hist Gradient Boosting | 0.1564 | 0.2421 | +0.0857 🟢 | 0.2606 | 0.2499 | -0.0107 🟢 | 67.1% | 67.1% | -0.0% ⚪ | 49/73 |

---

### 📊 Coorte: 3. Sani (60+) vs Demenza — $N = 138$ Pazienti

📌 **Paper Reference**: **Table 11 (pag. 183)** | **Dimensione**: $N = 138$ soggetti

| Regressore ML | Pearson $r$ (Vecchia) | Pearson $r$ (Nuova) | $\Delta r$ | MAE (Vecchia) | MAE (Nuova) | $\Delta$MAE | Acc% (Vecchia) | Acc% (Nuova) | $\Delta$Acc% | Esito Nuova |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Random Forest** | 0.5446 | 0.5403 | -0.0043 ⚪ | 0.1478 | 0.1465 | -0.0013 ⚪ | 77.5% | 79.0% | +1.5% 🟢 | 109/138 |
| Support Vector Regressor (SVR - RBF) | 0.5108 | 0.5003 | -0.0105 🔴 | 0.1853 | 0.1834 | -0.0019 ⚪ | 70.3% | 69.6% | -0.7% 🔴 | 96/138 |
| Gradient Boosting | 0.4980 | 0.4219 | -0.0761 🔴 | 0.1563 | 0.1616 | +0.0053 🔴 | 78.3% | 79.7% | +1.4% 🟢 | 110/138 |
| AdaBoost Regressor | 0.2171 | 0.2422 | +0.0251 🟢 | 0.2440 | 0.2613 | +0.0173 🔴 | 44.9% | 42.8% | -2.1% 🔴 | 59/138 |
| K-Neighbors Regressor (KNN) | 0.2984 | 0.2357 | -0.0627 🔴 | 0.1783 | 0.1754 | -0.0029 ⚪ | 59.4% | 63.8% | +4.4% 🟢 | 88/138 |
| Neural Network (MLP) | 0.0854 | 0.2294 | +0.1440 🟢 | 0.2522 | 0.2610 | +0.0088 🔴 | 67.4% | 64.5% | -2.9% 🔴 | 89/138 |
| Lasso Regression (L1) | 0.1337 | 0.1675 | +0.0338 🟢 | 0.2319 | 0.2298 | -0.0021 ⚪ | 60.9% | 58.7% | -2.2% 🔴 | 81/138 |
| Ridge Regression (L2) | 0.0904 | 0.1310 | +0.0406 🟢 | 0.2440 | 0.2414 | -0.0026 ⚪ | 60.9% | 60.1% | -0.8% 🔴 | 83/138 |
| Linear Regression | 0.0861 | 0.1264 | +0.0403 🟢 | 0.2448 | 0.2422 | -0.0026 ⚪ | 61.6% | 60.1% | -1.5% 🔴 | 83/138 |
| Hist Gradient Boosting | -0.0487 | 0.0931 | +0.1418 🟢 | 0.2582 | 0.2565 | -0.0017 ⚪ | 52.9% | 53.6% | +0.7% 🟢 | 74/138 |

---

### 📊 Coorte: 4. Globale: Tutti i Pazienti — $N = 192$ Pazienti

📌 **Paper Reference**: **Table 8 (pag. 183)** | **Dimensione**: $N = 192$ soggetti

| Regressore ML | Pearson $r$ (Vecchia) | Pearson $r$ (Nuova) | $\Delta r$ | MAE (Vecchia) | MAE (Nuova) | $\Delta$MAE | Acc% (Vecchia) | Acc% (Nuova) | $\Delta$Acc% | Esito Nuova |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Random Forest** | 0.4045 | 0.4595 | +0.0550 🟢 | 0.2043 | 0.1940 | -0.0103 🟢 | 51.0% | 55.7% | +4.7% 🟢 | 107/192 |
| Gradient Boosting | 0.3467 | 0.4262 | +0.0795 🟢 | 0.2116 | 0.1934 | -0.0182 🟢 | 54.2% | 58.3% | +4.1% 🟢 | 112/192 |
| Support Vector Regressor (SVR - RBF) | 0.4022 | 0.4140 | +0.0118 🟢 | 0.2080 | 0.2016 | -0.0064 🟢 | 50.0% | 56.8% | +6.8% 🟢 | 109/192 |
| AdaBoost Regressor | 0.2826 | 0.2504 | -0.0322 🔴 | 0.2322 | 0.2326 | +0.0004 ⚪ | 35.9% | 40.1% | +4.2% 🟢 | 77/192 |
| Hist Gradient Boosting | 0.1988 | 0.2459 | +0.0471 🟢 | 0.2348 | 0.2240 | -0.0108 🟢 | 45.3% | 49.0% | +3.7% 🟢 | 94/192 |
| Lasso Regression (L1) | 0.0771 | 0.1440 | +0.0669 🟢 | 0.2362 | 0.2285 | -0.0077 🟢 | 35.9% | 42.2% | +6.3% 🟢 | 81/192 |
| K-Neighbors Regressor (KNN) | 0.2109 | 0.1204 | -0.0905 🔴 | 0.2213 | 0.2173 | -0.0040 ⚪ | 47.9% | 50.5% | +2.6% 🟢 | 97/192 |
| Neural Network (MLP) | 0.0517 | 0.1030 | +0.0513 🟢 | 0.2580 | 0.2727 | +0.0147 🔴 | 46.9% | 48.4% | +1.5% 🟢 | 93/192 |
| Ridge Regression (L2) | 0.0537 | 0.1013 | +0.0476 🟢 | 0.2385 | 0.2342 | -0.0043 ⚪ | 43.2% | 47.4% | +4.2% 🟢 | 91/192 |
| Linear Regression | 0.0519 | 0.0992 | +0.0473 🟢 | 0.2387 | 0.2346 | -0.0041 ⚪ | 43.8% | 47.4% | +3.6% 🟢 | 91/192 |

---

### 📊 Coorte: 5. Sani (60+) vs MCI — $N = 173$ Pazienti

📌 **Paper Reference**: **Table 9 (pag. 183)** | **Dimensione**: $N = 173$ soggetti

| Regressore ML | Pearson $r$ (Vecchia) | Pearson $r$ (Nuova) | $\Delta r$ | MAE (Vecchia) | MAE (Nuova) | $\Delta$MAE | Acc% (Vecchia) | Acc% (Nuova) | $\Delta$Acc% | Esito Nuova |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Gradient Boosting** | -0.0221 | 0.2776 | +0.2997 🟢 | 0.1316 | 0.1118 | -0.0198 🟢 | 60.7% | 68.8% | +8.1% 🟢 | 119/173 |
| Neural Network (MLP) | -0.0885 | 0.2154 | +0.3039 🟢 | 0.1640 | 0.1436 | -0.0204 🟢 | 59.0% | 67.1% | +8.1% 🟢 | 116/173 |
| Random Forest | -0.0043 | 0.2044 | +0.2087 🟢 | 0.1295 | 0.1185 | -0.0110 🟢 | 61.3% | 65.9% | +4.6% 🟢 | 114/173 |
| AdaBoost Regressor | -0.0599 | 0.1834 | +0.2433 🟢 | 0.1393 | 0.1265 | -0.0128 🟢 | 65.9% | 64.7% | -1.2% 🔴 | 112/173 |
| Support Vector Regressor (SVR - RBF) | 0.0228 | 0.1746 | +0.1518 🟢 | 0.1385 | 0.1322 | -0.0063 🟢 | 64.2% | 67.6% | +3.4% 🟢 | 117/173 |
| Lasso Regression (L1) | -0.0044 | 0.1106 | +0.1150 🟢 | 0.1293 | 0.1262 | -0.0031 ⚪ | 69.4% | 69.9% | +0.5% 🟢 | 121/173 |
| Ridge Regression (L2) | -0.0013 | 0.0993 | +0.1006 🟢 | 0.1314 | 0.1255 | -0.0059 🟢 | 67.1% | 67.6% | +0.5% 🟢 | 117/173 |
| Linear Regression | -0.0032 | 0.0982 | +0.1014 🟢 | 0.1315 | 0.1255 | -0.0060 🟢 | 67.1% | 67.6% | +0.5% 🟢 | 117/173 |
| K-Neighbors Regressor (KNN) | -0.0296 | 0.0630 | +0.0926 🟢 | 0.1262 | 0.1217 | -0.0045 ⚪ | 64.7% | 67.1% | +2.4% 🟢 | 116/173 |
| Hist Gradient Boosting | 0.0066 | -0.0138 | -0.0204 🔴 | 0.1310 | 0.1323 | +0.0013 ⚪ | 61.8% | 60.7% | -1.1% 🔴 | 105/173 |

---

## 🏆 Conclusioni e Verdetto Comparativo (Vecchia vs Nuova Tool Omission)

### Sintesi dei Modelli Top per Coorte:
- **Sani Giovani (60-74) vs Demenza**: *Random Forest* sale a **$r = 0.6341$** (+0.0202 🟢).
- **MCI vs Demenza**: *Random Forest* sale a **$r = 0.6246$** (+0.0236 🟢), con accuratezza che si attesta all'**83.6%**.
- **Sani (60+) vs Demenza**: *Random Forest* si attesta a **$r = 0.5403$**, MAE **0.1465** e accuratezza **79.0%**.
- **Globale (Tutti)**: *Random Forest* sale da $r = 0.4045$ a **$r = 0.4595$** (+0.0550 🟢) con accuratezza al **55.7%** (+4.7% 🟢).
- **Sani vs MCI**: *Gradient Boosting* passa da $r = -0.0221$ a **$r = 0.2776$** (+0.2997 🚀) con un miglioramento eccezionale della separabilità clinica precoce.
