% ======================================================================
% Paziente 126
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

instance(i_p126_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p126_a11, participant_wets_the_sponge, 1, 53152769).
raw_performed(i_p126_a11, participant_wets_the_sponge, 2, 53152784).
raw_performed(i_p126_a11, participant_wets_the_sponge, 3, 53156484).
raw_performed(i_p126_a11, participant_wets_the_sponge, 4, 53160343).
raw_performed(i_p126_a11, participant_wets_the_sponge, 5, 53164166).
raw_performed(i_p126_a11, participant_washes_the_countertops, 6, 53164540).
raw_performed(i_p126_a11, participant_washes_the_countertops, 7, 53172186).
raw_performed(i_p126_a11, participant_washes_the_countertops, 8, 53180608).
raw_performed(i_p126_a11, participant_washes_the_countertops, 9, 53180651).
raw_performed(i_p126_a11, participant_washes_the_countertops, 10, 53187631).
raw_performed(i_p126_a11, participant_washes_the_countertops, 11, 53195316).
raw_performed(i_p126_a11, participant_washes_the_countertops, 12, 53198989).
raw_performed(i_p126_a11, participant_rinses_out_the_sponge, 13, 53206132).
raw_performed(i_p126_a11, participant_rinses_out_the_sponge, 14, 53206145).
raw_performed(i_p126_a11, participant_dries_the_countertops, 15, 53210673).
raw_performed(i_p126_a11, participant_dries_the_countertops, 16, 53216311).
raw_performed(i_p126_a11, participant_dries_the_countertops, 17, 53220171).
raw_performed(i_p126_a11, participant_dries_the_countertops, 18, 53223626).
raw_performed(i_p126_a11, participant_dries_the_countertops, 19, 53228341).

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

