import streamlit as st
import pandas as pd
import numpy as np
import os
import plotly.express as px

# ML dependencies
from sklearn.model_selection import train_test_split, LeaveOneOut, StratifiedKFold
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score
from sklearn.linear_model import LinearRegression, Ridge, Lasso
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor, AdaBoostRegressor, HistGradientBoostingRegressor
from sklearn.svm import SVR
from sklearn.neighbors import KNeighborsRegressor
from sklearn.neural_network import MLPRegressor
from scipy.stats import pearsonr

# Configurazione Pagina Streamlit
st.set_page_config(
    page_title="HealtXAI - Studio Regressori Declino Cognitivo",
    page_icon="🩺",
    layout="wide",
    initial_sidebar_state="expanded"
)

# Custom CSS: Premium Dark Mode, Nessun Header Streamlit, Sincronizzazione Colori
st.markdown("""
<style>
    @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=JetBrains+Mono:wght@500&display=swap');
    
    html { scroll-behavior: smooth; }
    html, body, [class*="css"] { font-family: 'Inter', sans-serif; }

    /* =========================================================
       RIMOZIONE ELEMENTI NATIVI STREAMLIT & SPATIAL SIDEBAR FIX
       ========================================================= */
    .stDeployButton { display: none !important; }
    footer { visibility: hidden; }
    .block-container { padding-top: 1.5rem !important; }

    /* Riduzione spazio vuoto in cima alla Sidebar */
    section[data-testid="stSidebar"] > div:first-child {
        padding-top: 0.5rem !important;
    }
    section[data-testid="stSidebar"] [data-testid="stSidebarUserContent"] {
        padding-top: 0.5rem !important;
    }
    section[data-testid="stSidebar"] .block-container {
        padding-top: 0.5rem !important;
    }
    [data-testid="stSidebarHeader"] {
        padding-top: 0rem !important;
        padding-bottom: 0rem !important;
        height: 0px !important;
    }

    /* =========================================================
       SFONDO PREMIUM & INTESTAZIONI
       ========================================================= */
    /* Sfondo Scuro Profondo con Gradiente Radiale */
    .stApp { 
        background: radial-gradient(ellipse at top, #162238 0%, #0b1120 80%); 
        color: #f1f5f9; 
    }
    
    h1, h2, h3, h4 { color: #f8fafc !important; font-weight: 700; letter-spacing: -0.5px; }

    /* =========================================================
       HEADER + NAVBAR COMPATTI (SINGLE GLASS BLOCK)
       ========================================================= */
    div[data-testid="stElementContainer"]:has(.glass-header) { 
        position: sticky; 
        top: 1rem; 
        z-index: 500; 
        background: transparent;
        padding-top: 0rem; 
        padding-bottom: 0rem; 
        margin-top: 0rem; 
    }
    
    .glass-header {
        background: rgba(30, 41, 59, 0.7); 
        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);
        border-radius: 12px; 
        border: 1px solid rgba(255, 255, 255, 0.08); 
        box-shadow: 0 10px 30px -5px rgba(0, 0, 0, 0.5);
        display: flex;
        flex-direction: column;
        padding: 16px 24px 14px 24px;
        margin-top: 5px;
    }

    .header-text { text-align: center; margin-bottom: 12px; }
    .header-text h1 {
        color: #38bdf8 !important; margin: 0 0 2px 0; font-size: 1.7rem; 
        text-shadow: 0 2px 10px rgba(56, 189, 248, 0.2);
    }
    .header-text p { color: #94a3b8; margin: 0; font-size: 0.9rem; font-weight: 300; }

    /* Navbar senza linea e con bottoni allargati */
    .stepper-container-inner {
        display: flex; justify-content: space-between; width: 100%; gap: 12px; 
        align-items: center; position: relative; padding-top: 12px;
        border-top: 1px solid rgba(255, 255, 255, 0.06); 
    }
    
    .step-item { 
        flex: 1; text-align: center; color: #94a3b8; font-weight: 500; font-size: 0.95rem;
        text-decoration: none !important; padding: 10px 0px; border-radius: 8px; 
        transition: all 0.2s ease; position: relative; z-index: 1;
        background-color: rgba(15, 23, 42, 0.5);
        border: 1px solid rgba(255, 255, 255, 0.05);
    }
    
    .step-item:hover { 
        color: #f8fafc; background: rgba(255, 255, 255, 0.1); border-color: rgba(255, 255, 255, 0.15);
    }

    .step-item:focus, .step-item:active { 
        color: #38bdf8; background: rgba(56, 189, 248, 0.08); 
        border: 1px solid rgba(56, 189, 248, 0.4); 
        box-shadow: 0 4px 12px rgba(56, 189, 248, 0.15); font-weight: 600; outline: none;
    }

    /* Fix scroll offset per l'header compatto */
    div[id^="section-"] { 
        scroll-margin-top: 250px; 
        padding-top: 35px; 
    }

    /* ========================================================= */

    /* Pulsanti Streamlit */
    .stButton > button, .stDownloadButton > button {
        background: linear-gradient(135deg, #0ea5e9 0%, #0284c7 100%);
        color: #ffffff; border: none; border-radius: 8px; font-weight: 600; 
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    }
    .stButton > button:hover, .stDownloadButton > button:hover { 
        transform: translateY(-2px); box-shadow: 0 6px 12px rgba(14, 165, 233, 0.3); color: #ffffff; 
    }

    /* KPI Cards */
    .kpi-card {
        background: rgba(30, 41, 59, 0.6); border-radius: 12px; padding: 18px 22px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); border: 1px solid rgba(255, 255, 255, 0.05); border-top: 4px solid #334155;
        transition: transform 0.2s ease, border-color 0.2s ease;
        height: 135px;
    }
    .kpi-card.accent-blue { border-top-color: #0ea5e9; }
    .kpi-card.accent-purple { border-top-color: #8b5cf6; }
    .kpi-card.accent-green { border-top-color: #10b981; }
    .kpi-card.accent-orange { border-top-color: #f97316; }
    .kpi-title { color: #94a3b8; font-size: 0.8rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.5px;}
    .kpi-value { font-size: 1.85rem; font-weight: 700; margin-top: 2px; color: #f8fafc; font-family: 'JetBrains Mono', monospace; }
    .kpi-subtext { font-size: 0.95rem; color: #94a3b8; font-weight: 500; margin-top: 2px; font-family: 'Inter', sans-serif; }

    /* Schede Pazienti Cliniche */
    .patient-card {
        background: linear-gradient(145deg, rgba(30, 41, 59, 0.6) 0%, rgba(23, 32, 51, 0.6) 100%);
        border-radius: 12px; padding: 22px; color: #cbd5e1 !important; 
        border: 1px solid rgba(255, 255, 255, 0.05); margin-bottom: 12px; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    }
    .patient-card h4 { margin-top: 0; color: #f8fafc !important; border-bottom: 1px solid rgba(255, 255, 255, 0.05); padding-bottom: 10px; margin-bottom: 14px;}
    .patient-card code { background-color: #0b1120 !important; color: #38bdf8 !important; padding: 4px 8px; border-radius: 6px;}
    .patient-card-a { border-top: 4px solid #0ea5e9; }
    .patient-card-b { border-top: 4px solid #8b5cf6; }

    /* Sidebar Dark */
    section[data-testid="stSidebar"] { background-color: #0b1120; border-right: 1px solid rgba(255, 255, 255, 0.05); }
    div[data-baseweb="select"] > div { background-color: #0b1120; border-color: #334155; color: white; border-radius: 8px; }
    .stCheckbox > label, .stToggle > label { color: #cbd5e1; }
    
    /* Legenda Custom (aggiornata senza bordo sinistro) */
    .legend-box {
        background: rgba(30, 41, 59, 0.4); border: 1px solid rgba(255, 255, 255, 0.08); 
        border-radius: 8px; padding: 16px 20px; font-size: 0.9rem; color: #e2e8f0;
    }
    
    /* Nascondi indice DataFrame */
    thead tr th:first-child {display:none}
    tbody th {display:none}
</style>
""", unsafe_allow_html=True)

