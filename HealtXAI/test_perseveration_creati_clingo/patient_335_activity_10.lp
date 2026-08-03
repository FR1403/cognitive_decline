% ======================================================================
% Paziente 335
% Attivita: Wash hands with soap at the kitchen sink.
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

action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 3254).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 29127).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 32474).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 53356).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 54769).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p335_a10, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p335_a10, participant_turns_on_water, 1, 53305695).
raw_performed(i_p335_a10, participant_turns_on_water, 2, 53305723).
raw_performed(i_p335_a10, participant_washes_hands, 3, 53308169).
raw_performed(i_p335_a10, participant_washes_hands, 4, 53313084).
raw_performed(i_p335_a10, participant_washes_hands, 5, 53315544).
raw_performed(i_p335_a10, participant_washes_hands, 6, 53315565).
raw_performed(i_p335_a10, participant_washes_hands, 7, 53325391).
raw_performed(i_p335_a10, participant_washes_hands, 8, 53325415).
raw_performed(i_p335_a10, participant_washes_hands, 9, 53330314).
raw_performed(i_p335_a10, participant_washes_hands, 10, 53335243).
raw_performed(i_p335_a10, participant_washes_hands, 11, 53337679).
raw_performed(i_p335_a10, participant_washes_hands, 12, 53340139).
raw_performed(i_p335_a10, participant_washes_hands, 13, 53342594).
raw_performed(i_p335_a10, participant_washes_hands, 14, 53345057).
raw_performed(i_p335_a10, participant_washes_hands, 15, 53345080).
raw_performed(i_p335_a10, participant_dries_hands, 16, 53349340).

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

