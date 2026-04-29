% ======================================================================
% Paziente 311
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

instance(i_p311_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p311_a11, participant_wets_the_sponge, 1, 38379462).
raw_performed(i_p311_a11, participant_wets_the_sponge, 2, 38379476).
raw_performed(i_p311_a11, participant_washes_the_countertops, 3, 38397051).
raw_performed(i_p311_a11, participant_washes_the_countertops, 4, 38398347).
raw_performed(i_p311_a11, participant_washes_the_countertops, 5, 38409017).
raw_performed(i_p311_a11, participant_washes_the_countertops, 6, 38432049).
raw_performed(i_p311_a11, participant_washes_the_countertops, 7, 38432882).
raw_performed(i_p311_a11, participant_washes_the_countertops, 8, 38437378).
raw_performed(i_p311_a11, participant_washes_the_countertops, 9, 38442993).
raw_performed(i_p311_a11, participant_washes_the_countertops, 10, 38447655).
raw_performed(i_p311_a11, participant_washes_the_countertops, 11, 38460579).
raw_performed(i_p311_a11, participant_washes_the_countertops, 12, 38462834).
raw_performed(i_p311_a11, participant_washes_the_countertops, 13, 38465832).
raw_performed(i_p311_a11, participant_washes_the_countertops, 14, 38477338).
raw_performed(i_p311_a11, participant_washes_the_countertops, 15, 38479001).
raw_performed(i_p311_a11, participant_rinses_out_the_sponge, 16, 38482798).
raw_performed(i_p311_a11, participant_rinses_out_the_sponge, 17, 38482819).
raw_performed(i_p311_a11, participant_rinses_out_the_sponge, 18, 38485251).
raw_performed(i_p311_a11, participant_rinses_out_the_sponge, 19, 38485275).
raw_performed(i_p311_a11, participant_rinses_out_the_sponge, 20, 38487709).
raw_performed(i_p311_a11, participant_rinses_out_the_sponge, 21, 38487727).
raw_performed(i_p311_a11, participant_rinses_out_the_sponge, 22, 38490161).
raw_performed(i_p311_a11, participant_rinses_out_the_sponge, 23, 38490178).
raw_performed(i_p311_a11, participant_dries_the_countertops, 24, 38495527).
raw_performed(i_p311_a11, participant_dries_the_countertops, 25, 38497496).
raw_performed(i_p311_a11, participant_dries_the_countertops, 26, 38500383).
raw_performed(i_p311_a11, participant_dries_the_countertops, 27, 38500961).

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