def converto_in_etichetta(valore):
    if valore < 0.15: return "Sano (0.0)"
    elif valore < 0.65: return "MCI (0.3)"
    else: return "Demenza (1.0)"

DEFAULT_DATASET_PATH = os.path.join(os.path.dirname(__file__), "dataset_regressione.csv")

@st.cache_data(show_spinner=False)
@st.cache_data(show_spinner=False)
def load_and_train_all_models(use_stratify: bool = True, dataset_path=None, selected_anomalies=None, pearson_target_vals=None):
    if dataset_path is None:
        dataset_path = DEFAULT_DATASET_PATH if os.path.exists(DEFAULT_DATASET_PATH) else "dataset_regressione.csv"
    df = pd.read_csv(dataset_path)
    patient_ids = df['patient_id']
    X = df.drop(columns=['patient_id', 'Target_StatoCognitivo'])
    
    if selected_anomalies is not None and len(selected_anomalies) > 0:
        cols_to_keep = []
        for col in X.columns:
            keep = False
            if col == 'N_Attivita_Svolte': keep = True
            elif 'ToolOmission' in col: keep = 'Tool Omission' in selected_anomalies
            elif 'Omission' in col and 'Anticipation' not in col: keep = 'Omission' in selected_anomalies
            elif 'Perseveration' in col: keep = 'Perseveration' in selected_anomalies
            elif 'AnticipationOmission' in col: keep = 'Anticipation Omission' in selected_anomalies
            elif 'Reversal' in col and 'Anticipation' not in col: keep = 'Reversal' in selected_anomalies
            elif 'pacing' == col: keep = 'Pacing' in selected_anomalies
            elif 'sharp_angles' == col: keep = 'Sharp Angles' in selected_anomalies
            elif 'lapping' == col: keep = 'Lapping' in selected_anomalies
            elif 'length' == col: keep = 'Length' in selected_anomalies
            elif 'straightness' == col: keep = 'Straightness' in selected_anomalies
            elif 'jerk' == col: keep = 'Jerk' in selected_anomalies
            elif 'pacing_lapping' == col: keep = ('Pacing' in selected_anomalies or 'Lapping' in selected_anomalies)
            elif 'Totale_Anomalie_Globale' == col or 'Media_Anomalie_Globale' == col or '_#TotaleAnomalie' in col:
                keep = all(k in selected_anomalies for k in ['Omission', 'Perseveration', 'Tool Omission', 'Anticipation Omission', 'Reversal'])
            if keep: cols_to_keep.append(col)
        if len(cols_to_keep) > 0:
            X = X[cols_to_keep]
            
    y = df['Target_StatoCognitivo']
    strat_arg = y if use_stratify else None

    X_train, X_test, y_train, y_test, ids_train, ids_test = train_test_split(
        X, y, patient_ids, test_size=0.2, random_state=42, stratify=strat_arg
    )

    scaler = StandardScaler()
    X_train_scaled = scaler.fit_transform(X_train)
    X_test_scaled = scaler.transform(X_test)

    models = {
        "K-Neighbors Regressor (KNN)": KNeighborsRegressor(n_neighbors=5),
        "Random Forest": RandomForestRegressor(n_estimators=100, random_state=42),
        "Support Vector Regressor (SVR - RBF)": SVR(kernel='rbf', C=1.0),
        "Lasso Regression (L1)": Lasso(alpha=0.01, random_state=42),
        "Ridge Regression (L2)": Ridge(alpha=1.0, random_state=42),
        "Gradient Boosting": GradientBoostingRegressor(n_estimators=100, random_state=42),
        "Hist Gradient Boosting": HistGradientBoostingRegressor(random_state=42),
        "AdaBoost Regressor": AdaBoostRegressor(random_state=42),
        "Linear Regression": LinearRegression(),
        "Neural Network (MLP)": MLPRegressor(hidden_layer_sizes=(64, 32), max_iter=1000, random_state=42)
    }

    trained_details = {}
    metrics_list = []
    feature_importances = {}

    for name, model in models.items():
        model.fit(X_train_scaled, y_train)
        y_pred = model.predict(X_test_scaled)

        mae = mean_absolute_error(y_test, y_pred)
        mse = mean_squared_error(y_test, y_pred)
        r2 = r2_score(y_test, y_pred)

        # Pearson calcolato solo sui pazienti appartenenti alle categorie cognitive selezionate
        if pearson_target_vals is not None and len(pearson_target_vals) > 0:
            p_mask = y_test.isin(pearson_target_vals)
        else:
            p_mask = pd.Series([True] * len(y_test), index=y_test.index)

        if p_mask.sum() >= 2:
            y_test_p = y_test[p_mask].values
            y_pred_p = y_pred[p_mask.values]
            if len(np.unique(y_test_p)) > 1 and len(np.unique(y_pred_p)) > 1:
                try:
                    r_val, p_val = pearsonr(y_test_p, y_pred_p)
                    if np.isnan(r_val): r_val, p_val = 0.0, 1.0
                except Exception:
                    r_val, p_val = 0.0, 1.0
            else:
                r_val, p_val = 0.0, 1.0
        else:
            r_val, p_val = 0.0, 1.0

        cat_reale = [converto_in_etichetta(v) for v in y_test.values]
        cat_predetta = [converto_in_etichetta(v) for v in y_pred]
        esiti = ["OK (CORRETTA)" if r == p else "ERRATA" for r, p in zip(cat_reale, cat_predetta)]
        n_ok = sum(1 for e in esiti if "OK" in e)
        acc = n_ok / len(esiti) * 100

        metrics_list.append({
            "Modello": name,
            "MAE": mae,
            "MSE": mse,
            "R² Score": r2,
            "Pearson r": r_val,
            "P-Value": p_val,
            "Accuratezza": f"{acc:.1f}%",
            "Accuratezza %": acc,
            "Predizioni Corrette": f"{n_ok}/{len(esiti)}"
        })

        details_df = pd.DataFrame({
            'Paziente_ID': ids_test.values,
            'Stato_Reale': y_test.values,
            'Categoria_Reale': cat_reale,
            'Predizione_Regressore': np.round(y_pred, 4),
            'Categoria_Predetta': cat_predetta,
            'Errore_Assoluto': np.round(np.abs(y_test.values - y_pred), 4),
            'Esito': esiti
        })
        trained_details[name] = details_df

        if hasattr(model, "feature_importances_"):
            feature_importances[name] = pd.DataFrame({
                "Feature": X.columns,
                "Importanza": model.feature_importances_
            }).sort_values(by="Importanza", ascending=False)

    summary_df = pd.DataFrame(metrics_list).sort_values(by="MAE", ascending=True)
    return summary_df, trained_details, feature_importances, df, ids_test.values

