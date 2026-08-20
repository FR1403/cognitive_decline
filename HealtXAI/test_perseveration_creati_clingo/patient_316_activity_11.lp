% ======================================================================
% Paziente 316
% Attivita: Wash and dry all kitchen countertop surfaces.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(wash_and_dry_all_kitchen_countertop_surfaces).

action(participant_locates_the_sponge).
action(participant_locates_the_dish_detergent).
action(participant_wets_the_sponge).
action(participant_lathers_the_sponge_with_the_detergent).
action(participant_washes_the_countertops).
action(participant_rinses_out_the_sponge).
action(participant_dries_the_countertops).
action(participant_returns_the_sponge_to_the_sponge_drying_dish).

action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 10).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 10).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 12).

expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 1).

action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 18175).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 92).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 230741).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 104991).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 120427).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 94710).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 87326).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 4319).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p316_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p316_a11, participant_wets_the_sponge, 1, 56890997).
raw_performed(i_p316_a11, participant_washes_the_countertops, 2, 56908332).
raw_performed(i_p316_a11, participant_washes_the_countertops, 3, 56912512).
raw_performed(i_p316_a11, participant_washes_the_countertops, 4, 56924047).
raw_performed(i_p316_a11, participant_washes_the_countertops, 5, 56942820).
raw_performed(i_p316_a11, participant_washes_the_countertops, 6, 56947309).
raw_performed(i_p316_a11, participant_washes_the_countertops, 7, 56950542).
raw_performed(i_p316_a11, participant_washes_the_countertops, 8, 56958052).
raw_performed(i_p316_a11, participant_washes_the_countertops, 9, 56978714).
raw_performed(i_p316_a11, participant_washes_the_countertops, 10, 56986390).
raw_performed(i_p316_a11, participant_washes_the_countertops, 11, 56990179).
raw_performed(i_p316_a11, participant_washes_the_countertops, 12, 57003013).
raw_performed(i_p316_a11, participant_rinses_out_the_sponge, 13, 57020118).
raw_performed(i_p316_a11, participant_rinses_out_the_sponge, 14, 57023859).
raw_performed(i_p316_a11, participant_rinses_out_the_sponge, 15, 57027643).
raw_performed(i_p316_a11, participant_rinses_out_the_sponge, 16, 57048089).
raw_performed(i_p316_a11, participant_rinses_out_the_sponge, 17, 57048117).
raw_performed(i_p316_a11, participant_rinses_out_the_sponge, 18, 57051891).
raw_performed(i_p316_a11, participant_rinses_out_the_sponge, 19, 57051918).
raw_performed(i_p316_a11, participant_dries_the_countertops, 20, 57053920).
raw_performed(i_p316_a11, participant_dries_the_countertops, 21, 57080161).
raw_performed(i_p316_a11, participant_dries_the_countertops, 22, 57081197).
raw_performed(i_p316_a11, participant_dries_the_countertops, 23, 57084723).
raw_performed(i_p316_a11, participant_dries_the_countertops, 24, 57091759).
raw_performed(i_p316_a11, participant_dries_the_countertops, 25, 57112007).

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

