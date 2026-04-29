% ======================================================================
% Paziente 194
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

instance(i_p194_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p194_a11, participant_washes_the_countertops, 1, 39277050).
raw_performed(i_p194_a11, participant_washes_the_countertops, 2, 39299931).
raw_performed(i_p194_a11, participant_washes_the_countertops, 3, 39300031).
raw_performed(i_p194_a11, participant_washes_the_countertops, 4, 39305667).
raw_performed(i_p194_a11, participant_washes_the_countertops, 5, 39313036).
raw_performed(i_p194_a11, participant_washes_the_countertops, 6, 39317071).
raw_performed(i_p194_a11, participant_washes_the_countertops, 7, 39329966).
raw_performed(i_p194_a11, participant_washes_the_countertops, 8, 39331906).
raw_performed(i_p194_a11, participant_washes_the_countertops, 9, 39334816).
raw_performed(i_p194_a11, participant_washes_the_countertops, 10, 39337369).
raw_performed(i_p194_a11, participant_washes_the_countertops, 11, 39352364).
raw_performed(i_p194_a11, participant_washes_the_countertops, 12, 39365061).
raw_performed(i_p194_a11, participant_washes_the_countertops, 13, 39367077).
raw_performed(i_p194_a11, participant_washes_the_countertops, 14, 39376074).
raw_performed(i_p194_a11, participant_washes_the_countertops, 15, 39378072).
raw_performed(i_p194_a11, participant_washes_the_countertops, 16, 39382008).
raw_performed(i_p194_a11, participant_washes_the_countertops, 17, 39384657).
raw_performed(i_p194_a11, participant_washes_the_countertops, 18, 39399089).
raw_performed(i_p194_a11, participant_washes_the_countertops, 19, 39399298).
raw_performed(i_p194_a11, participant_washes_the_countertops, 20, 39404009).
raw_performed(i_p194_a11, participant_washes_the_countertops, 21, 39415344).
raw_performed(i_p194_a11, participant_washes_the_countertops, 22, 39417008).
raw_performed(i_p194_a11, participant_washes_the_countertops, 23, 39422067).
raw_performed(i_p194_a11, participant_washes_the_countertops, 24, 39445095).
raw_performed(i_p194_a11, participant_washes_the_countertops, 25, 39450995).

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

