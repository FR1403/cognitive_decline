% ======================================================================
% Paziente 267
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

instance(i_p267_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p267_a11, participant_wets_the_sponge, 1, 52594869).
raw_performed(i_p267_a11, participant_wets_the_sponge, 2, 52597330).
raw_performed(i_p267_a11, participant_washes_the_countertops, 3, 52612845).
raw_performed(i_p267_a11, participant_washes_the_countertops, 4, 52616282).
raw_performed(i_p267_a11, participant_washes_the_countertops, 5, 52621560).
raw_performed(i_p267_a11, participant_washes_the_countertops, 6, 52633986).
raw_performed(i_p267_a11, participant_washes_the_countertops, 7, 52641865).
raw_performed(i_p267_a11, participant_washes_the_countertops, 8, 52649408).
raw_performed(i_p267_a11, participant_wets_the_sponge, 9, 52651406).
raw_performed(i_p267_a11, participant_wets_the_sponge, 10, 52653855).
raw_performed(i_p267_a11, participant_washes_the_countertops, 11, 52654409).
raw_performed(i_p267_a11, participant_washes_the_countertops, 12, 52660494).
raw_performed(i_p267_a11, participant_washes_the_countertops, 13, 52670171).
raw_performed(i_p267_a11, participant_washes_the_countertops, 14, 52671100).
raw_performed(i_p267_a11, participant_washes_the_countertops, 15, 52675829).
raw_performed(i_p267_a11, participant_washes_the_countertops, 16, 52677375).
raw_performed(i_p267_a11, participant_washes_the_countertops, 17, 52688935).
raw_performed(i_p267_a11, participant_washes_the_countertops, 18, 52690699).
raw_performed(i_p267_a11, participant_washes_the_countertops, 19, 52695506).
raw_performed(i_p267_a11, participant_washes_the_countertops, 20, 52700494).
raw_performed(i_p267_a11, participant_washes_the_countertops, 21, 52705645).
raw_performed(i_p267_a11, participant_washes_the_countertops, 22, 52710193).
raw_performed(i_p267_a11, participant_washes_the_countertops, 23, 52733249).
raw_performed(i_p267_a11, participant_rinses_out_the_sponge, 24, 52740058).
raw_performed(i_p267_a11, participant_rinses_out_the_sponge, 25, 52742472).
raw_performed(i_p267_a11, participant_rinses_out_the_sponge, 26, 52744927).
raw_performed(i_p267_a11, participant_rinses_out_the_sponge, 27, 52749845).
raw_performed(i_p267_a11, participant_rinses_out_the_sponge, 28, 52762153).

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

