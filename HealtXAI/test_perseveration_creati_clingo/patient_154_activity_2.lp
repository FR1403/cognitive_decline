% ======================================================================
% Paziente 154
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

instance(i_p154_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p154_a2, participant_retrieves_materials_from_cupboard_a, 1, 35679071).
raw_performed(i_p154_a2, participant_retrieves_materials_from_cupboard_a, 2, 35687045).
raw_performed(i_p154_a2, participant_retrieves_materials_from_cupboard_a, 3, 35689003).
raw_performed(i_p154_a2, participant_retrieves_materials_from_cupboard_a, 4, 35689085).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 5, 35692030).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 6, 35708049).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 7, 35710067).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 8, 35721058).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 9, 35723028).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 10, 35731647).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 11, 35760047).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 12, 35769463).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 13, 35775031).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 14, 35785011).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 15, 35793049).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 16, 35797522).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 17, 35802456).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 18, 35808455).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 19, 35818049).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 20, 35823050).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 21, 35849458).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 22, 35880628).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 23, 35887071).
raw_performed(i_p154_a2, participant_fills_dispenser_with_medication, 24, 35887943).

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

