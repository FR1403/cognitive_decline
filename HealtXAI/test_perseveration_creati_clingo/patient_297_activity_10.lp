% ======================================================================
% Paziente 297
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

instance(i_p297_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p297_a11, participant_wets_the_sponge, 1, 35765378).
raw_performed(i_p297_a11, participant_washes_the_countertops, 2, 35771950).
raw_performed(i_p297_a11, participant_washes_the_countertops, 3, 35782465).
raw_performed(i_p297_a11, participant_washes_the_countertops, 4, 35786453).
raw_performed(i_p297_a11, participant_washes_the_countertops, 5, 35791208).
raw_performed(i_p297_a11, participant_washes_the_countertops, 6, 35798284).
raw_performed(i_p297_a11, participant_washes_the_countertops, 7, 35801923).
raw_performed(i_p297_a11, participant_washes_the_countertops, 8, 35809385).
raw_performed(i_p297_a11, participant_wets_the_sponge, 9, 35820116).
raw_performed(i_p297_a11, participant_wets_the_sponge, 10, 35823818).
raw_performed(i_p297_a11, participant_wets_the_sponge, 11, 35827619).
raw_performed(i_p297_a11, participant_wets_the_sponge, 12, 35831390).
raw_performed(i_p297_a11, participant_wets_the_sponge, 13, 35836904).
raw_performed(i_p297_a11, participant_washes_the_countertops, 14, 35838097).
raw_performed(i_p297_a11, participant_washes_the_countertops, 15, 35841170).
raw_performed(i_p297_a11, participant_washes_the_countertops, 16, 35852894).
raw_performed(i_p297_a11, participant_washes_the_countertops, 17, 35852918).
raw_performed(i_p297_a11, participant_wets_the_sponge, 18, 35856048).
raw_performed(i_p297_a11, participant_wets_the_sponge, 19, 35859803).
raw_performed(i_p297_a11, participant_wets_the_sponge, 20, 35870989).
raw_performed(i_p297_a11, participant_washes_the_countertops, 21, 35872171).
raw_performed(i_p297_a11, participant_washes_the_countertops, 22, 35906882).
raw_performed(i_p297_a11, participant_washes_the_countertops, 23, 35906906).
raw_performed(i_p297_a11, participant_washes_the_countertops, 24, 35915000).
raw_performed(i_p297_a11, participant_washes_the_countertops, 25, 35916030).
raw_performed(i_p297_a11, participant_rinses_out_the_sponge, 26, 35931457).
raw_performed(i_p297_a11, participant_rinses_out_the_sponge, 27, 35931484).

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

