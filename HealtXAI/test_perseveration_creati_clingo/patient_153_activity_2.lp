% ======================================================================
% Paziente 153
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

instance(i_p153_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p153_a2, participant_reads_instructions, 1, 36215215).
raw_performed(i_p153_a2, participant_reads_instructions, 2, 36221210).
raw_performed(i_p153_a2, participant_retrieves_materials_from_cupboard_a, 3, 36250076).
raw_performed(i_p153_a2, participant_reads_instructions, 4, 36253132).
raw_performed(i_p153_a2, participant_retrieves_materials_from_cupboard_a, 5, 36270592).
raw_performed(i_p153_a2, participant_reads_instructions, 6, 36275953).
raw_performed(i_p153_a2, participant_reads_instructions, 7, 36295370).
raw_performed(i_p153_a2, participant_reads_instructions, 8, 36331223).
raw_performed(i_p153_a2, participant_reads_instructions, 9, 36348527).
raw_performed(i_p153_a2, participant_reads_instructions, 10, 36378481).
raw_performed(i_p153_a2, participant_reads_instructions, 11, 36392953).
raw_performed(i_p153_a2, participant_reads_instructions, 12, 36399683).
raw_performed(i_p153_a2, participant_reads_instructions, 13, 36416597).
raw_performed(i_p153_a2, participant_reads_instructions, 14, 36431667).
raw_performed(i_p153_a2, participant_reads_instructions, 15, 36435451).
raw_performed(i_p153_a2, participant_reads_instructions, 16, 36440691).
raw_performed(i_p153_a2, participant_reads_instructions, 17, 36444871).
raw_performed(i_p153_a2, participant_reads_instructions, 18, 36450752).
raw_performed(i_p153_a2, participant_reads_instructions, 19, 36458997).
raw_performed(i_p153_a2, participant_reads_instructions, 20, 36480032).
raw_performed(i_p153_a2, participant_reads_instructions, 21, 36491083).
raw_performed(i_p153_a2, participant_reads_instructions, 22, 36516472).
raw_performed(i_p153_a2, participant_reads_instructions, 23, 36527766).
raw_performed(i_p153_a2, participant_reads_instructions, 24, 36535572).
raw_performed(i_p153_a2, participant_reads_instructions, 25, 36544784).
raw_performed(i_p153_a2, participant_fills_dispenser_with_medication, 26, 36556167).
raw_performed(i_p153_a2, participant_fills_dispenser_with_medication, 27, 36563871).

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

