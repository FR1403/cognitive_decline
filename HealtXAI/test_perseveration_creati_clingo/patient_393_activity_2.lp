% ======================================================================
% Paziente 393
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

instance(i_p393_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p393_a2, participant_retrieves_materials_from_cupboard_a, 1, 35504472).
raw_performed(i_p393_a2, participant_reads_instructions, 2, 35505509).
raw_performed(i_p393_a2, participant_reads_instructions, 3, 35524951).
raw_performed(i_p393_a2, participant_retrieves_materials_from_cupboard_a, 4, 35531734).
raw_performed(i_p393_a2, participant_reads_instructions, 5, 35533404).
raw_performed(i_p393_a2, participant_reads_instructions, 6, 35550431).
raw_performed(i_p393_a2, participant_reads_instructions, 7, 35566905).
raw_performed(i_p393_a2, participant_reads_instructions, 8, 35571884).
raw_performed(i_p393_a2, participant_reads_instructions, 9, 35583623).
raw_performed(i_p393_a2, participant_reads_instructions, 10, 35598608).
raw_performed(i_p393_a2, participant_reads_instructions, 11, 35601634).
raw_performed(i_p393_a2, participant_reads_instructions, 12, 35604024).
raw_performed(i_p393_a2, participant_reads_instructions, 13, 35609022).
raw_performed(i_p393_a2, participant_reads_instructions, 14, 35614551).
raw_performed(i_p393_a2, participant_reads_instructions, 15, 35619237).
raw_performed(i_p393_a2, participant_reads_instructions, 16, 35636484).
raw_performed(i_p393_a2, participant_reads_instructions, 17, 35641927).
raw_performed(i_p393_a2, participant_reads_instructions, 18, 35645875).
raw_performed(i_p393_a2, participant_reads_instructions, 19, 35648281).
raw_performed(i_p393_a2, participant_reads_instructions, 20, 35651294).
raw_performed(i_p393_a2, participant_reads_instructions, 21, 35658589).
raw_performed(i_p393_a2, participant_reads_instructions, 22, 35664068).
raw_performed(i_p393_a2, participant_reads_instructions, 23, 35676486).
raw_performed(i_p393_a2, participant_reads_instructions, 24, 35682591).
raw_performed(i_p393_a2, participant_fills_dispenser_with_medication, 25, 35690859).
raw_performed(i_p393_a2, participant_fills_dispenser_with_medication, 26, 35692730).
raw_performed(i_p393_a2, participant_fills_dispenser_with_medication, 27, 35693542).
raw_performed(i_p393_a2, participant_fills_dispenser_with_medication, 28, 35695402).

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

