% ======================================================================
% Paziente 191
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

instance(i_p191_a10, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p191_a10, participant_moves_to_the_kitchen, 1, 39705848).
raw_performed(i_p191_a10, participant_turns_on_water, 2, 39710288).
raw_performed(i_p191_a10, participant_washes_hands, 3, 39712758).
raw_performed(i_p191_a10, participant_washes_hands, 4, 39715220).
raw_performed(i_p191_a10, participant_washes_hands, 5, 39717681).
raw_performed(i_p191_a10, participant_washes_hands, 6, 39720147).
raw_performed(i_p191_a10, participant_washes_hands, 7, 39725056).
raw_performed(i_p191_a10, participant_washes_hands, 8, 39729983).
raw_performed(i_p191_a10, participant_washes_hands, 9, 39732437).
raw_performed(i_p191_a10, participant_washes_hands, 10, 39734893).
raw_performed(i_p191_a10, participant_washes_hands, 11, 39737349).
raw_performed(i_p191_a10, participant_washes_hands, 12, 39739820).
raw_performed(i_p191_a10, participant_washes_hands, 13, 39742265).
raw_performed(i_p191_a10, participant_washes_hands, 14, 39744756).
raw_performed(i_p191_a10, participant_washes_hands, 15, 39747212).
raw_performed(i_p191_a10, participant_washes_hands, 16, 39749662).
raw_performed(i_p191_a10, participant_washes_hands, 17, 39752121).
raw_performed(i_p191_a10, participant_washes_hands, 18, 39754573).
raw_performed(i_p191_a10, participant_washes_hands, 19, 39757075).
raw_performed(i_p191_a10, participant_washes_hands, 20, 39759564).
raw_performed(i_p191_a10, participant_washes_hands, 21, 39761997).
raw_performed(i_p191_a10, participant_washes_hands, 22, 39764453).
raw_performed(i_p191_a10, participant_washes_hands, 23, 39766911).
raw_performed(i_p191_a10, participant_washes_hands, 24, 39769373).
raw_performed(i_p191_a10, participant_washes_hands, 25, 39774321).

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

