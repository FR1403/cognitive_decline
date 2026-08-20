% ======================================================================
% Paziente 71
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

instance(i_p71_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p71_a11, participant_wets_the_sponge, 1, 38631224).
raw_performed(i_p71_a11, participant_wets_the_sponge, 2, 38633697).
raw_performed(i_p71_a11, participant_wets_the_sponge, 3, 38638634).
raw_performed(i_p71_a11, participant_wets_the_sponge, 4, 38641113).
raw_performed(i_p71_a11, participant_washes_the_countertops, 5, 38642585).
raw_performed(i_p71_a11, participant_washes_the_countertops, 6, 38645577).
raw_performed(i_p71_a11, participant_washes_the_countertops, 7, 38665981).
raw_performed(i_p71_a11, participant_washes_the_countertops, 8, 38675337).
raw_performed(i_p71_a11, participant_washes_the_countertops, 9, 38682710).
raw_performed(i_p71_a11, participant_wets_the_sponge, 10, 38688048).
raw_performed(i_p71_a11, participant_wets_the_sponge, 11, 38690502).
raw_performed(i_p71_a11, participant_wets_the_sponge, 12, 38692963).
raw_performed(i_p71_a11, participant_wets_the_sponge, 13, 38695473).
raw_performed(i_p71_a11, participant_wets_the_sponge, 14, 38697897).
raw_performed(i_p71_a11, participant_wets_the_sponge, 15, 38700373).
raw_performed(i_p71_a11, participant_wets_the_sponge, 16, 38700391).
raw_performed(i_p71_a11, participant_wets_the_sponge, 17, 38702860).
raw_performed(i_p71_a11, participant_wets_the_sponge, 18, 38702890).
raw_performed(i_p71_a11, participant_washes_the_countertops, 19, 38708011).
raw_performed(i_p71_a11, participant_washes_the_countertops, 20, 38708029).
raw_performed(i_p71_a11, participant_washes_the_countertops, 21, 38711737).
raw_performed(i_p71_a11, participant_washes_the_countertops, 22, 38715322).
raw_performed(i_p71_a11, participant_washes_the_countertops, 23, 38717218).
raw_performed(i_p71_a11, participant_wets_the_sponge, 24, 38720135).
raw_performed(i_p71_a11, participant_wets_the_sponge, 25, 38720167).
raw_performed(i_p71_a11, participant_washes_the_countertops, 26, 38722090).
raw_performed(i_p71_a11, participant_washes_the_countertops, 27, 38733117).
raw_performed(i_p71_a11, participant_wets_the_sponge, 28, 38739919).
raw_performed(i_p71_a11, participant_washes_the_countertops, 29, 38740885).
raw_performed(i_p71_a11, participant_washes_the_countertops, 30, 38754041).
raw_performed(i_p71_a11, participant_rinses_out_the_sponge, 31, 38774460).
raw_performed(i_p71_a11, participant_rinses_out_the_sponge, 32, 38774479).

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

