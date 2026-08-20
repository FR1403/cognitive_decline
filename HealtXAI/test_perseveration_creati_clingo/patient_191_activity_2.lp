% ======================================================================
% Paziente 191
% Attivita: Obtain a set of medicines and a weekly medicine dispenser, fill as per directions.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

action(participant_retrieves_materials_from_cupboard_a).
action(participant_reads_instructions).
action(participant_fills_dispenser_with_medication).

action_type(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_retrieves_materials_from_cupboard_a, 1).
action_type(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_reads_instructions, 6).
action_type(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_fills_dispenser_with_medication, 5).

expected_count(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_retrieves_materials_from_cupboard_a, 1).
expected_count(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_reads_instructions, 1).
expected_count(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_fills_dispenser_with_medication, 1).

action_gap(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_retrieves_materials_from_cupboard_a, 142514).
action_gap(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_reads_instructions, 209238).
action_gap(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_fills_dispenser_with_medication, 119925).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p191_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p191_a2, participant_reads_instructions, 1, 35591719).
raw_performed(i_p191_a2, participant_retrieves_materials_from_cupboard_a, 2, 35594545).
raw_performed(i_p191_a2, participant_reads_instructions, 3, 35599611).
raw_performed(i_p191_a2, participant_retrieves_materials_from_cupboard_a, 4, 35602086).
raw_performed(i_p191_a2, participant_reads_instructions, 5, 35606338).
raw_performed(i_p191_a2, participant_retrieves_materials_from_cupboard_a, 6, 35607323).
raw_performed(i_p191_a2, participant_reads_instructions, 7, 35622422).
raw_performed(i_p191_a2, participant_reads_instructions, 8, 35630723).
raw_performed(i_p191_a2, participant_reads_instructions, 9, 35694509).
raw_performed(i_p191_a2, participant_reads_instructions, 10, 35698421).
raw_performed(i_p191_a2, participant_reads_instructions, 11, 35706789).
raw_performed(i_p191_a2, participant_reads_instructions, 12, 35708983).
raw_performed(i_p191_a2, participant_reads_instructions, 13, 35714538).
raw_performed(i_p191_a2, participant_reads_instructions, 14, 35728687).
raw_performed(i_p191_a2, participant_reads_instructions, 15, 35798985).
raw_performed(i_p191_a2, participant_reads_instructions, 16, 35806430).
raw_performed(i_p191_a2, participant_reads_instructions, 17, 35830464).
raw_performed(i_p191_a2, participant_reads_instructions, 18, 35845401).
raw_performed(i_p191_a2, participant_reads_instructions, 19, 35850467).
raw_performed(i_p191_a2, participant_reads_instructions, 20, 35861008).
raw_performed(i_p191_a2, participant_fills_dispenser_with_medication, 21, 35920241).
raw_performed(i_p191_a2, participant_fills_dispenser_with_medication, 22, 35922424).
raw_performed(i_p191_a2, participant_fills_dispenser_with_medication, 23, 35922795).
raw_performed(i_p191_a2, participant_fills_dispenser_with_medication, 24, 35934750).
raw_performed(i_p191_a2, participant_fills_dispenser_with_medication, 25, 35935353).

prev_same(I,X,T1,T2) :-
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
    episode_start(I,X,Tstart).


% ===========================
% Level C - Anomaly detection
% ===========================


performed_count(I,X,M) :-
    instance(I,_),
    action(X),
    M = #count { T : performed(I,X,T) }.

perseveration(I,X) :-
    instance(I,A),
    expected_count(A,X,N),
    performed_count(I,X,M),
    M > N.

#show perseveration/2.

