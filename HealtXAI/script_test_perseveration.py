from utils.util_functions import *
import glob
import re
import os
import sys

# Importazione di funzioni helper per accesso al database e scrittura file 
from utils.util_functions import *

# Configurazione della cartella di output per i file Logic Programming (.lp)
output_dir = "test_perseveration_creati_clingo"
os.makedirs(output_dir, exist_ok=True)

# Query per ottenere la gerarchia attività -> tasks (azioni) dal database 
query_activities_actions = """SELECT aty.activity_id, aty.description AS activity_description, tt.task_id, tt.description AS task_description FROM activity_types AS aty
JOIN task_types AS tt ON tt.activity_id = aty.activity_id"""

# Query per ottenere l'elenco dei pazienti
query_patients = '''SELECT patient_id FROM patients'''

query_add_column = '''ALTER TABLE tracked_anomalies
ADD perseveration_number SMALLINT;'''

print("Aggiunta della colonna in corso...")
insert_data(query_add_column)

# Recupero dei dati delle attività e relative azioni dal database e dei pazienti con la funzione take_data
activities = take_data(query_activities_actions)
patients = take_data(query_patients)


# Inizializzazioni strutture dati per la manipolazione dei risultati
patients_list = [] 
activity_list = {} # Mappa: {attività_pulita: [lista_task_puliti]} con puliti si intende la sintassi dei test
activity_list_not_clean = [] # Lista descrizioni originali delle attività
task_mapping = {} # Mappa: {task_pulito: task_originale_db} per query sucessive
info_patient_list = {} # Mappa: {paziente: [attività_svolte]}
tasks_performed_list = {} # Mappa: {paziente: [task_effettivamente_eseguiti]} (performed)
patient_anomalies = {}
tests = []

# Popolamento lista ID pazienti
for i in range(len(patients)) :
    patients_list.append((patients[i])["patient_id"])

# --- ELABORAZIONE E PULIZIA DATI PER CLINGO ---
# Clingo richiede nomi minuscoli e senza spazi (costanti simboliche)
# estrapoliamo dai risultati della query le informazioni sulle attività che ci servono 
# e popoliamo un dizionario in cui abbiamo come 'keys' le attività e come 'item' una lista di azioni
for i in range(len(activities)) :

    #salviamo le descrizioni delle attività esattamente come sono scritte nel database
    activity_not_clean = str((activities[i])["activity_description"])
    activity = activity_not_clean.replace(' ', '_') # rimpiazziamo spazi con underscore per adeguare alla sintassi di clingo
    # di ogni attività ci salviamo la descrizione in minuscolo, eliminando caratteri di punteggiatura
    activity = re.sub(r'[^\w]+', '', (activity.lower()))


    # salviamo il task dell'attività i-esima esattamente com'è scritto nel database 
    task_not_clean = str((activities[i])["task_description"])
    
    task = task_not_clean.replace(' ', '_') #rimpiazziamo spazi con underscore per la sintassi di clingo
    # di ogni azione salviamo la descrizione in minuscolo rimuovendo caratteri di punteggiatura 
    task = re.sub(r'[^\w]+', '', (task.lower()))

    
    # Collega il nome pulito a quello originale in un dizionario 
    task_mapping[task] = task_not_clean

    # se un'attività non è presente nel dizionario viene aggiunta con associata una lista inizializzata (vuota)
    if activity not in activity_list :
        activity_list[activity] = []
        activity_list_not_clean.append(activity_not_clean)

    # se un task non è presente nel dizionario associato alla sua attività viene aggiunto alla lista relativa all'attività di cui fa parte  
    if task not in activity_list[activity] :
        activity_list[activity].append(task)
            