@st.cache_data(show_spinner=False)
def load_and_eval_kfold(k_splits: int = 192, dataset_path=None, selected_anomalies=None, pearson_target_vals=None):
    if dataset_path is None:
        dataset_path = DEFAULT_DATASET_PATH if os.path.exists(DEFAULT_DATASET_PATH) else "dataset_regressione.csv"
    df = pd.read_csv(dataset_path)
    patient_ids = df['patient_id']
    X = df.drop(columns=['patient_id', 'Target_StatoCognitivo'])

    if selected_anomalies is not None and len(selected_anomalies) > 0:
        cols_to_keep = []
        for col in X.columns:
            keep = False
            if col == 'N_Attivita_Svolte': keep = True
            elif 'ToolOmission' in col: keep = 'Tool Omission' in selected_anomalies
            elif 'Omission' in col and 'Anticipation' not in col: keep = 'Omission' in selected_anomalies
            elif 'Perseveration' in col: keep = 'Perseveration' in selected_anomalies
            elif 'AnticipationOmission' in col: keep = 'Anticipation Omission' in selected_anomalies
            elif 'Reversal' in col and 'Anticipation' not in col: keep = 'Reversal' in selected_anomalies
            elif 'pacing' == col: keep = 'Pacing' in selected_anomalies
            elif 'sharp_angles' == col: keep = 'Sharp Angles' in selected_anomalies
            elif 'lapping' == col: keep = 'Lapping' in selected_anomalies
            elif 'length' == col: keep = 'Length' in selected_anomalies
            elif 'straightness' == col: keep = 'Straightness' in selected_anomalies
            elif 'jerk' == col: keep = 'Jerk' in selected_anomalies
            elif 'pacing_lapping' == col: keep = ('Pacing' in selected_anomalies or 'Lapping' in selected_anomalies)
            elif 'Totale_Anomalie_Globale' == col or 'Media_Anomalie_Globale' == col or '_#TotaleAnomalie' in col:
                keep = all(k in selected_anomalies for k in ['Omission', 'Perseveration', 'Tool Omission', 'Anticipation Omission', 'Reversal'])
            if keep: cols_to_keep.append(col)
        if len(cols_to_keep) > 0:
            X = X[cols_to_keep]

    y = df['Target_StatoCognitivo']
    n_samples = len(df)
    
    if k_splits >= n_samples or k_splits == 192:
        cv_splitter = LeaveOneOut()
    else:
        cv_splitter = StratifiedKFold(n_splits=k_splits, shuffle=True, random_state=42)

    models = {
        "K-Neighbors Regressor (KNN)": KNeighborsRegressor(n_neighbors=5),
        "Random Forest": RandomForestRegressor(n_estimators=100, random_state=42),
        "Support Vector Regressor (SVR - RBF)": SVR(kernel='rbf', C=1.0),
        "Lasso Regression (L1)": Lasso(alpha=0.01, random_state=42),
        "Ridge Regression (L2)": Ridge(alpha=1.0, random_state=42),
        "Gradient Boosting": GradientBoostingRegressor(n_estimators=100, random_state=42),
        "Hist Gradient Boosting": HistGradientBoostingRegressor(random_state=42),
        "AdaBoost Regressor": AdaBoostRegressor(random_state=42),
        "Linear Regression": LinearRegression(),
        "Neural Network (MLP)": MLPRegressor(hidden_layer_sizes=(64, 32), max_iter=1000, random_state=42)
    }

    trained_kfold_details = {}
    metrics_list = []

    for name, model in models.items():
        oof_preds = np.zeros(n_samples)
        splits = cv_splitter.split(X, y.astype(str)) if isinstance(cv_splitter, StratifiedKFold) else cv_splitter.split(X)

        for train_idx, test_idx in splits:
            X_tr, X_te = X.iloc[train_idx], X.iloc[test_idx]
            y_tr = y.iloc[train_idx]
            scaler = StandardScaler()
            X_tr_scaled = scaler.fit_transform(X_tr)
            X_te_scaled = scaler.transform(X_te)
            model.fit(X_tr_scaled, y_tr)
            oof_preds[test_idx] = model.predict(X_te_scaled)

        mae = mean_absolute_error(y, oof_preds)
        mse = mean_squared_error(y, oof_preds)
        r2 = r2_score(y, oof_preds)

        # Calcolo Pearson OOF limitato alle categorie cliniche selezionate
        if pearson_target_vals is not None and len(pearson_target_vals) > 0:
            p_mask = y.isin(pearson_target_vals)
        else:
            p_mask = pd.Series([True] * len(y), index=y.index)

        if p_mask.sum() >= 2:
            y_p = y[p_mask].values
            oof_p = oof_preds[p_mask.values]
            if len(np.unique(y_p)) > 1 and len(np.unique(oof_p)) > 1:
                try:
                    r_val, p_val = pearsonr(y_p, oof_p)
                    if np.isnan(r_val): r_val, p_val = 0.0, 1.0
                except Exception:
                    r_val, p_val = 0.0, 1.0
            else:
                r_val, p_val = 0.0, 1.0
        else:
            r_val, p_val = 0.0, 1.0

        cat_reale = [converto_in_etichetta(v) for v in y.values]
        cat_predetta = [converto_in_etichetta(v) for v in oof_preds]
        esiti = ["OK (CORRETTA)" if r == p else "ERRATA" for r, p in zip(cat_reale, cat_predetta)]
        n_ok = sum(1 for e in esiti if "OK" in e)
        acc = n_ok / len(esiti) * 100

        metrics_list.append({
            "Modello": name,
            "MAE": mae,
            "MSE": mse,
            "R² Score": r2,
            "Pearson r": r_val,
            "P-Value": p_val,
            "Accuratezza": f"{acc:.1f}%",
            "Accuratezza %": acc,
            "Predizioni Corrette": f"{n_ok}/{len(esiti)}"
        })

        details_df = pd.DataFrame({
            'Paziente_ID': patient_ids.values,
            'Stato_Reale': y.values,
            'Categoria_Reale': cat_reale,
            'Predizione_Regressore': np.round(oof_preds, 4),
            'Categoria_Predetta': cat_predetta,
            'Errore_Assoluto': np.round(np.abs(y.values - oof_preds), 4),
            'Esito': esiti
        })
        trained_kfold_details[name] = details_df

    summary_kfold_df = pd.DataFrame(metrics_list).sort_values(by="MAE", ascending=True)
    return summary_kfold_df, trained_kfold_details

# ==========================================
# SIDEBAR CONTROLS 
# ==========================================
st.sidebar.markdown("<h2 style='color:#f8fafc; margin-bottom: 0px;'>💡 HealtXAI</h2>", unsafe_allow_html=True)
st.sidebar.markdown("<p style='color:#94a3b8; font-size: 0.9rem; margin-top: 0px;'>Progetto Tirocinio Declino Cognitivo</p>", unsafe_allow_html=True)
st.sidebar.markdown("---")

# 1. FILTRO GRUPPI CLINICI PER PEARSON (IN ALTO)
st.sidebar.markdown("<p style='color:#cbd5e1; font-weight:600; margin-bottom: 8px;'>🔗 Pearson (r) - Filtro Gruppi Clinici</p>", unsafe_allow_html=True)
pearson_preset = st.sidebar.selectbox(
    "Seleziona Gruppi Pazienti per Pearson:",
    options=["Tutti (Sani + MCI + Demenza)", "Sani vs MCI", "Sani vs Demenza", "MCI vs Demenza", "Personalizzato"],
    index=0
)

