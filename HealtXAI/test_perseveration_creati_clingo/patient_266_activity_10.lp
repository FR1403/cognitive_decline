% ======================================================================
% Paziente 266
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

instance(i_p266_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p266_a11, participant_washes_the_countertops, 1, 49485067).
raw_performed(i_p266_a11, participant_washes_the_countertops, 2, 49485069).
raw_performed(i_p266_a11, participant_washes_the_countertops, 3, 49490046).
raw_performed(i_p266_a11, participant_washes_the_countertops, 4, 49497032).
raw_performed(i_p266_a11, participant_washes_the_countertops, 5, 49497096).
raw_performed(i_p266_a11, participant_washes_the_countertops, 6, 49503000).
raw_performed(i_p266_a11, participant_washes_the_countertops, 7, 49509024).
raw_performed(i_p266_a11, participant_washes_the_countertops, 8, 49513022).
raw_performed(i_p266_a11, participant_washes_the_countertops, 9, 49517078).
raw_performed(i_p266_a11, participant_dries_the_countertops, 10, 49547001).
raw_performed(i_p266_a11, participant_dries_the_countertops, 11, 49547080).
raw_performed(i_p266_a11, participant_dries_the_countertops, 12, 49555091).
raw_performed(i_p266_a11, participant_dries_the_countertops, 13, 49557059).
raw_performed(i_p266_a11, participant_dries_the_countertops, 14, 49558002).
raw_performed(i_p266_a11, participant_dries_the_countertops, 15, 49579017).
raw_performed(i_p266_a11, participant_dries_the_countertops, 16, 49581047).
raw_performed(i_p266_a11, participant_dries_the_countertops, 17, 49587063).
raw_performed(i_p266_a11, participant_dries_the_countertops, 18, 49601033).

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

