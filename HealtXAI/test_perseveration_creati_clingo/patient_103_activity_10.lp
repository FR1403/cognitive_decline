% ======================================================================
% Paziente 103
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

instance(i_p103_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p103_a11, participant_wets_the_sponge, 1, 51085093).
raw_performed(i_p103_a11, participant_wets_the_sponge, 2, 51088849).
raw_performed(i_p103_a11, participant_washes_the_countertops, 3, 51089241).
raw_performed(i_p103_a11, participant_washes_the_countertops, 4, 51100691).
raw_performed(i_p103_a11, participant_washes_the_countertops, 5, 51109436).
raw_performed(i_p103_a11, participant_washes_the_countertops, 6, 51111914).
raw_performed(i_p103_a11, participant_washes_the_countertops, 7, 51120141).
raw_performed(i_p103_a11, participant_washes_the_countertops, 8, 51130871).
raw_performed(i_p103_a11, participant_washes_the_countertops, 9, 51159458).
raw_performed(i_p103_a11, participant_rinses_out_the_sponge, 10, 51162949).
raw_performed(i_p103_a11, participant_rinses_out_the_sponge, 11, 51166739).
raw_performed(i_p103_a11, participant_rinses_out_the_sponge, 12, 51170602).
raw_performed(i_p103_a11, participant_rinses_out_the_sponge, 13, 51174467).
raw_performed(i_p103_a11, participant_rinses_out_the_sponge, 14, 51178335).
raw_performed(i_p103_a11, participant_dries_the_countertops, 15, 51182573).
raw_performed(i_p103_a11, participant_dries_the_countertops, 16, 51186845).
raw_performed(i_p103_a11, participant_dries_the_countertops, 17, 51190691).

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

