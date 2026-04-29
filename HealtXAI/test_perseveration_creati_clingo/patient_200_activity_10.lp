% ======================================================================
% Paziente 200
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

instance(i_p200_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p200_a11, participant_washes_the_countertops, 1, 54474006).
raw_performed(i_p200_a11, participant_washes_the_countertops, 2, 54490023).
raw_performed(i_p200_a11, participant_washes_the_countertops, 3, 54495028).
raw_performed(i_p200_a11, participant_washes_the_countertops, 4, 54501054).
raw_performed(i_p200_a11, participant_washes_the_countertops, 5, 54506079).
raw_performed(i_p200_a11, participant_washes_the_countertops, 6, 54514098).
raw_performed(i_p200_a11, participant_washes_the_countertops, 7, 54525021).
raw_performed(i_p200_a11, participant_washes_the_countertops, 8, 54532011).
raw_performed(i_p200_a11, participant_washes_the_countertops, 9, 54537014).
raw_performed(i_p200_a11, participant_washes_the_countertops, 10, 54541021).
raw_performed(i_p200_a11, participant_washes_the_countertops, 11, 54544014).
raw_performed(i_p200_a11, participant_washes_the_countertops, 12, 54553093).
raw_performed(i_p200_a11, participant_washes_the_countertops, 13, 54575057).
raw_performed(i_p200_a11, participant_washes_the_countertops, 14, 54585038).
raw_performed(i_p200_a11, participant_washes_the_countertops, 15, 54590085).
raw_performed(i_p200_a11, participant_washes_the_countertops, 16, 54599040).
raw_performed(i_p200_a11, participant_washes_the_countertops, 17, 54606009).
raw_performed(i_p200_a11, participant_washes_the_countertops, 18, 54609004).
raw_performed(i_p200_a11, participant_washes_the_countertops, 19, 54612060).

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

