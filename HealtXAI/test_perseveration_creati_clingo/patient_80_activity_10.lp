% ======================================================================
% Paziente 80
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

instance(i_p80_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p80_a11, participant_wets_the_sponge, 1, 55633652).
raw_performed(i_p80_a11, participant_wets_the_sponge, 2, 55637382).
raw_performed(i_p80_a11, participant_wets_the_sponge, 3, 55641148).
raw_performed(i_p80_a11, participant_washes_the_countertops, 4, 55642744).
raw_performed(i_p80_a11, participant_washes_the_countertops, 5, 55658622).
raw_performed(i_p80_a11, participant_washes_the_countertops, 6, 55669761).
raw_performed(i_p80_a11, participant_washes_the_countertops, 7, 55673755).
raw_performed(i_p80_a11, participant_washes_the_countertops, 8, 55677738).
raw_performed(i_p80_a11, participant_washes_the_countertops, 9, 55691334).
raw_performed(i_p80_a11, participant_washes_the_countertops, 10, 55694255).
raw_performed(i_p80_a11, participant_washes_the_countertops, 11, 55699185).
raw_performed(i_p80_a11, participant_washes_the_countertops, 12, 55711129).
raw_performed(i_p80_a11, participant_washes_the_countertops, 13, 55714311).
raw_performed(i_p80_a11, participant_washes_the_countertops, 14, 55717898).
raw_performed(i_p80_a11, participant_washes_the_countertops, 15, 55732045).
raw_performed(i_p80_a11, participant_washes_the_countertops, 16, 55739728).
raw_performed(i_p80_a11, participant_washes_the_countertops, 17, 55753255).
raw_performed(i_p80_a11, participant_washes_the_countertops, 18, 55760293).
raw_performed(i_p80_a11, participant_washes_the_countertops, 19, 55775096).
raw_performed(i_p80_a11, participant_washes_the_countertops, 20, 55778476).
raw_performed(i_p80_a11, participant_washes_the_countertops, 21, 55782845).
raw_performed(i_p80_a11, participant_washes_the_countertops, 22, 55783885).
raw_performed(i_p80_a11, participant_rinses_out_the_sponge, 23, 55804965).
raw_performed(i_p80_a11, participant_rinses_out_the_sponge, 24, 55810399).
raw_performed(i_p80_a11, participant_dries_the_countertops, 25, 55814611).
raw_performed(i_p80_a11, participant_returns_the_sponge_to_the_sponge_drying_dish, 26, 55815245).
raw_performed(i_p80_a11, participant_returns_the_sponge_to_the_sponge_drying_dish, 27, 55819358).
raw_performed(i_p80_a11, participant_returns_the_sponge_to_the_sponge_drying_dish, 28, 55822250).

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

