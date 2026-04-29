% ======================================================================
% Paziente 81
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

instance(i_p81_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p81_a11, participant_washes_the_countertops, 1, 36486012).
raw_performed(i_p81_a11, participant_washes_the_countertops, 2, 36489008).
raw_performed(i_p81_a11, participant_washes_the_countertops, 3, 36503093).
raw_performed(i_p81_a11, participant_washes_the_countertops, 4, 36507026).
raw_performed(i_p81_a11, participant_washes_the_countertops, 5, 36507057).
raw_performed(i_p81_a11, participant_washes_the_countertops, 6, 36510079).
raw_performed(i_p81_a11, participant_washes_the_countertops, 7, 36511023).
raw_performed(i_p81_a11, participant_washes_the_countertops, 8, 36513092).
raw_performed(i_p81_a11, participant_washes_the_countertops, 9, 36544081).
raw_performed(i_p81_a11, participant_washes_the_countertops, 10, 36548005).
raw_performed(i_p81_a11, participant_washes_the_countertops, 11, 36551054).
raw_performed(i_p81_a11, participant_washes_the_countertops, 12, 36556003).
raw_performed(i_p81_a11, participant_washes_the_countertops, 13, 36571094).
raw_performed(i_p81_a11, participant_washes_the_countertops, 14, 36589047).
raw_performed(i_p81_a11, participant_washes_the_countertops, 15, 36592051).
raw_performed(i_p81_a11, participant_washes_the_countertops, 16, 36596036).
raw_performed(i_p81_a11, participant_washes_the_countertops, 17, 36611097).
raw_performed(i_p81_a11, participant_washes_the_countertops, 18, 36615034).
raw_performed(i_p81_a11, participant_washes_the_countertops, 19, 36617083).
raw_performed(i_p81_a11, participant_washes_the_countertops, 20, 36628022).
raw_performed(i_p81_a11, participant_washes_the_countertops, 21, 36629065).
raw_performed(i_p81_a11, participant_washes_the_countertops, 22, 36647054).
raw_performed(i_p81_a11, participant_washes_the_countertops, 23, 36665009).
raw_performed(i_p81_a11, participant_washes_the_countertops, 24, 36678020).
raw_performed(i_p81_a11, participant_washes_the_countertops, 25, 36681032).
raw_performed(i_p81_a11, participant_washes_the_countertops, 26, 36684016).
raw_performed(i_p81_a11, participant_washes_the_countertops, 27, 36691002).
raw_performed(i_p81_a11, participant_washes_the_countertops, 28, 36694071).
raw_performed(i_p81_a11, participant_washes_the_countertops, 29, 36698005).

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

