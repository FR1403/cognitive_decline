% ======================================================================
% Paziente 215
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

instance(i_p215_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p215_a2, participant_reads_instructions, 1, 48715659).
raw_performed(i_p215_a2, participant_reads_instructions, 2, 48723656).
raw_performed(i_p215_a2, participant_retrieves_materials_from_cupboard_a, 3, 48726165).
raw_performed(i_p215_a2, participant_reads_instructions, 4, 48727230).
raw_performed(i_p215_a2, participant_reads_instructions, 5, 48729911).
raw_performed(i_p215_a2, participant_reads_instructions, 6, 48733378).
raw_performed(i_p215_a2, participant_retrieves_materials_from_cupboard_a, 7, 48733996).
raw_performed(i_p215_a2, participant_reads_instructions, 8, 48735085).
raw_performed(i_p215_a2, participant_reads_instructions, 9, 48738073).
raw_performed(i_p215_a2, participant_reads_instructions, 10, 48740502).
raw_performed(i_p215_a2, participant_reads_instructions, 11, 48744541).
raw_performed(i_p215_a2, participant_reads_instructions, 12, 48746524).
raw_performed(i_p215_a2, participant_reads_instructions, 13, 48777455).
raw_performed(i_p215_a2, participant_reads_instructions, 14, 48784952).
raw_performed(i_p215_a2, participant_reads_instructions, 15, 48792815).
raw_performed(i_p215_a2, participant_reads_instructions, 16, 48805348).
raw_performed(i_p215_a2, participant_reads_instructions, 17, 48811735).
raw_performed(i_p215_a2, participant_reads_instructions, 18, 48819257).
raw_performed(i_p215_a2, participant_reads_instructions, 19, 48823578).
raw_performed(i_p215_a2, participant_reads_instructions, 20, 48826195).
raw_performed(i_p215_a2, participant_reads_instructions, 21, 48832376).
raw_performed(i_p215_a2, participant_reads_instructions, 22, 48835002).
raw_performed(i_p215_a2, participant_reads_instructions, 23, 48859393).
raw_performed(i_p215_a2, participant_reads_instructions, 24, 48899122).
raw_performed(i_p215_a2, participant_reads_instructions, 25, 48912480).
raw_performed(i_p215_a2, participant_reads_instructions, 26, 48941690).
raw_performed(i_p215_a2, participant_reads_instructions, 27, 48946619).
raw_performed(i_p215_a2, participant_reads_instructions, 28, 48981606).
raw_performed(i_p215_a2, participant_reads_instructions, 29, 48984989).
raw_performed(i_p215_a2, participant_reads_instructions, 30, 48995935).
raw_performed(i_p215_a2, participant_reads_instructions, 31, 48998903).
raw_performed(i_p215_a2, participant_fills_dispenser_with_medication, 32, 49011806).
raw_performed(i_p215_a2, participant_fills_dispenser_with_medication, 33, 49021167).
raw_performed(i_p215_a2, participant_fills_dispenser_with_medication, 34, 49024166).
raw_performed(i_p215_a2, participant_fills_dispenser_with_medication, 35, 49029338).

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

