% ======================================================================
% Paziente 71
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

instance(i_p71_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p71_a11, participant_wets_the_sponge, 1, 38631224).
raw_performed(i_p71_a11, participant_wets_the_sponge, 2, 38633697).
raw_performed(i_p71_a11, participant_wets_the_sponge, 3, 38638634).
raw_performed(i_p71_a11, participant_wets_the_sponge, 4, 38641113).
raw_performed(i_p71_a11, participant_washes_the_countertops, 5, 38642585).
raw_performed(i_p71_a11, participant_washes_the_countertops, 6, 38645577).
raw_performed(i_p71_a11, participant_washes_the_countertops, 7, 38665981).
raw_performed(i_p71_a11, participant_washes_the_countertops, 8, 38675337).
raw_performed(i_p71_a11, participant_washes_the_countertops, 9, 38682710).
raw_performed(i_p71_a11, participant_wets_the_sponge, 10, 38688048).
raw_performed(i_p71_a11, participant_wets_the_sponge, 11, 38690502).
raw_performed(i_p71_a11, participant_wets_the_sponge, 12, 38692963).
raw_performed(i_p71_a11, participant_wets_the_sponge, 13, 38695473).
raw_performed(i_p71_a11, participant_wets_the_sponge, 14, 38697897).
raw_performed(i_p71_a11, participant_wets_the_sponge, 15, 38700373).
raw_performed(i_p71_a11, participant_wets_the_sponge, 16, 38700391).
raw_performed(i_p71_a11, participant_wets_the_sponge, 17, 38702860).
raw_performed(i_p71_a11, participant_wets_the_sponge, 18, 38702890).
raw_performed(i_p71_a11, participant_washes_the_countertops, 19, 38708011).
raw_performed(i_p71_a11, participant_washes_the_countertops, 20, 38708029).
raw_performed(i_p71_a11, participant_washes_the_countertops, 21, 38711737).
raw_performed(i_p71_a11, participant_washes_the_countertops, 22, 38715322).
raw_performed(i_p71_a11, participant_washes_the_countertops, 23, 38717218).
raw_performed(i_p71_a11, participant_wets_the_sponge, 24, 38720135).
raw_performed(i_p71_a11, participant_wets_the_sponge, 25, 38720167).
raw_performed(i_p71_a11, participant_washes_the_countertops, 26, 38722090).
raw_performed(i_p71_a11, participant_washes_the_countertops, 27, 38733117).
raw_performed(i_p71_a11, participant_wets_the_sponge, 28, 38739919).
raw_performed(i_p71_a11, participant_washes_the_countertops, 29, 38740885).
raw_performed(i_p71_a11, participant_washes_the_countertops, 30, 38754041).
raw_performed(i_p71_a11, participant_rinses_out_the_sponge, 31, 38774460).
raw_performed(i_p71_a11, participant_rinses_out_the_sponge, 32, 38774479).

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

