% ======================================================================
% Paziente 130
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

instance(i_p130_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p130_a2, participant_retrieves_materials_from_cupboard_a, 1, 51568000).
raw_performed(i_p130_a2, participant_retrieves_materials_from_cupboard_a, 2, 51572016).
raw_performed(i_p130_a2, participant_reads_instructions, 3, 51582059).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 4, 51584047).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 5, 51590033).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 6, 51598064).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 7, 51655030).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 8, 51662038).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 9, 51677018).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 10, 51682063).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 11, 51690094).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 12, 51698001).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 13, 51703065).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 14, 51713079).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 15, 51721030).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 16, 51732009).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 17, 51740002).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 18, 51742095).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 19, 51762095).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 20, 51775003).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 21, 51781022).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 22, 51784098).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 23, 51806086).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 24, 51829032).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 25, 51846008).
raw_performed(i_p130_a2, participant_fills_dispenser_with_medication, 26, 51854072).

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

