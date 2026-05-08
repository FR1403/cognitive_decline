% ======================================================================
% Paziente 231
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

instance(i_p231_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p231_a11, participant_wets_the_sponge, 1, 39576992).
raw_performed(i_p231_a11, participant_washes_the_countertops, 2, 39588749).
raw_performed(i_p231_a11, participant_washes_the_countertops, 3, 39589265).
raw_performed(i_p231_a11, participant_washes_the_countertops, 4, 39606332).
raw_performed(i_p231_a11, participant_washes_the_countertops, 5, 39608623).
raw_performed(i_p231_a11, participant_wets_the_sponge, 6, 39616360).
raw_performed(i_p231_a11, participant_washes_the_countertops, 7, 39620933).
raw_performed(i_p231_a11, participant_washes_the_countertops, 8, 39625404).
raw_performed(i_p231_a11, participant_washes_the_countertops, 9, 39638785).
raw_performed(i_p231_a11, participant_washes_the_countertops, 10, 39646617).
raw_performed(i_p231_a11, participant_wets_the_sponge, 11, 39648294).
raw_performed(i_p231_a11, participant_wets_the_sponge, 12, 39650750).
raw_performed(i_p231_a11, participant_washes_the_countertops, 13, 39657781).
raw_performed(i_p231_a11, participant_washes_the_countertops, 14, 39674744).
raw_performed(i_p231_a11, participant_wets_the_sponge, 15, 39687631).
raw_performed(i_p231_a11, participant_wets_the_sponge, 16, 39690096).
raw_performed(i_p231_a11, participant_wets_the_sponge, 17, 39695012).
raw_performed(i_p231_a11, participant_wets_the_sponge, 18, 39699926).
raw_performed(i_p231_a11, participant_washes_the_countertops, 19, 39701812).
raw_performed(i_p231_a11, participant_washes_the_countertops, 20, 39702345).
raw_performed(i_p231_a11, participant_washes_the_countertops, 21, 39716207).
raw_performed(i_p231_a11, participant_washes_the_countertops, 22, 39722668).
raw_performed(i_p231_a11, participant_washes_the_countertops, 23, 39724939).
raw_performed(i_p231_a11, participant_wets_the_sponge, 24, 39729495).
raw_performed(i_p231_a11, participant_wets_the_sponge, 25, 39731952).
raw_performed(i_p231_a11, participant_wets_the_sponge, 26, 39734398).
raw_performed(i_p231_a11, participant_wets_the_sponge, 27, 39736848).
raw_performed(i_p231_a11, participant_washes_the_countertops, 28, 39737187).
raw_performed(i_p231_a11, participant_washes_the_countertops, 29, 39738483).
raw_performed(i_p231_a11, participant_washes_the_countertops, 30, 39746206).
raw_performed(i_p231_a11, participant_washes_the_countertops, 31, 39753221).
raw_performed(i_p231_a11, participant_wets_the_sponge, 32, 39756519).
raw_performed(i_p231_a11, participant_washes_the_countertops, 33, 39757525).
raw_performed(i_p231_a11, participant_washes_the_countertops, 34, 39767872).
raw_performed(i_p231_a11, participant_wets_the_sponge, 35, 39778594).
raw_performed(i_p231_a11, participant_wets_the_sponge, 36, 39788484).
raw_performed(i_p231_a11, participant_washes_the_countertops, 37, 39789134).
raw_performed(i_p231_a11, participant_washes_the_countertops, 38, 39790180).
raw_performed(i_p231_a11, participant_wets_the_sponge, 39, 39790966).
raw_performed(i_p231_a11, participant_wets_the_sponge, 40, 39793406).
raw_performed(i_p231_a11, participant_washes_the_countertops, 41, 39794666).
raw_performed(i_p231_a11, participant_washes_the_countertops, 42, 39795163).
raw_performed(i_p231_a11, participant_rinses_out_the_sponge, 43, 39798326).
raw_performed(i_p231_a11, participant_rinses_out_the_sponge, 44, 39808161).
raw_performed(i_p231_a11, participant_rinses_out_the_sponge, 45, 39810629).
raw_performed(i_p231_a11, participant_dries_the_countertops, 46, 39811546).
raw_performed(i_p231_a11, participant_dries_the_countertops, 47, 39817580).
raw_performed(i_p231_a11, participant_dries_the_countertops, 48, 39823385).
raw_performed(i_p231_a11, participant_dries_the_countertops, 49, 39825168).
raw_performed(i_p231_a11, participant_dries_the_countertops, 50, 39833240).
raw_performed(i_p231_a11, participant_dries_the_countertops, 51, 39848526).
raw_performed(i_p231_a11, participant_dries_the_countertops, 52, 39851506).

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