if pearson_preset == "Tutti (Sani + MCI + Demenza)":
    pearson_target_vals = (0.0, 0.3, 1.0)
elif pearson_preset == "Sani vs MCI":
    pearson_target_vals = (0.0, 0.3)
elif pearson_preset == "Sani vs Demenza":
    pearson_target_vals = (0.0, 1.0)
elif pearson_preset == "MCI vs Demenza":
    pearson_target_vals = (0.3, 1.0)
else:
    selected_cats = st.sidebar.multiselect(
        "Categorie Cognitive Incluse:",
        options=["Sani (0.0)", "MCI (0.3)", "Demenza (1.0)"],
        default=["Sani (0.0)", "MCI (0.3)", "Demenza (1.0)"]
    )
    t_vals = []
    if "Sani (0.0)" in selected_cats: t_vals.append(0.0)
    if "MCI (0.3)" in selected_cats: t_vals.append(0.3)
    if "Demenza (1.0)" in selected_cats: t_vals.append(1.0)
    pearson_target_vals = tuple(t_vals) if len(t_vals) > 0 else (0.0, 0.3, 1.0)

st.sidebar.markdown("---")

with st.sidebar.form(key="training_options_form"):
    use_stratification = st.checkbox("Usa Divisione Stratificata (Stratify)", value=True)

    st.markdown("<p style='color:#cbd5e1; font-weight:600; margin-bottom: 8px;'>🧬 Features del Modello</p>", unsafe_allow_html=True)
    col_f1, col_f2 = st.columns(2)
    with col_f1:
        use_om = st.toggle("Omission", value=True)
        use_to = st.toggle("Tool Omiss.", value=True)
        use_ao = st.toggle("Anticip. Om.", value=True)
        use_pa = st.toggle("Pacing", value=True)
        use_sa = st.toggle("Sharp Angles", value=True)
        use_la = st.toggle("Lapping", value=True)
    with col_f2:
        use_pe = st.toggle("Perseveration", value=True)
        use_re = st.toggle("Reversal", value=True)
        use_le = st.toggle("Length", value=True)
        use_st = st.toggle("Straightness", value=True)
        use_jk = st.toggle("Jerk", value=True)

    st.markdown("---")
    btn_submit = st.form_submit_button(label="🚀 Sincronizza & Addestra Modello", use_container_width=True)

selected_anomalies = []
if use_om: selected_anomalies.append("Omission")
if use_pe: selected_anomalies.append("Perseveration")
if use_to: selected_anomalies.append("Tool Omission")
if use_ao: selected_anomalies.append("Anticipation Omission")
if use_re: selected_anomalies.append("Reversal")
if use_pa: selected_anomalies.append("Pacing")
if use_sa: selected_anomalies.append("Sharp Angles")
if use_la: selected_anomalies.append("Lapping")
if use_le: selected_anomalies.append("Length")
if use_st: selected_anomalies.append("Straightness")
if use_jk: selected_anomalies.append("Jerk")

# Estrazione DB e Logica Unificata
if btn_submit:
    st.cache_data.clear()
    try:
        from regression_algorithm import create_feature_vectors
        original_cwd = os.getcwd()
        os.chdir(os.path.dirname(os.path.abspath(__file__)))
        
        df_new = create_feature_vectors()
        os.chdir(original_cwd)
        
        if df_new is not None:
            cols_to_keep = []
            for col in df_new.columns:
                keep = False
                if col in ['patient_id', 'Target_StatoCognitivo', 'N_Attivita_Svolte']: keep = True
                elif 'ToolOmission' in col: keep = 'Tool Omission' in selected_anomalies
                elif 'Omission' in col and 'Anticipation' not in col: keep = 'Omission' in selected_anomalies
                elif 'Perseveration' in col: keep = 'Perseveration' in selected_anomalies
                elif 'AnticipationOmission' in col: keep = 'Anticipation Omission' in selected_anomalies
                elif 'Reversal' in col and 'Anticipation' not in col: keep = 'Reversal' in selected_anomalies
                elif 'pacing' == col: keep = 'Pacing' in selected_anomalies
                elif 'sharp_angles' == col: keep = 'Sharp Angles' in selected_anomalies
                elif 'lapping' == col: keep = 'Lapping' in selected_anomalies
                elif 'length' == col: keep = 'Length' in selected_anomalies
                elif 'straightness' == col: keep = 'Straightness' in selected_anomalies
                elif 'jerk' == col: keep = 'Jerk' in selected_anomalies
                elif 'pacing_lapping' == col: keep = ('Pacing' in selected_anomalies or 'Lapping' in selected_anomalies)
                elif 'Totale_Anomalie_Globale' == col or 'Media_Anomalie_Globale' == col:
                    keep = all(k in selected_anomalies for k in ['Omission', 'Perseveration', 'Tool Omission', 'Anticipation Omission', 'Reversal'])
                if keep: cols_to_keep.append(col)
            if len(cols_to_keep) > 0:
                df_new = df_new[cols_to_keep]

            csv_path = os.path.join(os.path.dirname(__file__), 'dataset_regressione.csv')
            df_new.to_csv(csv_path, index=False)
            st.cache_data.clear()
    except Exception:
        pass

    st.session_state['show_sync_success'] = True

if len(selected_anomalies) == 0:
    st.sidebar.error("Selezionare almeno un task comportamentale.")
    st.stop()

# Visualizzazione Messaggi
if st.session_state.get('show_sync_success', False):
    st.sidebar.success("✅ Modelli riaddestrati con le feature selezionate!")
    st.session_state['show_sync_success'] = False

summary_df, trained_details, feature_importances, full_df, test_patient_ids = load_and_train_all_models(
    use_stratify=use_stratification, selected_anomalies=tuple(selected_anomalies), pearson_target_vals=pearson_target_vals
)
sorted_test_patient_ids = sorted(list(test_patient_ids))

# 2. FILTRO MULTI-SELEZIONE PAZIENTI PER ID (IN BASSO)
st.sidebar.markdown("---")
st.sidebar.markdown("<p style='color:#cbd5e1; font-weight:600; margin-bottom: 8px;'>👥 Filtro Pazienti (Multi-Selezione ID)</p>", unsafe_allow_html=True)

selected_patients = st.sidebar.multiselect(
    "Filtra la dashboard per ID Paziente:",
    options=sorted_test_patient_ids, default=[],
    placeholder="Tutti i Pazienti (Seleziona per filtrare...)"
)

effective_patients = selected_patients if len(selected_patients) > 0 else sorted_test_patient_ids

# HEADER & NAVBAR UNIFICATO E COMPATTO
st.markdown("""
<div class="glass-header">
    <div class="header-text">
        <h1>HealtXAI Clinical Pipeline</h1>
        <p>Inferenza diagnostica assistita per il declino cognitivo. Basata su biomarcatori digitali estratti tramite NLP e Computer Vision.</p>
    </div>
    <div class="stepper-container-inner">
        <a href="#section-leaderboard" class="step-item" tabindex="1">Global Metrics</a>
        <a href="#section-dettaglio" class="step-item" tabindex="2">Diagnostics</a>
        <a href="#section-grafici" class="step-item" tabindex="3">Explainable AI</a>
        <a href="#section-kfold" class="step-item" tabindex="4">Validation</a>
    </div>
</div>
""", unsafe_allow_html=True)

