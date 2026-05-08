% ======================================================================
% Paziente 306
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

instance(i_p306_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p306_a11, participant_wets_the_sponge, 1, 35911962).
raw_performed(i_p306_a11, participant_wets_the_sponge, 2, 35914413).
raw_performed(i_p306_a11, participant_wets_the_sponge, 3, 35919341).
raw_performed(i_p306_a11, participant_wets_the_sponge, 4, 35921809).
raw_performed(i_p306_a11, participant_wets_the_sponge, 5, 35924315).
raw_performed(i_p306_a11, participant_wets_the_sponge, 6, 35931713).
raw_performed(i_p306_a11, participant_wets_the_sponge, 7, 35934159).
raw_performed(i_p306_a11, participant_wets_the_sponge, 8, 35939090).
raw_performed(i_p306_a11, participant_washes_the_countertops, 9, 35941775).
raw_performed(i_p306_a11, participant_washes_the_countertops, 10, 35944154).
raw_performed(i_p306_a11, participant_washes_the_countertops, 11, 35950281).
raw_performed(i_p306_a11, participant_washes_the_countertops, 12, 35963448).
raw_performed(i_p306_a11, participant_washes_the_countertops, 13, 35969729).
raw_performed(i_p306_a11, participant_washes_the_countertops, 14, 35982724).
raw_performed(i_p306_a11, participant_washes_the_countertops, 15, 35991460).
raw_performed(i_p306_a11, participant_washes_the_countertops, 16, 35997499).
raw_performed(i_p306_a11, participant_rinses_out_the_sponge, 17, 36005825).
raw_performed(i_p306_a11, participant_rinses_out_the_sponge, 18, 36010761).
raw_performed(i_p306_a11, participant_rinses_out_the_sponge, 19, 36015699).
raw_performed(i_p306_a11, participant_rinses_out_the_sponge, 20, 36018171).
raw_performed(i_p306_a11, participant_rinses_out_the_sponge, 21, 36020632).

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

