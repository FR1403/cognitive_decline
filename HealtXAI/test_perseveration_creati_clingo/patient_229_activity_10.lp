% ======================================================================
% Paziente 229
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

instance(i_p229_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p229_a11, participant_wets_the_sponge, 1, 55221129).
raw_performed(i_p229_a11, participant_washes_the_countertops, 2, 55229186).
raw_performed(i_p229_a11, participant_wets_the_sponge, 3, 55244030).
raw_performed(i_p229_a11, participant_wets_the_sponge, 4, 55251691).
raw_performed(i_p229_a11, participant_wets_the_sponge, 5, 55255475).
raw_performed(i_p229_a11, participant_wets_the_sponge, 6, 55259192).
raw_performed(i_p229_a11, participant_washes_the_countertops, 7, 55317071).
raw_performed(i_p229_a11, participant_washes_the_countertops, 8, 55317097).
raw_performed(i_p229_a11, participant_washes_the_countertops, 9, 55325877).
raw_performed(i_p229_a11, participant_washes_the_countertops, 10, 55330194).
raw_performed(i_p229_a11, participant_wets_the_sponge, 11, 55336294).
raw_performed(i_p229_a11, participant_wets_the_sponge, 12, 55341726).
raw_performed(i_p229_a11, participant_wets_the_sponge, 13, 55345487).
raw_performed(i_p229_a11, participant_washes_the_countertops, 14, 55347270).
raw_performed(i_p229_a11, participant_wets_the_sponge, 15, 55353093).
raw_performed(i_p229_a11, participant_wets_the_sponge, 16, 55357341).
raw_performed(i_p229_a11, participant_washes_the_countertops, 17, 55372867).
raw_performed(i_p229_a11, participant_washes_the_countertops, 18, 55373503).
raw_performed(i_p229_a11, participant_washes_the_countertops, 19, 55384300).
raw_performed(i_p229_a11, participant_washes_the_countertops, 20, 55388193).
raw_performed(i_p229_a11, participant_washes_the_countertops, 21, 55405467).
raw_performed(i_p229_a11, participant_washes_the_countertops, 22, 55409081).
raw_performed(i_p229_a11, participant_washes_the_countertops, 23, 55424564).
raw_performed(i_p229_a11, participant_washes_the_countertops, 24, 55432501).
raw_performed(i_p229_a11, participant_washes_the_countertops, 25, 55439859).
raw_performed(i_p229_a11, participant_washes_the_countertops, 26, 55453081).
raw_performed(i_p229_a11, participant_wets_the_sponge, 27, 55458824).
raw_performed(i_p229_a11, participant_wets_the_sponge, 28, 55458852).
raw_performed(i_p229_a11, participant_wets_the_sponge, 29, 55462664).
raw_performed(i_p229_a11, participant_wets_the_sponge, 30, 55462694).
raw_performed(i_p229_a11, participant_wets_the_sponge, 31, 55468171).
raw_performed(i_p229_a11, participant_wets_the_sponge, 32, 55468201).
raw_performed(i_p229_a11, participant_washes_the_countertops, 33, 55472271).
raw_performed(i_p229_a11, participant_washes_the_countertops, 34, 55476050).
raw_performed(i_p229_a11, participant_washes_the_countertops, 35, 55487587).
raw_performed(i_p229_a11, participant_washes_the_countertops, 36, 55523323).
raw_performed(i_p229_a11, participant_washes_the_countertops, 37, 55533191).
raw_performed(i_p229_a11, participant_washes_the_countertops, 38, 55541081).
raw_performed(i_p229_a11, participant_rinses_out_the_sponge, 39, 55546915).
raw_performed(i_p229_a11, participant_rinses_out_the_sponge, 40, 55546943).

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

