% ======================================================================
% Paziente 73
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

instance(i_p73_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p73_a11, participant_wets_the_sponge, 1, 51149798).
raw_performed(i_p73_a11, participant_wets_the_sponge, 2, 51153715).
raw_performed(i_p73_a11, participant_wets_the_sponge, 3, 51157497).
raw_performed(i_p73_a11, participant_wets_the_sponge, 4, 51161262).
raw_performed(i_p73_a11, participant_wets_the_sponge, 5, 51165008).
raw_performed(i_p73_a11, participant_wets_the_sponge, 6, 51176269).
raw_performed(i_p73_a11, participant_washes_the_countertops, 7, 51176860).
raw_performed(i_p73_a11, participant_washes_the_countertops, 8, 51176884).
raw_performed(i_p73_a11, participant_washes_the_countertops, 9, 51184752).
raw_performed(i_p73_a11, participant_washes_the_countertops, 10, 51192856).
raw_performed(i_p73_a11, participant_washes_the_countertops, 11, 51195628).
raw_performed(i_p73_a11, participant_washes_the_countertops, 12, 51203212).
raw_performed(i_p73_a11, participant_washes_the_countertops, 13, 51206983).
raw_performed(i_p73_a11, participant_washes_the_countertops, 14, 51216662).
raw_performed(i_p73_a11, participant_washes_the_countertops, 15, 51228313).
raw_performed(i_p73_a11, participant_washes_the_countertops, 16, 51235498).
raw_performed(i_p73_a11, participant_washes_the_countertops, 17, 51248831).
raw_performed(i_p73_a11, participant_washes_the_countertops, 18, 51248875).
raw_performed(i_p73_a11, participant_rinses_out_the_sponge, 19, 51254456).
raw_performed(i_p73_a11, participant_rinses_out_the_sponge, 20, 51258114).
raw_performed(i_p73_a11, participant_rinses_out_the_sponge, 21, 51273346).
raw_performed(i_p73_a11, participant_dries_the_countertops, 22, 51288074).
raw_performed(i_p73_a11, participant_dries_the_countertops, 23, 51303774).
raw_performed(i_p73_a11, participant_dries_the_countertops, 24, 51313921).
raw_performed(i_p73_a11, participant_dries_the_countertops, 25, 51321490).
raw_performed(i_p73_a11, participant_dries_the_countertops, 26, 51322120).
raw_performed(i_p73_a11, participant_dries_the_countertops, 27, 51327459).
raw_performed(i_p73_a11, participant_dries_the_countertops, 28, 51331102).
raw_performed(i_p73_a11, participant_dries_the_countertops, 29, 51338702).
raw_performed(i_p73_a11, participant_dries_the_countertops, 30, 51343774).
raw_performed(i_p73_a11, participant_dries_the_countertops, 31, 51361642).
raw_performed(i_p73_a11, participant_dries_the_countertops, 32, 51363974).
raw_performed(i_p73_a11, participant_dries_the_countertops, 33, 51365830).
raw_performed(i_p73_a11, participant_dries_the_countertops, 34, 51365854).

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

