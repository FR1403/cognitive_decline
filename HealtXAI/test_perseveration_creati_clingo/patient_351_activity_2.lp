% ======================================================================
% Paziente 351
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

instance(i_p351_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p351_a2, participant_retrieves_materials_from_cupboard_a, 1, 50554019).
raw_performed(i_p351_a2, participant_retrieves_materials_from_cupboard_a, 2, 50579053).
raw_performed(i_p351_a2, participant_reads_instructions, 3, 50594032).
raw_performed(i_p351_a2, participant_reads_instructions, 4, 50600007).
raw_performed(i_p351_a2, participant_reads_instructions, 5, 50603063).
raw_performed(i_p351_a2, participant_reads_instructions, 6, 50635082).
raw_performed(i_p351_a2, participant_reads_instructions, 7, 50640035).
raw_performed(i_p351_a2, participant_reads_instructions, 8, 50647087).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 9, 50760090).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 10, 50768080).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 11, 50784025).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 12, 50798065).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 13, 50800003).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 14, 50806004).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 15, 50807049).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 16, 50809019).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 17, 50813037).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 18, 50819017).
raw_performed(i_p351_a2, participant_fills_dispenser_with_medication, 19, 50819078).

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

