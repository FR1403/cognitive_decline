import glob
import re
import os
import sys


from utils.util_functions import *


output_dir = "test_omission_creati_clingo"
os.makedirs(output_dir, exist_ok=True)


query_activities_actions = """SELECT aty.activity_id, aty.description AS activity_description, tt.task_id, tt.description AS task_description FROM activity_types AS aty
JOIN task_types AS tt ON tt.activity_id = aty.activity_id"""


query_patients = '''SELECT patient_id FROM patients'''



# recuperiamo i dati delle attività e relative azioni dal database e dei pazienti
activities = take_data(query_activities_actions)
patients = take_data(query_patients)


#inizializzazioni liste e dizionari 
patients_list = []
activity_list = {}

activity_list_not_clean = []
task_mapping = {} 
info_patient_list = {}
        
tasks_performed_list = {}

# popolo la lista con l'ID dei pazienti 
for i in range(len(patients)) :
    patients_list.append((patients[i])["patient_id"])

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
            
tests = []
      




for i in range(len(patients)):
    for j in range(len(activity_list_not_clean)) :
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
            # print(info_patient)
            (info_patient_list[patient]).append(single_info)



for patient in info_patient_list :
    cont = 1
    for activity in info_patient_list[patient] :
        file_name = f"patient_{patient}_activity_{cont}.lp"
        file_path = os.path.join(output_dir, file_name)


        write_file(file_path, f"% =================================================================================================\n% Paziente {patient}\n% Attività: {activity}\n% =================================================================================================", "w")
        write_file(file_path, livello_A, "a")

        activity_patient = activity
        activity_patient = activity_patient.replace(' ', '_')
        # di ogni attività ci salviamo la descrizione in minuscolo,sostituento spazi con underscore e eliminando punti superflui
        activity_patient = re.sub(r'[^\w]+', '', (activity_patient.lower()))
    
        write_file(file_path, f"activity({activity_patient}).", "a")
        write_file(file_path, "", "a")
        cont += 1
        i = 0
        # --- PRIMO CICLO TASK ---
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

            # 2. Se l'azione è stata eseguita
            if task_performed: # Equivalente a != None and != []
                if patient not in tasks_performed_list:
                    tasks_performed_list[patient] = []

                # SALVIAMO LA VERSIONE PULITA, NON QUELLA SPORCA!
                tasks_performed_list[patient].append(task_fact)
            
            # 3. Scriviamo il fatto action()
            task_fatto = f"action({task_fact})."
            write_file(file_path, task_fatto, "a")

        write_file(file_path, "", "a")

        # --- SECONDO CICLO TASK ---
        for task_fact in activity_list[activity_patient]:
            
            part_of = f"part_of({task_fact}, {activity_patient})."
            write_file(file_path, part_of, "a")

        write_file(file_path, livello_B + "\n", "a")

        instance = f"instance(i1, {activity_patient}).\n"
        write_file(file_path, instance + "\n", "a")

        for task_fact in activity_list[activity_patient]:
            # 5. Scriviamo performed() se il task pulito è nella lista di quelli eseguiti
            if patient in tasks_performed_list and task_fact in tasks_performed_list[patient]:
                performed_fatto = f"performed(i1, {task_fact})."
                write_file(file_path, performed_fatto, "a")

        

        write_file(file_path, livello_C + "\n", "a")

        rule = '''omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).'''

        show = "#show omission/2."

        write_file(file_path, rule + "\n", "a")

        write_file(file_path, show, "a")

         
    
# --- AVVIO TEST CLINGO ---

cartella_corrente = os.path.dirname(os.path.abspath(__file__))
# 1. Diciamo a Python di cercare DENTRO la cartella dei risultati
cartella_risultati = os.path.join(cartella_corrente, output_dir) 

# salviamo il percorso di ogni file con estensione .lp presente nella cartella creata 
percorso_glob = os.path.join(cartella_risultati, "*.lp")
file_lp = glob.glob(percorso_glob)

# Piccolo controllo di sicurezza per capire se sta leggendo qualcosa
if not file_lp:
    print(f"\n[ATTENZIONE] Nessun file .lp trovato nella cartella '{output_dir}'.")
else:
    print(f"\nTrovati {len(file_lp)} file da analizzare.")

# avvio analisi dei test 
for file_path in file_lp :
    nome_file = os.path.basename(file_path)
    print(f"\nAnalizzando il file: {nome_file}")

    # 2. Passiamo l'intero 'file_path' a Clingo, non solo il nome!
    run_clingo_test(file_path)