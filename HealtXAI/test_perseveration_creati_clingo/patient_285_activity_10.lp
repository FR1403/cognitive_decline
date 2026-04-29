% ======================================================================
% Paziente 285
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

instance(i_p285_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p285_a11, participant_wets_the_sponge, 1, 50867858).
raw_performed(i_p285_a11, participant_wets_the_sponge, 2, 50871750).
raw_performed(i_p285_a11, participant_wets_the_sponge, 3, 50875823).
raw_performed(i_p285_a11, participant_washes_the_countertops, 4, 50876388).
raw_performed(i_p285_a11, participant_washes_the_countertops, 5, 50879860).
raw_performed(i_p285_a11, participant_washes_the_countertops, 6, 50892722).
raw_performed(i_p285_a11, participant_washes_the_countertops, 7, 50900240).
raw_performed(i_p285_a11, participant_washes_the_countertops, 8, 50909789).
raw_performed(i_p285_a11, participant_washes_the_countertops, 9, 50915536).
raw_performed(i_p285_a11, participant_washes_the_countertops, 10, 50922979).
raw_performed(i_p285_a11, participant_washes_the_countertops, 11, 50924468).
raw_performed(i_p285_a11, participant_wets_the_sponge, 12, 50930231).
raw_performed(i_p285_a11, participant_washes_the_countertops, 13, 50931379).
raw_performed(i_p285_a11, participant_washes_the_countertops, 14, 50931808).
raw_performed(i_p285_a11, participant_washes_the_countertops, 15, 50941923).
raw_performed(i_p285_a11, participant_washes_the_countertops, 16, 50945848).
raw_performed(i_p285_a11, participant_washes_the_countertops, 17, 50947693).
raw_performed(i_p285_a11, participant_wets_the_sponge, 18, 50954917).
raw_performed(i_p285_a11, participant_washes_the_countertops, 19, 50956479).
raw_performed(i_p285_a11, participant_washes_the_countertops, 20, 50967629).
raw_performed(i_p285_a11, participant_rinses_out_the_sponge, 21, 50992403).
raw_performed(i_p285_a11, participant_rinses_out_the_sponge, 22, 50999901).
raw_performed(i_p285_a11, participant_dries_the_countertops, 23, 51057848).
raw_performed(i_p285_a11, participant_dries_the_countertops, 24, 51059098).
raw_performed(i_p285_a11, participant_dries_the_countertops, 25, 51065444).
raw_performed(i_p285_a11, participant_dries_the_countertops, 26, 51072950).
raw_performed(i_p285_a11, participant_dries_the_countertops, 27, 51080351).
raw_performed(i_p285_a11, participant_dries_the_countertops, 28, 51082002).
raw_performed(i_p285_a11, participant_dries_the_countertops, 29, 51089618).
raw_performed(i_p285_a11, participant_dries_the_countertops, 30, 51101027).

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