# SPAZIATORE INVISIBILE PER IL BANNER
st.markdown("<div style='margin-top: 35px;'></div>", unsafe_allow_html=True)

if use_stratification:
    st.info("ℹ️ **Modalità Stratificata Attiva**: Proporzioni bilanciate tra Training Set (80%) e Test Set (20%).")

# ==========================================
# SEZIONE 1: CLASSIFICA GENERALE MODELLI
# ==========================================
st.markdown('<div id="section-leaderboard"></div>', unsafe_allow_html=True)
st.subheader("Fase 1: Leaderboard Modelli Regressivi")

col_sort, _ = st.columns([2, 2])
with col_sort:
    sort_by = st.radio("Criterio di ottimizzazione:", options=["MAE (Errore Minore)", "R² Score (Maggiore)", "Accuratezza % (Maggiore)"], horizontal=True)

if sort_by == "MAE (Errore Minore)": sorted_summary = summary_df.sort_values(by="MAE", ascending=True)
elif sort_by == "R² Score (Maggiore)": sorted_summary = summary_df.sort_values(by="R² Score", ascending=False)
else: sorted_summary = summary_df.sort_values(by="Accuratezza %", ascending=False)

display_cols = ["Modello", "MAE", "MSE", "R² Score", "Pearson r", "P-Value", "Accuratezza", "Predizioni Corrette"]
col_l1, col_l2 = st.columns([1.5, 1])
with col_l1:
    st.markdown("<p style='color:#cbd5e1; font-weight:600; margin-bottom: 8px;'>🎯 Metriche di Errore e Accuratezza</p>", unsafe_allow_html=True)
    display_cols_err = ["Modello", "MAE", "MSE", "R² Score", "Accuratezza", "Predizioni Corrette"]
    formatted_err = sorted_summary[display_cols_err].style.format({"MAE": "{:.4f}", "MSE": "{:.4f}", "R² Score": "{:.4f}"})
    st.dataframe(formatted_err, use_container_width=True)
with col_l2:
    st.markdown("<p style='color:#cbd5e1; font-weight:600; margin-bottom: 8px;'>🔗 Statistiche di Correlazione</p>", unsafe_allow_html=True)
    display_cols_corr = ["Modello", "Pearson r", "P-Value"]
    formatted_corr = sorted_summary[display_cols_corr].style.format({"Pearson r": "{:.4f}", "P-Value": "{:.4f}"})
    st.dataframe(formatted_corr, use_container_width=True)

# PULSANTE DOWNLOAD CLASSIFICA CSV
csv_summary = sorted_summary.to_csv(index=False).encode('utf-8')
st.download_button(
    label="📥 Scarica Classifica Modelli (CSV)",
    data=csv_summary,
    file_name="classifica_modelli_regressione.csv",
    mime="text/csv",
    key="dl_summary"
)

st.markdown("---")

# ==========================================
# SEZIONE 2: DETTAGLIO MODELLO & PAZIENTI
# ==========================================
st.markdown('<div id="section-dettaglio"></div>', unsafe_allow_html=True)
st.subheader("Fase 2: Analisi Inferenziale dei Pazienti")

col_sel1, col_sel2 = st.columns([2, 1])
with col_sel1: selected_model = st.selectbox("Seleziona Rete per Analisi Profonda:", options=sorted_summary["Modello"].tolist(), index=0)
with col_sel2: filter_esito = st.selectbox("Filtra per Ground Truth:", options=["Tutti", "Solo Corretti (OK)", "Solo Errati", "Sani (0.0)", "MCI (0.3)", "Demenza (1.0)"])

model_row = summary_df[summary_df["Modello"] == selected_model].iloc[0]

# KPI CLINIC DESIGN - BORDERS E CONTEGGIO
kpi1, kpi2, kpi3, kpi4, kpi5 = st.columns(5)
with kpi1: st.markdown(f'<div class="kpi-card accent-blue"><div class="kpi-title">Errore Assoluto (MAE)</div><div class="kpi-value">{model_row["MAE"]:.4f}</div><div class="kpi-subtext" style="opacity:0;">-</div></div>', unsafe_allow_html=True)
with kpi2: st.markdown(f'<div class="kpi-card"><div class="kpi-title">Errore Quadratico (MSE)</div><div class="kpi-value">{model_row["MSE"]:.4f}</div><div class="kpi-subtext" style="opacity:0;">-</div></div>', unsafe_allow_html=True)
with kpi3: st.markdown(f'<div class="kpi-card accent-purple"><div class="kpi-title">R² Variance Score</div><div class="kpi-value">{model_row["R² Score"]:.4f}</div><div class="kpi-subtext" style="opacity:0;">-</div></div>', unsafe_allow_html=True)
with kpi4: st.markdown(f'<div class="kpi-card accent-orange"><div class="kpi-title">Pearson (r)</div><div class="kpi-value">{model_row["Pearson r"]:.4f}</div><div class="kpi-subtext">(p: {model_row["P-Value"]:.4f})</div></div>', unsafe_allow_html=True)
with kpi5: st.markdown(f'<div class="kpi-card accent-green"><div class="kpi-title">Tasso di Accuratezza</div><div class="kpi-value">{model_row["Accuratezza %"]:.1f}%</div><div class="kpi-subtext">({model_row["Predizioni Corrette"]})</div></div>', unsafe_allow_html=True)

st.markdown("<br>", unsafe_allow_html=True)

df_pred = trained_details[selected_model].copy()
if filter_esito == "Solo Corretti (OK)": df_pred = df_pred[df_pred["Esito"] == "OK (CORRETTA)"]
elif filter_esito == "Solo Errati": df_pred = df_pred[df_pred["Esito"] == "ERRATA"]
elif filter_esito == "Sani (0.0)": df_pred = df_pred[df_pred["Categoria_Reale"].str.contains("Sano")]
elif filter_esito == "MCI (0.3)": df_pred = df_pred[df_pred["Categoria_Reale"].str.contains("MCI")]
elif filter_esito == "Demenza (1.0)": df_pred = df_pred[df_pred["Categoria_Reale"].str.contains("Demenza")]

df_pred_filtered = df_pred[df_pred["Paziente_ID"].isin(effective_patients)]

def style_esito_clinic_dark(val):
    if "OK" in str(val): return 'background-color: rgba(16, 185, 129, 0.15); color: #34d399; font-weight: 600;'
    else: return 'background-color: rgba(244, 63, 94, 0.15); color: #fb7185; font-weight: 600;'

styled_df = df_pred_filtered.style.map(style_esito_clinic_dark, subset=['Esito']).format({
    "Stato_Reale": "{:.1f}", "Predizione_Regressore": "{:.4f}", "Errore_Assoluto": "{:.4f}"
})
st.dataframe(styled_df, use_container_width=True, height=380)

# PULSANTE DOWNLOAD DETTAGLIO PAZIENTI CSV
csv_details = df_pred_filtered.to_csv(index=False).encode('utf-8')
st.download_button(
    label=f"📥 Scarica Predizioni - {selected_model} (CSV)",
    data=csv_details,
    file_name=f"predizioni_{selected_model.replace(' ', '_')}.csv",
    mime="text/csv",
    key="dl_details"
)

