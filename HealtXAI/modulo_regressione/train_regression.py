import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split, KFold, LeaveOneOut, StratifiedKFold
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score

# Modelli di Regressione
from sklearn.linear_model import LinearRegression, Ridge, Lasso, ElasticNet, BayesianRidge
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor, AdaBoostRegressor, HistGradientBoostingRegressor
from sklearn.svm import SVR
from sklearn.neighbors import KNeighborsRegressor
from sklearn.tree import DecisionTreeRegressor
from sklearn.neural_network import MLPRegressor

def converto_in_etichetta(valore):
    """Mappa il valore continuo di regressione nella categoria teorica più vicina."""
    if valore < 0.15:
        return "Sano (0.0)"
    elif valore < 0.65:
        return "MCI (0.3)"
    else:
        return "Demenza (1.0)"

def train_and_evaluate_models(dataset_path, use_cv=True, k=192):
    """
    Addestra e valuta i modelli di regressione.
    Se use_cv=True, effettua K-Fold Cross-Validation (o LOOCV se k >= N o k == 192).
    Se use_cv=False, effettua il classico Train/Test split 80/20.
    """
    print(f"--- 1. CARICAMENTO DATASET ({dataset_path}) ---")
    df = pd.read_csv(dataset_path)
    
    patient_ids = df['patient_id']
    X = df.drop(columns=['patient_id', 'Target_StatoCognitivo'])
    y = df['Target_StatoCognitivo']

    n_samples = len(df)
    print(f"Campioni Totali: {n_samples} pazienti | Feature Estratte: {X.shape[1]}\n")

    models = {
        "K-Neighbors Regressor (KNN)": KNeighborsRegressor(n_neighbors=5),
        "Support Vector Regressor (SVR - RBF)": SVR(kernel='rbf', C=1.0),
        "Random Forest": RandomForestRegressor(n_estimators=100, random_state=42),
        "Lasso Regression (L1)": Lasso(alpha=0.01, random_state=42),
        "Linear Regression": LinearRegression()
    }

    results = []
    trained_oof_preds = {}

    if use_cv:
        # Gestione K-Fold vs Leave-One-Out (LOOCV)
        if k >= n_samples or k == 192:
            print(f"--- 2. ESECUZIONE LEAVE-ONE-OUT CROSS-VALIDATION (LOOCV, K={n_samples}) ---")
            cv_splitter = LeaveOneOut()
        else:
            print(f"--- 2. ESECUZIONE STRATIFIED K-FOLD CROSS-VALIDATION (K={k}) ---")
            # Stratificazione basata sui valori discreti di y
            cv_splitter = StratifiedKFold(n_splits=k, shuffle=True, random_state=42)

        for name, model in models.items():
            oof_preds = np.zeros(n_samples)
            
            # Se cv_splitter è StratifiedKFold richiede y per lo split, altrimenti LeaveOneOut si applica su X
            splits = cv_splitter.split(X, y.astype(str)) if isinstance(cv_splitter, StratifiedKFold) else cv_splitter.split(X)

            for train_idx, test_idx in splits:
                X_tr, X_te = X.iloc[train_idx], X.iloc[test_idx]
                y_tr = y.iloc[train_idx]
                
                # Normalizzazione separata per evitare Data Leakage
                scaler = StandardScaler()
                X_tr_scaled = scaler.fit_transform(X_tr)
                X_te_scaled = scaler.transform(X_te)
                
                model.fit(X_tr_scaled, y_tr)
                oof_preds[test_idx] = model.predict(X_te_scaled)

            mse = mean_squared_error(y, oof_preds)
            mae = mean_absolute_error(y, oof_preds)
            r2 = r2_score(y, oof_preds)

            cat_reale = [converto_in_etichetta(v) for v in y.values]
            cat_predetta = [converto_in_etichetta(v) for v in oof_preds]
            esito = ["OK (CORRETTA)" if r == p else "ERRATA" for r, p in zip(cat_reale, cat_predetta)]
            acc = sum(1 for e in esito if "OK" in e) / len(esito) * 100

            results.append({
                'Modello': name,
                'MAE (Errore Medio)': mae,
                'MSE': mse,
                'R2 Score': r2,
                'Accuratezza %': acc
            })
            trained_oof_preds[name] = oof_preds

        results_df = pd.DataFrame(results).sort_values(by='MAE (Errore Medio)', ascending=True)
        print(results_df.to_string(index=False, float_format=lambda x: f"{x:.4f}"))
        print("\n" + "="*90)

        best_model_name = results_df.iloc[0]['Modello']
        best_y_pred = trained_oof_preds[best_model_name]
        ids_eval = patient_ids
        y_eval = y

    else:
        print("--- 2. ADDESTRAMENTO CON TRAIN/TEST SPLIT (80/20) ---")
        X_train, X_test, y_train, y_test, ids_train, ids_test = train_test_split(
            X, y, patient_ids, test_size=0.2, random_state=42, stratify=y
        )

        scaler = StandardScaler()
        X_train_scaled = scaler.fit_transform(X_train)
        X_test_scaled = scaler.transform(X_test)

        for name, model in models.items():
            model.fit(X_train_scaled, y_train)
            y_pred = model.predict(X_test_scaled)
            
            mse = mean_squared_error(y_test, y_pred)
            mae = mean_absolute_error(y_test, y_pred)
            r2 = r2_score(y_test, y_pred)

            cat_reale = [converto_in_etichetta(v) for v in y_test.values]
            cat_predetta = [converto_in_etichetta(v) for v in y_pred]
            esito = ["OK (CORRETTA)" if r == p else "ERRATA" for r, p in zip(cat_reale, cat_predetta)]
            acc = sum(1 for e in esito if "OK" in e) / len(esito) * 100
            
            results.append({
                'Modello': name, 
                'MAE (Errore Medio)': mae, 
                'MSE': mse, 
                'R2 Score': r2,
                'Accuratezza %': acc
            })
            trained_oof_preds[name] = y_pred

        results_df = pd.DataFrame(results).sort_values(by='MAE (Errore Medio)', ascending=True)
        print(results_df.to_string(index=False, float_format=lambda x: f"{x:.4f}"))
        print("\n" + "="*90)

        best_model_name = results_df.iloc[0]['Modello']
        best_y_pred = trained_oof_preds[best_model_name]
        ids_eval = ids_test
        y_eval = y_test

    # 3. DETTAGLIO PREDIZIONI PAZIENTE PER PAZIENTE
    print(f"\n--- 3. DETTAGLIO PREDIZIONI PAZIENTE PER PAZIENTE (MODELLO MIGLIORE: {best_model_name}) ---")
    
    cat_reale = [converto_in_etichetta(v) for v in y_eval.values]
    cat_predetta = [converto_in_etichetta(v) for v in best_y_pred]
    esito = ["OK (CORRETTA)" if r == p else "ERRATA" for r, p in zip(cat_reale, cat_predetta)]

    test_details = pd.DataFrame({
        'Paziente_ID': ids_eval.values,
        'Stato_Reale': y_eval.values,
        'Categoria_Reale': cat_reale,
        'Predizione_Regressore': np.round(best_y_pred, 4),
        'Categoria_Predetta': cat_predetta,
        'Errore_Assoluto': np.round(np.abs(y_eval.values - best_y_pred), 4),
        'Esito_Predizione': esito
    })

    pd.set_option('display.max_rows', None)
    pd.set_option('display.width', 1000)
    print(test_details.to_string(index=False))
    
    corrette = sum(1 for e in esito if "OK" in e)
    totali = len(esito)
    print(f"\nPredizioni Categoriali Corrette: {corrette} su {totali} ({corrette/totali*100:.1f}%)")

    # 4. ERRORE DIVISO PER GRUPPO DIAGNOSTICO
    print("\n" + "="*90)
    print("--- 4. ERRORE MEDIO DIVISO PER CATEGORIA COGNITIVA ---")
    print("="*90)
    
    gruppo_sani = test_details[test_details['Stato_Reale'] == 0.0]
    gruppo_mci = test_details[test_details['Stato_Reale'] == 0.3]
    gruppo_demenza = test_details[test_details['Stato_Reale'] == 1.0]

    print(f"Pazienti SANI (0.0)   -> N°: {len(gruppo_sani)} | Errore Medio (MAE): {gruppo_sani['Errore_Assoluto'].mean():.4f}")
    print(f"Pazienti MCI (0.3)    -> N°: {len(gruppo_mci)} | Errore Medio (MAE): {gruppo_mci['Errore_Assoluto'].mean():.4f}")
    print(f"Pazienti DEMENZA (1.0)-> N°: {len(gruppo_demenza)} | Errore Medio (MAE): {gruppo_demenza['Errore_Assoluto'].mean():.4f}")
    print("="*90 + "\n")

if __name__ == "__main__":
    import os
    dataset_file = os.path.join(os.path.dirname(__file__), "dataset_regressione.csv")
    if not os.path.exists(dataset_file):
        dataset_file = "dataset_regressione.csv"
    train_and_evaluate_models(dataset_file, use_cv=True, k=192)

