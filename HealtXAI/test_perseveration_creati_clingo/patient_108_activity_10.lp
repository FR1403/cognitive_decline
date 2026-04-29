% ======================================================================
% Paziente 108
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

instance(i_p108_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p108_a11, participant_wets_the_sponge, 1, 36923982).
raw_performed(i_p108_a11, participant_wets_the_sponge, 2, 36936288).
raw_performed(i_p108_a11, participant_wets_the_sponge, 3, 36938754).
raw_performed(i_p108_a11, participant_wets_the_sponge, 4, 36943671).
raw_performed(i_p108_a11, participant_washes_the_countertops, 5, 36956406).
raw_performed(i_p108_a11, participant_washes_the_countertops, 6, 36964383).
raw_performed(i_p108_a11, participant_washes_the_countertops, 7, 36968331).
raw_performed(i_p108_a11, participant_washes_the_countertops, 8, 36969142).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 9, 36973274).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 10, 36975752).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 11, 36985620).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 12, 37002863).
raw_performed(i_p108_a11, participant_washes_the_countertops, 13, 37004001).
raw_performed(i_p108_a11, participant_washes_the_countertops, 14, 37015698).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 15, 37030023).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 16, 37030045).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 17, 37032484).
raw_performed(i_p108_a11, participant_washes_the_countertops, 18, 37047054).
raw_performed(i_p108_a11, participant_washes_the_countertops, 19, 37072644).
raw_performed(i_p108_a11, participant_washes_the_countertops, 20, 37077639).
raw_performed(i_p108_a11, participant_washes_the_countertops, 21, 37080551).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 22, 37084209).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 23, 37084228).
raw_performed(i_p108_a11, participant_rinses_out_the_sponge, 24, 37086662).

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