for i in range(len(patients)):
    for j in range(len(activity_list_not_clean)):
        patient = patients_list[i]
        description = activity_list_not_clean[j].replace("'", "''")
        
        query = f'''select description from activities 
            join activity_types
            on activity_type=activity_id
            where patient = {patient}
            and description = '{description}' '''

        info_patient = take_data(query)

        if info_patient != None and info_patient != []:
            if patient not in info_patient_list :
                info_patient_list[patient] = []
            single_info = (info_patient[0])["description"]
            (info_patient_list[patient]).append(single_info)


for patient in info_patient_list:
    cont = 1 
    for activity in info_patient_list[patient]:
        file_name = f"patient_{patient}_activity_{cont}.lp"
        file_path = os.path.join(output_dir, file_name)

        patient_activity = f'''% ======================================================================\n% Paziente {patient}\n% Attività: {activity}\n% ======================================================================\n'''
        write_file(file_path, patient_activity, "w")
        write_file(file_path, livello_A, "a")

        activity_patient = activity
        activity_patient = activity_patient.replace(' ', '_')
        activity_patient = re.sub(r'[^\w]+', '', (activity_patient.lower()))

        write_file(file_path, f"activity({activity_patient}).", "a")
        write_file(file_path, "", "a")
        cont += 1

        for task_fact in activity_list[activity_patient]:
            # 1. Recuperiamo il nome originale corretto per la query SQL
            task_description = task_mapping[task_fact].replace("'", "''")

            query_actions_performed = f'''select t.description from task_types as t
            join tasks
            on activity_id = activity
            and task_id=task
            and patient = {patient}
            where description = '{task_description}' '''

            task_performed = take_data(query_actions_performed)
            if task_performed: # Equivalente a != None and != []
                if patient not in tasks_performed_list:
                    tasks_performed_list[patient] = []

                # SALVIAMO LA VERSIONE PULITA, NON QUELLA SPORCA!
                tasks_performed_list[patient].append(task_fact)
            
            # 3. Scriviamo il fatto action()
            task_aspettato = f"action({task_fact})."
            write_file(file_path, task_aspettato, "a")

        write_file(file_path, "", "a")
        
        # --- ACTION TYPES ---
        for task_fact in activity_list[activity_patient]:

            task_description = task_mapping[task_fact].replace("'", "''")

            query_action_type = f'''SELECT action_id FROM action_types
            JOIN task_types ON action_type = action_id 
            WHERE description = '{task_description}' '''

            action_type = take_data(query_action_type)
            action_type_id = (action_type[0])["action_id"]

            # action_type(activity, task, action_type)
            action_type = f"action_type({activity_patient}, {task_fact}, {action_type_id})."
            write_file(file_path, action_type, "a")
        
        write_file(file_path, "", "a")

        # --- EXPECTED COUNT ---
        for task_fact in activity_list[activity_patient]:

            expected_count = f"expected_count({activity_patient}, {task_fact}, 1)."

            write_file(file_path, expected_count, "a")

        write_file(file_path, "", "a")


        # --- ACTION GAP ---
        for task_fact in activity_list[activity_patient]: 

            task_description = task_mapping[task_fact].replace("'", "''")

            query_action_type = f'''SELECT action_id FROM action_types
            JOIN task_types ON action_type = action_id 
            WHERE description = '{task_description}' '''

            action_type = take_data(query_action_type)
            action_type_id = (action_type[0])["action_id"]
            
            if action_type_id in (5,6,7,8,9,11):
                gap = 240000
            else:
                gap = 18000

            action_gap = f"action_gap({activity_patient}, {task_fact}, {gap})."

            write_file(file_path, action_gap, "a")
        
        write_file(file_path, "", "a")

        # ---- LIVELLO B: ESTRAZIONE OSSERVAZIONI RAW ----

        write_file(file_path, livello_B, "a")

        inst_value = f"i_p{patient}_a{cont}"
        
        instance = f"instance({inst_value}, {activity_patient}).\n"

        write_file(file_path, instance, "a")

        query_raw_performed = f'''select
            t.patient,
            t.activity,
            t.task,
            tt.description,
            row_number() over (
                order by t.time::time, t.task
            ) as obs_order,
            (
                extract(hour from t.time::time) * 3600000 +
                extract(minute from t.time::time) * 60000 +
                floor(extract(second from t.time::time) * 1000)
            )::bigint as time_ms
            from tasks t
            join task_types tt
            on tt.activity_id = t.activity
            and tt.task_id = t.task
            where t.patient = {patient}
            and t.activity = {cont}
            order by t.time::time, t.task;'''

        raw_data = take_data(query_raw_performed)
        
        if raw_data:
            write_file(file_path, '% raw_performed(Instance, Action, Order, TimeMs)\n', "a")
            for row in raw_data:

                task_description = row["description"].replace(" ", "_")
                task_description = re.sub(r'[^\w]+', '', (task_description.lower()))

                order = row["obs_order"]

                time_ms = row["time_ms"]

                raw_performed = f"raw_performed({inst_value}, {task_description}, {order}, {time_ms})."

                write_file(file_path, raw_performed, "a")

        write_file(file_path, "", "a")

        rules = '''prev_same(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    T1 < T2,
    not between_same_time(I,X,T1,T2).

between_same_time(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    raw_performed(I,X,_,Tm),
    T1 < Tm,
    Tm < T2.

episode_start(I,X,T) :-
    raw_performed(I,X,_,T),
    not prev_same(I,X,_,T).

episode_start(I,X,T2) :-
    prev_same(I,X,T1,T2),
    instance(I,A),
    action_gap(A,X,G),
    T2 - T1 > G.

performed(I,X,Tstart) :-
    episode_start(I,X,Tstart).\n'''
        
        write_file(file_path, rules, "a")

        write_file(file_path, livello_C + "\n", "a")


        check ='''performed_count(I,X,M) :-
    instance(I,_),
    action(X),
    M = #count { T : performed(I,X,T) }.

perseveration(I,X) :-
    instance(I,A),
    expected_count(A,X,N),
    performed_count(I,X,M),
    M > N.

#show perseveration/2.
'''

        write_file(file_path, check, "a")

