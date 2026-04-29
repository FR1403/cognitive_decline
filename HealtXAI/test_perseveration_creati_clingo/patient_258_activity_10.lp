% ======================================================================
% Paziente 258
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

instance(i_p258_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p258_a11, participant_wets_the_sponge, 1, 54871061).
raw_performed(i_p258_a11, participant_wets_the_sponge, 2, 54871227).
raw_performed(i_p258_a11, participant_wets_the_sponge, 3, 54873870).
raw_performed(i_p258_a11, participant_wets_the_sponge, 4, 54874040).
raw_performed(i_p258_a11, participant_wets_the_sponge, 5, 54876074).
raw_performed(i_p258_a11, participant_wets_the_sponge, 6, 54876549).
raw_performed(i_p258_a11, participant_wets_the_sponge, 7, 54879707).
raw_performed(i_p258_a11, participant_washes_the_countertops, 8, 54883037).
raw_performed(i_p258_a11, participant_washes_the_countertops, 9, 54889567).
raw_performed(i_p258_a11, participant_washes_the_countertops, 10, 54892383).
raw_performed(i_p258_a11, participant_washes_the_countertops, 11, 54901830).
raw_performed(i_p258_a11, participant_washes_the_countertops, 12, 54910495).
raw_performed(i_p258_a11, participant_washes_the_countertops, 13, 54915046).
raw_performed(i_p258_a11, participant_washes_the_countertops, 14, 54934534).
raw_performed(i_p258_a11, participant_washes_the_countertops, 15, 54943038).
raw_performed(i_p258_a11, participant_washes_the_countertops, 16, 54944076).
raw_performed(i_p258_a11, participant_washes_the_countertops, 17, 54949051).
raw_performed(i_p258_a11, participant_washes_the_countertops, 18, 54951401).
raw_performed(i_p258_a11, participant_washes_the_countertops, 19, 54953724).
raw_performed(i_p258_a11, participant_washes_the_countertops, 20, 54966152).
raw_performed(i_p258_a11, participant_wets_the_sponge, 21, 54982063).
raw_performed(i_p258_a11, participant_wets_the_sponge, 22, 54982848).
raw_performed(i_p258_a11, participant_wets_the_sponge, 23, 54985078).
raw_performed(i_p258_a11, participant_wets_the_sponge, 24, 54986003).
raw_performed(i_p258_a11, participant_wets_the_sponge, 25, 54988723).
raw_performed(i_p258_a11, participant_wets_the_sponge, 26, 54991675).
raw_performed(i_p258_a11, participant_wets_the_sponge, 27, 54994781).
raw_performed(i_p258_a11, participant_wets_the_sponge, 28, 54995172).
raw_performed(i_p258_a11, participant_wets_the_sponge, 29, 55001002).
raw_performed(i_p258_a11, participant_wets_the_sponge, 30, 55006068).
raw_performed(i_p258_a11, participant_washes_the_countertops, 31, 55007378).
raw_performed(i_p258_a11, participant_washes_the_countertops, 32, 55009051).

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