# ==========================================
# MODULO XAI: CONFRONTO PAZIENTI CON PLOTLY
# ==========================================
st.markdown("<br>", unsafe_allow_html=True)
st.markdown("### Modulo XAI: Discrepanza Profilo Pazienti")

col_p1, col_p2 = st.columns(2)
with col_p1: paziente_a = st.selectbox("Seleziona Paziente [A]:", options=sorted_test_patient_ids, index=0)
with col_p2: paziente_b = st.selectbox("Seleziona Paziente [B]:", options=sorted_test_patient_ids, index=1 if len(sorted_test_patient_ids) > 1 else 0)

if paziente_a and paziente_b:
    row_a = df_pred[df_pred["Paziente_ID"] == paziente_a].iloc[0]
    row_b = df_pred[df_pred["Paziente_ID"] == paziente_b].iloc[0]
    c_ok_a = "#34d399" if "OK" in row_a['Esito'] else "#fb7185"
    c_ok_b = "#34d399" if "OK" in row_b['Esito'] else "#fb7185"

    col_card_a, col_card_b = st.columns(2)
    with col_card_a:
        st.markdown(f"""
        <div class="patient-card patient-card-a">
            <h4>Paziente ID: <span style='color:#38bdf8;'>{paziente_a}</span></h4>
            • <b>Diagnosi Medica (Referto):</b> <code>{row_a['Categoria_Reale']} ({row_a['Stato_Reale']:.1f})</code><br>
            • <b>Stima Algoritmo (Inference):</b> <code>{row_a['Predizione_Regressore']:.4f} ({row_a['Categoria_Predetta']})</code><br>
            • <b>Loss (MAE):</b> <code>{row_a['Errore_Assoluto']:.4f}</code><br>
            • <b>Valutazione Rete:</b> <span style="color: {c_ok_a}; font-weight: bold;">{row_a['Esito']}</span>
        </div>
        """, unsafe_allow_html=True)

    with col_card_b:
        st.markdown(f"""
        <div class="patient-card patient-card-b">
            <h4>Paziente ID: <span style='color:#a78bfa;'>{paziente_b}</span></h4>
            • <b>Diagnosi Medica (Referto):</b> <code>{row_b['Categoria_Reale']} ({row_b['Stato_Reale']:.1f})</code><br>
            • <b>Stima Algoritmo (Inference):</b> <code>{row_b['Predizione_Regressore']:.4f} ({row_b['Categoria_Predetta']})</code><br>
            • <b>Loss (MAE):</b> <code>{row_b['Errore_Assoluto']:.4f}</code><br>
            • <b>Valutazione Rete:</b> <span style="color: {c_ok_b}; font-weight: bold;">{row_b['Esito']}</span>
        </div>
        """, unsafe_allow_html=True)

    df_ab = full_df[full_df["patient_id"].isin([paziente_a, paziente_b])].copy()
    df_ab["Paziente"] = "Paziente ID " + df_ab["patient_id"].astype(str)
    feat_ab = df_ab.set_index("Paziente").drop(columns=["patient_id", "Target_StatoCognitivo"])
    feat_ab_diff = feat_ab.loc[:, (feat_ab != 0).any(axis=0)].copy()

    if not feat_ab_diff.empty:
        feat_ab_diff.columns = [c.replace("Attiv", "Task ").replace("_#", " - ").replace("TotaleAnomalie", "Total Errors") for c in feat_ab_diff.columns]
        df_plot = feat_ab_diff.T.reset_index().melt(id_vars='index', var_name='Paziente', value_name='Errori Commessi')
        df_plot.columns = ['Task Comportamentale', 'Paziente', 'Numero di Errori']
        
        fig = px.bar(df_plot, x='Task Comportamentale', y='Numero di Errori', color='Paziente', barmode='group',
                     color_discrete_sequence=['#0ea5e9', '#8b5cf6'], template='plotly_dark')
        fig.update_layout(
            paper_bgcolor='rgba(0,0,0,0)', plot_bgcolor='rgba(0,0,0,0)',
            font=dict(family="Inter", size=13, color="#cbd5e1"),
            legend=dict(orientation="h", yanchor="bottom", y=1.02, xanchor="right", x=1),
            margin=dict(l=0, r=0, t=30, b=0)
        )
        fig.update_xaxes(showgrid=False, linecolor='#334155')
        fig.update_yaxes(showgrid=True, gridcolor='#1e293b', linecolor='#334155')
        st.plotly_chart(fig, use_container_width=True)

st.markdown("---")

# ==========================================
# SEZIONE 3: GRAFICI COMPARATIVI & XAI
# ==========================================
st.markdown('<div id="section-grafici"></div>', unsafe_allow_html=True)
st.subheader("Fase 3: Analisi Variabili e Explainable AI (XAI)")

tab_cat, tab_sample, tab_feat, tab_pearson = st.tabs([
    "📊 Distribuzione dell'Errore Diagnostico (MAE)", 
    "🔍 Confronto Paziente vs Modello",
    "🔝 Topology: Importanza dei Biomarcatori",
    "🔗 Correlazione Pearson (Feature vs Target)"
])

with tab_cat:
    df_det = trained_details[selected_model]
    mae_sani = df_det[df_det["Stato_Reale"] == 0.0]["Errore_Assoluto"].mean() if not df_det[df_det["Stato_Reale"] == 0.0].empty else 0.0
    mae_mci = df_det[df_det["Stato_Reale"] == 0.3]["Errore_Assoluto"].mean() if not df_det[df_det["Stato_Reale"] == 0.3].empty else 0.0
    mae_demenza = df_det[df_det["Stato_Reale"] == 1.0]["Errore_Assoluto"].mean() if not df_det[df_det["Stato_Reale"] == 1.0].empty else 0.0

    df_mae_cat = pd.DataFrame({"Classe Clinica": ["SANI (0.0)", "MCI (0.3)", "DEMENZA (1.0)"], "Loss (MAE)": [mae_sani, mae_mci, mae_demenza]})
    
    col_cat_chart, col_cat_info = st.columns([2, 1])
    with col_cat_chart:
        fig2 = px.bar(df_mae_cat, x='Classe Clinica', y='Loss (MAE)', color='Classe Clinica',
                      color_discrete_sequence=['#10b981', '#f59e0b', '#f43f5e'], template='plotly_dark')
        fig2.update_layout(
            paper_bgcolor='rgba(0,0,0,0)', plot_bgcolor='rgba(0,0,0,0)',
            font=dict(family="Inter", color="#cbd5e1"), showlegend=False,
            margin=dict(l=0, r=0, t=20, b=0)
        )
        fig2.update_xaxes(showgrid=False, linecolor='#334155')
        fig2.update_yaxes(showgrid=True, gridcolor='#1e293b', linecolor='#334155')
        st.plotly_chart(fig2, use_container_width=True)
        
    with col_cat_info:
        st.markdown("""
        <div class="legend-box" style="margin-top:0;">
            <b>📖 Diagnostica:</b><br><br>
            • <span style="color:#10b981; font-size:1.2rem;">■</span> <b>SANI (0.0):</b> Errore medio su individui sani.<br>
            • <span style="color:#f59e0b; font-size:1.2rem;">■</span> <b>MCI (0.3):</b> Errore medio in scenari di MCI.<br>
            • <span style="color:#f43f5e; font-size:1.2rem;">■</span> <b>DEMENZA (1.0):</b> Errore medio in stato di Demenza.<br><br>
            💡 <i>Minore è il valore MAE, maggiore è l'affidabilità della rete neurale per quella classe.</i>
        </div>
        """, unsafe_allow_html=True)