# --- AVVIO TEST CLINGO ---

cartella_corrente = os.path.dirname(os.path.abspath(__file__))
# 1. Diciamo a Python di cercare DENTRO la cartella dei risultati
cartella_risultati = os.path.join(cartella_corrente, output_dir) 

# salviamo il percorso di ogni file con estensione .lp presente nella cartella creata 
percorso_glob = os.path.join(cartella_risultati, "*.lp")
file_lp = glob.glob(percorso_glob)

# Piccolo controllo di sicurezza per capire se sta leggendo qualcosa
# if not file_lp:
#     print(f"\n[ATTENZIONE] Nessun file .lp trovato nella cartella '{output_dir}'.")
# else:
#     print(f"\nTrovati {len(file_lp)} file da analizzare.")


# avvio analisi dei test 
for file_path in file_lp :
    # Cerchiamo i numeri preceduti da "patient_"
    pat = re.search(r'patient_(\d+)', file_path)
    act = re.search(r'activity_(\d+)', file_path)
    if pat:
        patient_id = pat.group(1)
    if act:
        activity_id = act.group(1)


    nome_file = os.path.basename(file_path)
    # print(f"\nAnalizzando il file: {nome_file}")

    # 2. Passiamo l'intero 'file_path' a Clingo, non solo il nome!
    anomalie = run_clingo_test(file_path)
    

    if patient_id not in patient_anomalies :
        patient_anomalies[patient_id, activity_id] = 0
    perseveration_number = patient_anomalies[patient_id, activity_id] = anomalie
    print(perseveration_number)
    
    query_insert = f'''UPDATE tracked_anomalies
    SET perseveration_number = {perseveration_number}
    WHERE patient_id = {patient_id} AND activity_id = {activity_id}'''

    insert_data(query_insert)
