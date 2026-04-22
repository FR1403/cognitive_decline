# Cognitive Decline: Progetto di Anomaly Detection

Questo progetto automatizza la generazione in logica Answer Set Programming (ASP) per individuare anomalie in delle attività svolte dai pazienti all'interno di un dataset domotico (CASAS). Il sistema interroga un database PostgreSQL, modella attività ed esecuzioni e utilizza il solver Clingo per rilevare anomalie.

## Funzionalità

1. Estrazione e Pulizia Dati
Lo script principale esegue tre query fondamentali sul database:
    - Recupera le definizioni delle attività e i relativi task associati.
    - Recupera l'elenco dei pazienti.
    - Verifica quali task sono stati effettivamente eseguiti da ogni paziente per una specifica attività.
2. Generazione del Modello Logico (ASP)
Per ogni combinazione paziente-attività, viene generato un file .lp nella cartella test_creati_clingo. Il file è strutturato su tre livelli:
    - Livello A (Activity model): definisce i fatti atomici activity(A). , action(X). e la relazione gerarchica part_of(Y, X).
    - Livello B (Execution Observation): definisce l'istanza specifica dell'attività (instance(i1, activity).) e i task effettivamente rilevati (performed(i1, task).)
    - Livello C (Anomaly Detenction): contiene la regola logica per l'omissione 
3. Analisi Automatica con Clingo
Una volta creati i file, lo script:
    1. Scansiona la cartella dei test creati prima in output
    2. Invoca il solver Clingo su ogni file.
    3. Cattura l'output del terminale, estrae i predicati omission/2 e stampa a video le anomalie riscontrate per ogni paziente 

## Omission Analysis