with tab_sample:
    total_patients_count = len(test_patient_ids)
    num_sample = st.slider("Subset di pazienti nel grafico comparativo:", min_value=5, max_value=total_patients_count, value=total_patients_count, step=1)
    
    df_chart_prep = trained_details[selected_model].head(num_sample).copy()
    df_chart_prep["Paziente"] = "Paz. #" + df_chart_prep["Paziente_ID"].astype(str)
    
    df_compare = df_chart_prep[["Paziente", "Stato_Reale", "Predizione_Regressore"]].melt(id_vars="Paziente", var_name="Misura", value_name="Punteggio")
    df_compare["Misura"] = df_compare["Misura"].replace({"Stato_Reale": "Diagnosi Reale", "Predizione_Regressore": "Predizione Modello"})

    fig_sample = px.bar(df_compare, x="Paziente", y="Punteggio", color="Misura", barmode="group",
                 color_discrete_sequence=['#0ea5e9', '#f97316'], template='plotly_dark')
    fig_sample.update_layout(
        paper_bgcolor='rgba(0,0,0,0)', plot_bgcolor='rgba(0,0,0,0)', font=dict(family="Inter", color="#cbd5e1"),
        legend=dict(orientation="h", yanchor="bottom", y=1.02, xanchor="right", x=1), margin=dict(l=0, r=0, t=30, b=0)
    )
    fig_sample.update_xaxes(showgrid=False, linecolor='#334155')
    fig_sample.update_yaxes(showgrid=True, gridcolor='#1e293b', linecolor='#334155')
    st.plotly_chart(fig_sample, use_container_width=True)

    st.markdown("""
    <div class="legend-box">
        <b>📖 Legenda e Guida alla Lettura del Grafico:</b><br>
        • <span style="color:#0ea5e9; font-size:1.2rem;">■</span> <b>Diagnosi Reale:</b> Valore della diagnosi clinica (<code>0.0</code> Sano, <code>0.3</code> MCI, <code>1.0</code> Demenza).<br>
        • <span style="color:#f97316; font-size:1.2rem;">■</span> <b>Predizione Modello:</b> Punteggio numerico stimato dal regressore.<br>
        • 💡 <b>Perché per alcuni pazienti manca la barra azzurra?</b> I pazienti <b>Sani hanno Diagnosi Reale = 0.0</b>, quindi la loro barra ha altezza pari a zero.
    </div>
    """, unsafe_allow_html=True)

with tab_feat:
    if selected_model in feature_importances:
        feat_df = feature_importances[selected_model].head(12).copy()
        feat_df["Biomarcatore (Anomalia)"] = feat_df["Feature"].apply(lambda x: x.replace("Attiv", "Task ").replace("_#", " - ").replace("TotaleAnomalie", "Totale"))
        feat_df = feat_df.sort_values(by="Importanza", ascending=True) 
        
        col_feat_chart, col_feat_info = st.columns([2, 1])
        
        with col_feat_chart:
            fig3 = px.bar(feat_df, x='Importanza', y='Biomarcatore (Anomalia)', orientation='h',
                          color='Importanza', color_continuous_scale='Tealgrn', template='plotly_dark')
            fig3.update_layout(
                paper_bgcolor='rgba(0,0,0,0)', plot_bgcolor='rgba(0,0,0,0)',
                font=dict(family="Inter", color="#cbd5e1"), coloraxis_showscale=False,
                margin=dict(l=0, r=0, t=10, b=0)
            )
            fig3.update_xaxes(showgrid=True, gridcolor='#1e293b', linecolor='#334155')
            fig3.update_yaxes(showgrid=False, linecolor='#334155')
            st.plotly_chart(fig3, use_container_width=True)
            
        with col_feat_info:
            st.markdown("""
            <div class="legend-box" style="margin-top:0;">
                <b>📖 Analisi d'Impatto (XAI):</b><br><br>
                • <b>Peso Relativo:</b> La lunghezza della barra quantifica matematicamente l'influenza di quel tratto comportamentale sulla predizione finale.<br><br>
                • <b>Insight Clinici:</b> Questo strumento rivela all'operatore <i>"cosa sta guardando l'IA"</i> per emettere la diagnosi.
            </div>
            """, unsafe_allow_html=True)
    else:
        st.info("ℹ️ Il modulo di Feature Importance tramite Shapley Value non è estraibile per le topologie lineari (SVR, Ridge, Lasso, ecc.).")

with tab_pearson:
    st.markdown("#### Analisi Correlazione Pearson tra Biomarcatori e Stato Cognitivo")
    st.markdown(f"ℹ️ **Filtro Categorie Cliniche Attivo per Pearson:** `{pearson_preset}` (Target ∈ `{list(pearson_target_vals)}`)")
    
    X_full = full_df.drop(columns=['patient_id', 'Target_StatoCognitivo'])
    y_full = full_df['Target_StatoCognitivo']
    
    p_mask = y_full.isin(pearson_target_vals)
    df_pearson_subset = full_df[p_mask]
    
    if len(df_pearson_subset) >= 3 and len(df_pearson_subset['Target_StatoCognitivo'].unique()) > 1:
        feat_pearson_results = []
        for col_name in X_full.columns:
            x_vals = df_pearson_subset[col_name]
            y_vals = df_pearson_subset['Target_StatoCognitivo']
            
            if len(x_vals.unique()) > 1:
                try:
                    r_f, p_f = pearsonr(x_vals, y_vals)
                    if np.isnan(r_f): r_f, p_f = 0.0, 1.0
                except Exception:
                    r_f, p_f = 0.0, 1.0
            else:
                r_f, p_f = 0.0, 1.0
                
            feat_pearson_results.append({
                "Biomarcatore (Feature)": col_name,
                "Pearson r": r_f,
                "P-Value": p_f,
                "Significatività": "Stat. Significativo (p < 0.05)" if p_f < 0.05 else "Non Significativo (p ≥ 0.05)"
            })
            
        df_p_results = pd.DataFrame(feat_pearson_results).sort_values(by="Pearson r", key=abs, ascending=False)
        
        col_p_chart, col_p_tbl = st.columns([1.5, 1])
        with col_p_chart:
            fig_p = px.bar(
                df_p_results, x='Pearson r', y='Biomarcatore (Feature)', orientation='h',
                color='Pearson r', color_continuous_scale='Tealgrn', template='plotly_dark'
            )
            fig_p.update_layout(
                paper_bgcolor='rgba(0,0,0,0)', plot_bgcolor='rgba(0,0,0,0)',
                font=dict(family="Inter", color="#cbd5e1"), coloraxis_showscale=False,
                margin=dict(l=0, r=0, t=20, b=0)
            )
            fig_p.update_xaxes(showgrid=True, gridcolor='#1e293b', linecolor='#334155', range=[-1.0, 1.0])
            fig_p.update_yaxes(showgrid=False, linecolor='#334155')
            st.plotly_chart(fig_p, use_container_width=True)
            
        with col_p_tbl:
            st.markdown("<p style='color:#cbd5e1; font-weight:600; margin-bottom: 8px;'>📋 Coefficienti di Pearson per Feature</p>", unsafe_allow_html=True)
            st.dataframe(df_p_results.style.format({"Pearson r": "{:.4f}", "P-Value": "{:.4f}"}), use_container_width=True)
    else:
        st.warning("⚠️ Impossibile calcolare la correlazione di Pearson su questo sottoinsieme (richiede almeno 2 valori target differenti e 3 pazienti).")

