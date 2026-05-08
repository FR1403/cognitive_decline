% ======================================================================
% Paziente 303
% Attività: Wash hands with soap at the kitchen sink.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(wash_hands_with_soap_at_the_kitchen_sink).

action(participant_moves_to_the_kitchen).
action(participant_turns_on_water).
action(participant_uses_hand_soap).
action(participant_washes_hands).
action(participant_dries_hands).

action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 7).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 5).

expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 1).

action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p303_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p303_a11, participant_wets_the_sponge, 1, 36794113).
raw_performed(i_p303_a11, participant_wets_the_sponge, 2, 36794141).
raw_performed(i_p303_a11, participant_washes_the_countertops, 3, 36796153).
raw_performed(i_p303_a11, participant_washes_the_countertops, 4, 36799435).
raw_performed(i_p303_a11, participant_washes_the_countertops, 5, 36802161).
raw_performed(i_p303_a11, participant_washes_the_countertops, 6, 36813436).
raw_performed(i_p303_a11, participant_washes_the_countertops, 7, 36825278).
raw_performed(i_p303_a11, participant_wets_the_sponge, 8, 36832631).
raw_performed(i_p303_a11, participant_wets_the_sponge, 9, 36832657).
raw_performed(i_p303_a11, participant_wets_the_sponge, 10, 36836472).
raw_performed(i_p303_a11, participant_wets_the_sponge, 11, 36840306).
raw_performed(i_p303_a11, participant_wets_the_sponge, 12, 36849687).
raw_performed(i_p303_a11, participant_washes_the_countertops, 13, 36850279).
raw_performed(i_p303_a11, participant_wets_the_sponge, 14, 36857400).
raw_performed(i_p303_a11, participant_wets_the_sponge, 15, 36857429).
raw_performed(i_p303_a11, participant_wets_the_sponge, 16, 36861200).
raw_performed(i_p303_a11, participant_wets_the_sponge, 17, 36865004).
raw_performed(i_p303_a11, participant_washes_the_countertops, 18, 36872854).
raw_performed(i_p303_a11, participant_wets_the_sponge, 19, 36876338).
raw_performed(i_p303_a11, participant_washes_the_countertops, 20, 36877964).
raw_performed(i_p303_a11, participant_wets_the_sponge, 21, 36880150).
raw_performed(i_p303_a11, participant_wets_the_sponge, 22, 36883969).
raw_performed(i_p303_a11, participant_washes_the_countertops, 23, 36884361).
raw_performed(i_p303_a11, participant_wets_the_sponge, 24, 36891640).
raw_performed(i_p303_a11, participant_wets_the_sponge, 25, 36891666).
raw_performed(i_p303_a11, participant_washes_the_countertops, 26, 36892998).
raw_performed(i_p303_a11, participant_washes_the_countertops, 27, 36899501).
raw_performed(i_p303_a11, participant_wets_the_sponge, 28, 36903287).
raw_performed(i_p303_a11, participant_washes_the_countertops, 29, 36907351).
raw_performed(i_p303_a11, participant_wets_the_sponge, 30, 36912450).
raw_performed(i_p303_a11, participant_washes_the_countertops, 31, 36919251).
raw_performed(i_p303_a11, participant_wets_the_sponge, 32, 36919278).
raw_performed(i_p303_a11, participant_wets_the_sponge, 33, 36919305).
raw_performed(i_p303_a11, participant_wets_the_sponge, 34, 36923182).
raw_performed(i_p303_a11, participant_washes_the_countertops, 35, 36928403).
raw_performed(i_p303_a11, participant_washes_the_countertops, 36, 36932151).
raw_performed(i_p303_a11, participant_wets_the_sponge, 37, 36934546).
raw_performed(i_p303_a11, participant_wets_the_sponge, 38, 36938333).
raw_performed(i_p303_a11, participant_washes_the_countertops, 39, 36939117).
raw_performed(i_p303_a11, participant_rinses_out_the_sponge, 40, 36945963).
raw_performed(i_p303_a11, participant_rinses_out_the_sponge, 41, 36945991).
raw_performed(i_p303_a11, participant_rinses_out_the_sponge, 42, 36949854).
raw_performed(i_p303_a11, participant_rinses_out_the_sponge, 43, 36949882).
raw_performed(i_p303_a11, participant_dries_the_countertops, 44, 36953932).
raw_performed(i_p303_a11, participant_dries_the_countertops, 45, 36961503).
raw_performed(i_p303_a11, participant_dries_the_countertops, 46, 36965241).

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

