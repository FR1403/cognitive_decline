% ======================================================================
% Paziente 381
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

action_gap(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_retrieves_materials_from_cupboard_a, 159616).
action_gap(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_reads_instructions, 279057).
action_gap(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_fills_dispenser_with_medication, 145173).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p381_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p381_a2, participant_retrieves_materials_from_cupboard_a, 1, 51178069).
raw_performed(i_p381_a2, participant_retrieves_materials_from_cupboard_a, 2, 51180069).
raw_performed(i_p381_a2, participant_reads_instructions, 3, 51182000).
raw_performed(i_p381_a2, participant_reads_instructions, 4, 51193074).
raw_performed(i_p381_a2, participant_reads_instructions, 5, 51199057).
raw_performed(i_p381_a2, participant_reads_instructions, 6, 51205040).
raw_performed(i_p381_a2, participant_reads_instructions, 7, 51212086).
raw_performed(i_p381_a2, participant_reads_instructions, 8, 51244017).
raw_performed(i_p381_a2, participant_reads_instructions, 9, 51265004).
raw_performed(i_p381_a2, participant_reads_instructions, 10, 51268034).
raw_performed(i_p381_a2, participant_reads_instructions, 11, 51274047).
raw_performed(i_p381_a2, participant_reads_instructions, 12, 51283003).
raw_performed(i_p381_a2, participant_reads_instructions, 13, 51290057).
raw_performed(i_p381_a2, participant_reads_instructions, 14, 51302039).
raw_performed(i_p381_a2, participant_fills_dispenser_with_medication, 15, 51307039).
raw_performed(i_p381_a2, participant_fills_dispenser_with_medication, 16, 51319007).
raw_performed(i_p381_a2, participant_fills_dispenser_with_medication, 17, 51328069).
raw_performed(i_p381_a2, participant_fills_dispenser_with_medication, 18, 51330055).
raw_performed(i_p381_a2, participant_fills_dispenser_with_medication, 19, 51332022).
raw_performed(i_p381_a2, participant_fills_dispenser_with_medication, 20, 51333069).

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