# ==========================================
# SEZIONE 4: K-FOLD
# ==========================================
st.markdown("---")
st.markdown('<div id="section-kfold"></div>', unsafe_allow_html=True)
st.subheader("Fase 4: Stress-Test e Validazione Crociata (K-Fold)")

col_k1, col_k2 = st.columns([1, 2], vertical_alignment="bottom")
with col_k1:
    k_choice = st.selectbox(
        "Topologia di Validazione:",
        options=["Leave-One-Out (K=192)", "10-Fold (K=10)", "5-Fold (K=5)", "K Personalizzato"],
        index=0
    )
    if "192" in k_choice: selected_k = 192
    elif "10" in k_choice: selected_k = 10
    elif "5" in k_choice: selected_k = 5
    else: selected_k = st.number_input("Inserisci il valore di K:", min_value=2, max_value=192, value=192, step=1)
    
    start_cv_button = st.button("ESEGUI PROTOCOLLO O.O.F.", type="primary", use_container_width=True)

with col_k2:
    st.markdown("""
    <div class="legend-box" style="margin: 0 0 24px 0;">
        <span style="color:#38bdf8; font-weight:bold;">Metodologia Out-Of-Fold (OOF):</span> Il test validativo cicla l'intero database di validazione, impedendo l'overfitting del modello su split isolati e restituendo un <i>Accuracy Rate</i> generalizzabile.
    </div>
    """, unsafe_allow_html=True)

if start_cv_button:
    st.session_state["kfold_executed_k"] = selected_k

if "kfold_executed_k" in st.session_state:
    active_k = st.session_state["kfold_executed_k"]
    with st.spinner(f"Compilazione K-Fold ({active_k} cicli) in corso..."):
        summary_kfold_df, trained_kfold_details = load_and_eval_kfold(
            k_splits=active_k, selected_anomalies=tuple(selected_anomalies), pearson_target_vals=pearson_target_vals
        )

    st.success(f"Protocollo di validazione (K={active_k}) concluso e verificato.")
    
    col_sort_k, _ = st.columns([2, 2])
    with col_sort_k:
        sort_by_k = st.radio("Criterio di ottimizzazione K-Fold:", options=["MAE (Errore Minore)", "R² Score (Maggiore)", "Accuratezza % (Maggiore)"], horizontal=True, key="sort_kfold")
        
    if sort_by_k == "MAE (Errore Minore)": sorted_summary_kfold = summary_kfold_df.sort_values(by="MAE", ascending=True)
    elif sort_by_k == "R² Score (Maggiore)": sorted_summary_kfold = summary_kfold_df.sort_values(by="R² Score", ascending=False)
    else: sorted_summary_kfold = summary_kfold_df.sort_values(by="Accuratezza %", ascending=False)

    col_kfold_1, col_kfold_2 = st.columns([1.5, 1])
    with col_kfold_1:
        st.markdown("<p style='color:#cbd5e1; font-weight:600; margin-bottom: 8px;'>🎯 Metriche di Errore e Accuratezza (OOF)</p>", unsafe_allow_html=True)
        st.dataframe(sorted_summary_kfold[display_cols_err].style.format({"MAE": "{:.4f}", "MSE": "{:.4f}", "R² Score": "{:.4f}"}), use_container_width=True)
    with col_kfold_2:
        st.markdown("<p style='color:#cbd5e1; font-weight:600; margin-bottom: 8px;'>🔗 Statistiche di Correlazione (OOF)</p>", unsafe_allow_html=True)
        st.dataframe(sorted_summary_kfold[display_cols_corr].style.format({"Pearson r": "{:.4f}", "P-Value": "{:.4f}"}), use_container_width=True)
    
    # PULSANTE DOWNLOAD K-FOLD CSV
    csv_kfold_summary = sorted_summary_kfold.to_csv(index=False).encode('utf-8')
    st.download_button(
        label="📥 Scarica Classifica K-Fold (CSV)",
        data=csv_kfold_summary,
        file_name=f"classifica_kfold_K{active_k}.csv",
        mime="text/csv",
        key="dl_kfold_summary"
    )
    
    st.markdown("<br>", unsafe_allow_html=True)
    st.markdown("#### 🔎 Report Predizioni O.O.F. per Paziente")
    
    selected_k_model = st.selectbox("Seleziona Rete (OOF):", options=list(sorted_summary_kfold["Modello"]), key="kfold_model_select")
    
    kfold_model_row = summary_kfold_df[summary_kfold_df["Modello"] == selected_k_model].iloc[0]
    
    kpi1_k, kpi2_k, kpi3_k, kpi4_k, kpi5_k = st.columns(5)
    with kpi1_k: st.markdown(f'<div class="kpi-card accent-blue"><div class="kpi-title">Errore Assoluto (MAE)</div><div class="kpi-value">{kfold_model_row["MAE"]:.4f}</div><div class="kpi-subtext" style="opacity:0;">-</div></div>', unsafe_allow_html=True)
    with kpi2_k: st.markdown(f'<div class="kpi-card"><div class="kpi-title">Errore Quadratico (MSE)</div><div class="kpi-value">{kfold_model_row["MSE"]:.4f}</div><div class="kpi-subtext" style="opacity:0;">-</div></div>', unsafe_allow_html=True)
    with kpi3_k: st.markdown(f'<div class="kpi-card accent-purple"><div class="kpi-title">R² Variance Score</div><div class="kpi-value">{kfold_model_row["R² Score"]:.4f}</div><div class="kpi-subtext" style="opacity:0;">-</div></div>', unsafe_allow_html=True)
    with kpi4_k: st.markdown(f'<div class="kpi-card accent-orange"><div class="kpi-title">Pearson (r)</div><div class="kpi-value">{kfold_model_row["Pearson r"]:.4f}</div><div class="kpi-subtext">(p: {kfold_model_row["P-Value"]:.4f})</div></div>', unsafe_allow_html=True)
    with kpi5_k: st.markdown(f'<div class="kpi-card accent-green"><div class="kpi-title">Tasso di Accuratezza</div><div class="kpi-value">{kfold_model_row["Accuratezza %"]:.1f}%</div><div class="kpi-subtext">({kfold_model_row["Predizioni Corrette"]})</div></div>', unsafe_allow_html=True)

    st.markdown("<br>", unsafe_allow_html=True)
    
    kf_det = trained_kfold_details[selected_k_model].copy()
    styled_kf_df = kf_det.style.map(style_esito_clinic_dark, subset=['Esito']).format({
        "Stato_Reale": "{:.1f}", "Predizione_Regressore": "{:.4f}", "Errore_Assoluto": "{:.4f}"
    })
    st.dataframe(styled_kf_df, use_container_width=True, height=420)
    
    # PULSANTE DOWNLOAD DETTAGLIO PAZIENTI OOF CSV
    csv_kf_details = kf_det.to_csv(index=False).encode('utf-8')
    st.download_button(
        label=f"📥 Scarica Dati O.O.F. - {selected_k_model} (CSV)",
        data=csv_kf_details,
        file_name=f"predizioni_oof_{selected_k_model.replace(' ', '_')}_K{active_k}.csv",
        mime="text/csv",
        key="dl_kf_details"
    )       