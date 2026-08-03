% ======================================================================
% Paziente 242
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

instance(i_p242_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p242_a2, participant_reads_instructions, 1, 49630658).
raw_performed(i_p242_a2, participant_reads_instructions, 2, 49647775).
raw_performed(i_p242_a2, participant_retrieves_materials_from_cupboard_a, 3, 49649919).
raw_performed(i_p242_a2, participant_retrieves_materials_from_cupboard_a, 4, 49669927).
raw_performed(i_p242_a2, participant_retrieves_materials_from_cupboard_a, 5, 49684328).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 6, 49773314).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 7, 49803524).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 8, 49809771).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 9, 49844619).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 10, 49856691).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 11, 49861154).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 12, 49873025).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 13, 49885529).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 14, 49929198).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 15, 49934830).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 16, 49942318).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 17, 49954437).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 18, 49961079).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 19, 49971542).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 20, 49995356).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 21, 50021288).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 22, 50025410).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 23, 50030830).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 24, 50117544).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 25, 50158150).
raw_performed(i_p242_a2, participant_fills_dispenser_with_medication, 26, 50171489).

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

