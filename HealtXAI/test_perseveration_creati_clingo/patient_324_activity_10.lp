% ======================================================================
% Paziente 324
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

instance(i_p324_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p324_a11, participant_wets_the_sponge, 1, 38659673).
raw_performed(i_p324_a11, participant_wets_the_sponge, 2, 38667165).
raw_performed(i_p324_a11, participant_wets_the_sponge, 3, 38670958).
raw_performed(i_p324_a11, participant_washes_the_countertops, 4, 38676278).
raw_performed(i_p324_a11, participant_washes_the_countertops, 5, 38679193).
raw_performed(i_p324_a11, participant_washes_the_countertops, 6, 38692159).
raw_performed(i_p324_a11, participant_washes_the_countertops, 7, 38692183).
raw_performed(i_p324_a11, participant_wets_the_sponge, 8, 38718451).
raw_performed(i_p324_a11, participant_wets_the_sponge, 9, 38718477).
raw_performed(i_p324_a11, participant_wets_the_sponge, 10, 38722201).
raw_performed(i_p324_a11, participant_wets_the_sponge, 11, 38725990).
raw_performed(i_p324_a11, participant_wets_the_sponge, 12, 38726019).
raw_performed(i_p324_a11, participant_wets_the_sponge, 13, 38729726).
raw_performed(i_p324_a11, participant_wets_the_sponge, 14, 38733462).
raw_performed(i_p324_a11, participant_wets_the_sponge, 15, 38737282).
raw_performed(i_p324_a11, participant_wets_the_sponge, 16, 38737310).
raw_performed(i_p324_a11, participant_wets_the_sponge, 17, 38746466).
raw_performed(i_p324_a11, participant_wets_the_sponge, 18, 38746493).
raw_performed(i_p324_a11, participant_washes_the_countertops, 19, 38756401).
raw_performed(i_p324_a11, participant_washes_the_countertops, 20, 38758560).
raw_performed(i_p324_a11, participant_dries_the_countertops, 21, 38770110).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 22, 38773696).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 23, 38773722).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 24, 38777500).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 25, 38777528).
raw_performed(i_p324_a11, participant_dries_the_countertops, 26, 38785709).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 27, 38787723).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 28, 38791494).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 29, 38795314).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 30, 38799071).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 31, 38799097).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 32, 38802769).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 33, 38802797).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 34, 38806573).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 35, 38806601).
raw_performed(i_p324_a11, participant_dries_the_countertops, 36, 38808640).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 37, 38815954).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 38, 38819693).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 39, 38823532).
raw_performed(i_p324_a11, participant_dries_the_countertops, 40, 38823918).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 41, 38831430).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 42, 38835139).
raw_performed(i_p324_a11, participant_dries_the_countertops, 43, 38835537).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 44, 38838913).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 45, 38842958).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 46, 38842985).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 47, 38846734).
raw_performed(i_p324_a11, participant_dries_the_countertops, 48, 38847391).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 49, 38850599).
raw_performed(i_p324_a11, participant_dries_the_countertops, 50, 38854850).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 51, 38869966).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 52, 38869993).
raw_performed(i_p324_a11, participant_rinses_out_the_sponge, 53, 38875449).
raw_performed(i_p324_a11, participant_dries_the_countertops, 54, 38876252).

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

