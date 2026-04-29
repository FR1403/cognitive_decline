% ======================================================================
% Paziente 93
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

instance(i_p93_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p93_a11, participant_wets_the_sponge, 1, 39166091).
raw_performed(i_p93_a11, participant_wets_the_sponge, 2, 39166684).
raw_performed(i_p93_a11, participant_wets_the_sponge, 3, 39169067).
raw_performed(i_p93_a11, participant_wets_the_sponge, 4, 39169086).
raw_performed(i_p93_a11, participant_wets_the_sponge, 5, 39175007).
raw_performed(i_p93_a11, participant_wets_the_sponge, 6, 39178010).
raw_performed(i_p93_a11, participant_wets_the_sponge, 7, 39188112).
raw_performed(i_p93_a11, participant_wets_the_sponge, 8, 39190073).
raw_performed(i_p93_a11, participant_wets_the_sponge, 9, 39190092).
raw_performed(i_p93_a11, participant_wets_the_sponge, 10, 39192060).
raw_performed(i_p93_a11, participant_wets_the_sponge, 11, 39193069).
raw_performed(i_p93_a11, participant_washes_the_countertops, 12, 39198010).
raw_performed(i_p93_a11, participant_washes_the_countertops, 13, 39206004).
raw_performed(i_p93_a11, participant_washes_the_countertops, 14, 39212046).
raw_performed(i_p93_a11, participant_wets_the_sponge, 15, 39220731).
raw_performed(i_p93_a11, participant_wets_the_sponge, 16, 39220921).
raw_performed(i_p93_a11, participant_wets_the_sponge, 17, 39223075).
raw_performed(i_p93_a11, participant_wets_the_sponge, 18, 39223975).
raw_performed(i_p93_a11, participant_wets_the_sponge, 19, 39229082).
raw_performed(i_p93_a11, participant_washes_the_countertops, 20, 39233084).
raw_performed(i_p93_a11, participant_washes_the_countertops, 21, 39243072).
raw_performed(i_p93_a11, participant_washes_the_countertops, 22, 39248732).
raw_performed(i_p93_a11, participant_washes_the_countertops, 23, 39250389).
raw_performed(i_p93_a11, participant_washes_the_countertops, 24, 39251072).
raw_performed(i_p93_a11, participant_washes_the_countertops, 25, 39254542).
raw_performed(i_p93_a11, participant_washes_the_countertops, 26, 39271003).
raw_performed(i_p93_a11, participant_washes_the_countertops, 27, 39274208).
raw_performed(i_p93_a11, participant_washes_the_countertops, 28, 39278647).
raw_performed(i_p93_a11, participant_wets_the_sponge, 29, 39280070).
raw_performed(i_p93_a11, participant_wets_the_sponge, 30, 39280518).
raw_performed(i_p93_a11, participant_wets_the_sponge, 31, 39284079).
raw_performed(i_p93_a11, participant_wets_the_sponge, 32, 39284307).
raw_performed(i_p93_a11, participant_wets_the_sponge, 33, 39286087).
raw_performed(i_p93_a11, participant_wets_the_sponge, 34, 39286657).
raw_performed(i_p93_a11, participant_wets_the_sponge, 35, 39289928).
raw_performed(i_p93_a11, participant_wets_the_sponge, 36, 39295633).
raw_performed(i_p93_a11, participant_washes_the_countertops, 37, 39296002).
raw_performed(i_p93_a11, participant_washes_the_countertops, 38, 39297964).
raw_performed(i_p93_a11, participant_washes_the_countertops, 39, 39305004).
raw_performed(i_p93_a11, participant_washes_the_countertops, 40, 39305654).

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

