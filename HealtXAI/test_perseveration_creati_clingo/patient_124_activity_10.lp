% ======================================================================
% Paziente 124
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

instance(i_p124_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p124_a11, participant_washes_the_countertops, 1, 36260072).
raw_performed(i_p124_a11, participant_washes_the_countertops, 2, 36269027).
raw_performed(i_p124_a11, participant_washes_the_countertops, 3, 36271054).
raw_performed(i_p124_a11, participant_washes_the_countertops, 4, 36279088).
raw_performed(i_p124_a11, participant_washes_the_countertops, 5, 36283036).
raw_performed(i_p124_a11, participant_washes_the_countertops, 6, 36295001).
raw_performed(i_p124_a11, participant_washes_the_countertops, 7, 36298003).
raw_performed(i_p124_a11, participant_washes_the_countertops, 8, 36314098).
raw_performed(i_p124_a11, participant_washes_the_countertops, 9, 36317091).
raw_performed(i_p124_a11, participant_washes_the_countertops, 10, 36344000).
raw_performed(i_p124_a11, participant_washes_the_countertops, 11, 36352014).
raw_performed(i_p124_a11, participant_washes_the_countertops, 12, 36352078).
raw_performed(i_p124_a11, participant_washes_the_countertops, 13, 36355088).
raw_performed(i_p124_a11, participant_dries_the_countertops, 14, 36458021).
raw_performed(i_p124_a11, participant_dries_the_countertops, 15, 36468005).
raw_performed(i_p124_a11, participant_dries_the_countertops, 16, 36470090).
raw_performed(i_p124_a11, participant_dries_the_countertops, 17, 36478081).
raw_performed(i_p124_a11, participant_dries_the_countertops, 18, 36536002).
raw_performed(i_p124_a11, participant_dries_the_countertops, 19, 36539022).
raw_performed(i_p124_a11, participant_dries_the_countertops, 20, 36540067).
raw_performed(i_p124_a11, participant_dries_the_countertops, 21, 36543015).
raw_performed(i_p124_a11, participant_dries_the_countertops, 22, 36547095).
raw_performed(i_p124_a11, participant_dries_the_countertops, 23, 36549082).

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

