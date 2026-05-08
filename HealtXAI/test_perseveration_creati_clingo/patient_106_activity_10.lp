% ======================================================================
% Paziente 106
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

instance(i_p106_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p106_a11, participant_wets_the_sponge, 1, 50897298).
raw_performed(i_p106_a11, participant_wets_the_sponge, 2, 50904676).
raw_performed(i_p106_a11, participant_washes_the_countertops, 3, 50917862).
raw_performed(i_p106_a11, participant_washes_the_countertops, 4, 50927465).
raw_performed(i_p106_a11, participant_wets_the_sponge, 5, 50940072).
raw_performed(i_p106_a11, participant_wets_the_sponge, 6, 50943828).
raw_performed(i_p106_a11, participant_wets_the_sponge, 7, 50951236).
raw_performed(i_p106_a11, participant_wets_the_sponge, 8, 50954984).
raw_performed(i_p106_a11, participant_washes_the_countertops, 9, 50955357).
raw_performed(i_p106_a11, participant_washes_the_countertops, 10, 50963745).
raw_performed(i_p106_a11, participant_washes_the_countertops, 11, 50970467).
raw_performed(i_p106_a11, participant_washes_the_countertops, 12, 50979135).
raw_performed(i_p106_a11, participant_washes_the_countertops, 13, 50989665).
raw_performed(i_p106_a11, participant_washes_the_countertops, 14, 51006717).
raw_performed(i_p106_a11, participant_washes_the_countertops, 15, 51017631).
raw_performed(i_p106_a11, participant_washes_the_countertops, 16, 51021898).
raw_performed(i_p106_a11, participant_washes_the_countertops, 17, 51032288).
raw_performed(i_p106_a11, participant_rinses_out_the_sponge, 18, 51035715).
raw_performed(i_p106_a11, participant_rinses_out_the_sponge, 19, 51039466).
raw_performed(i_p106_a11, participant_dries_the_countertops, 20, 51039813).
raw_performed(i_p106_a11, participant_dries_the_countertops, 21, 51051995).
raw_performed(i_p106_a11, participant_dries_the_countertops, 22, 51071756).
raw_performed(i_p106_a11, participant_dries_the_countertops, 23, 51094438).
raw_performed(i_p106_a11, participant_dries_the_countertops, 24, 51098621).
raw_performed(i_p106_a11, participant_dries_the_countertops, 25, 51100267).

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

