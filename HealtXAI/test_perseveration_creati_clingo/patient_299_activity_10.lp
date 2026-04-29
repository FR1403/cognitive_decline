% ======================================================================
% Paziente 299
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

instance(i_p299_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p299_a11, participant_wets_the_sponge, 1, 55318652).
raw_performed(i_p299_a11, participant_washes_the_countertops, 2, 55328899).
raw_performed(i_p299_a11, participant_washes_the_countertops, 3, 55340289).
raw_performed(i_p299_a11, participant_washes_the_countertops, 4, 55345051).
raw_performed(i_p299_a11, participant_washes_the_countertops, 5, 55349813).
raw_performed(i_p299_a11, participant_washes_the_countertops, 6, 55361387).
raw_performed(i_p299_a11, participant_washes_the_countertops, 7, 55382250).
raw_performed(i_p299_a11, participant_washes_the_countertops, 8, 55385426).
raw_performed(i_p299_a11, participant_washes_the_countertops, 9, 55389550).
raw_performed(i_p299_a11, participant_washes_the_countertops, 10, 55396609).
raw_performed(i_p299_a11, participant_washes_the_countertops, 11, 55404830).
raw_performed(i_p299_a11, participant_washes_the_countertops, 12, 55411416).
raw_performed(i_p299_a11, participant_washes_the_countertops, 13, 55414180).
raw_performed(i_p299_a11, participant_washes_the_countertops, 14, 55419990).
raw_performed(i_p299_a11, participant_rinses_out_the_sponge, 15, 55423714).
raw_performed(i_p299_a11, participant_rinses_out_the_sponge, 16, 55426749).
raw_performed(i_p299_a11, participant_rinses_out_the_sponge, 17, 55429665).
raw_performed(i_p299_a11, participant_rinses_out_the_sponge, 18, 55438728).
raw_performed(i_p299_a11, participant_rinses_out_the_sponge, 19, 55441726).
raw_performed(i_p299_a11, participant_washes_the_countertops, 20, 55445383).
raw_performed(i_p299_a11, participant_washes_the_countertops, 21, 55446265).
raw_performed(i_p299_a11, participant_washes_the_countertops, 22, 55455072).
raw_performed(i_p299_a11, participant_washes_the_countertops, 23, 55459477).
raw_performed(i_p299_a11, participant_washes_the_countertops, 24, 55463516).
raw_performed(i_p299_a11, participant_washes_the_countertops, 25, 55467750).
raw_performed(i_p299_a11, participant_washes_the_countertops, 26, 55473651).
raw_performed(i_p299_a11, participant_washes_the_countertops, 27, 55482893).
raw_performed(i_p299_a11, participant_washes_the_countertops, 28, 55489503).
raw_performed(i_p299_a11, participant_rinses_out_the_sponge, 29, 55493644).
raw_performed(i_p299_a11, participant_dries_the_countertops, 30, 55522917).
raw_performed(i_p299_a11, participant_dries_the_countertops, 31, 55524553).
raw_performed(i_p299_a11, participant_dries_the_countertops, 32, 55539401).
raw_performed(i_p299_a11, participant_dries_the_countertops, 33, 55542757).
raw_performed(i_p299_a11, participant_dries_the_countertops, 34, 55549557).
raw_performed(i_p299_a11, participant_dries_the_countertops, 35, 55555520).

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

