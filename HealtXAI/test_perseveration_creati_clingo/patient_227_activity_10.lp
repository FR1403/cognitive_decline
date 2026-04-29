% ======================================================================
% Paziente 227
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

instance(i_p227_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p227_a11, participant_wets_the_sponge, 1, 52083025).
raw_performed(i_p227_a11, participant_wets_the_sponge, 2, 52085504).
raw_performed(i_p227_a11, participant_wets_the_sponge, 3, 52092839).
raw_performed(i_p227_a11, participant_wets_the_sponge, 4, 52097802).
raw_performed(i_p227_a11, participant_wets_the_sponge, 5, 52102693).
raw_performed(i_p227_a11, participant_washes_the_countertops, 6, 52108715).
raw_performed(i_p227_a11, participant_washes_the_countertops, 7, 52115984).
raw_performed(i_p227_a11, participant_washes_the_countertops, 8, 52123695).
raw_performed(i_p227_a11, participant_washes_the_countertops, 9, 52125755).
raw_performed(i_p227_a11, participant_rinses_out_the_sponge, 10, 52127253).
raw_performed(i_p227_a11, participant_rinses_out_the_sponge, 11, 52129765).
raw_performed(i_p227_a11, participant_rinses_out_the_sponge, 12, 52132217).
raw_performed(i_p227_a11, participant_dries_the_countertops, 13, 52132753).
raw_performed(i_p227_a11, participant_dries_the_countertops, 14, 52139619).
raw_performed(i_p227_a11, participant_dries_the_countertops, 15, 52146480).
raw_performed(i_p227_a11, participant_dries_the_countertops, 16, 52156459).
raw_performed(i_p227_a11, participant_dries_the_countertops, 17, 52159428).
raw_performed(i_p227_a11, participant_dries_the_countertops, 18, 52163461).
raw_performed(i_p227_a11, participant_dries_the_countertops, 19, 52165744).
raw_performed(i_p227_a11, participant_dries_the_countertops, 20, 52170831).
raw_performed(i_p227_a11, participant_dries_the_countertops, 21, 52173489).
raw_performed(i_p227_a11, participant_dries_the_countertops, 22, 52176525).
raw_performed(i_p227_a11, participant_dries_the_countertops, 23, 52183827).
raw_performed(i_p227_a11, participant_dries_the_countertops, 24, 52194466).
raw_performed(i_p227_a11, participant_dries_the_countertops, 25, 52198523).
raw_performed(i_p227_a11, participant_dries_the_countertops, 26, 52202855).
raw_performed(i_p227_a11, participant_dries_the_countertops, 27, 52210074).
raw_performed(i_p227_a11, participant_dries_the_countertops, 28, 52229325).
raw_performed(i_p227_a11, participant_dries_the_countertops, 29, 52231681).
raw_performed(i_p227_a11, participant_dries_the_countertops, 30, 52235336).
raw_performed(i_p227_a11, participant_dries_the_countertops, 31, 52269765).
raw_performed(i_p227_a11, participant_dries_the_countertops, 32, 52276713).
raw_performed(i_p227_a11, participant_dries_the_countertops, 33, 52280282).

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

