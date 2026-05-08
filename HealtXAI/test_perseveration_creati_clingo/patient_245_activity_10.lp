% ======================================================================
% Paziente 245
% Attività: Wash and dry all kitchen countertop surfaces.
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

action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 18000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 18000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p245_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p245_a11, participant_washes_the_countertops, 1, 39226072).
raw_performed(i_p245_a11, participant_washes_the_countertops, 2, 39228627).
raw_performed(i_p245_a11, participant_washes_the_countertops, 3, 39244927).
raw_performed(i_p245_a11, participant_washes_the_countertops, 4, 39248669).
raw_performed(i_p245_a11, participant_washes_the_countertops, 5, 39274704).
raw_performed(i_p245_a11, participant_washes_the_countertops, 6, 39279062).
raw_performed(i_p245_a11, participant_washes_the_countertops, 7, 39306354).
raw_performed(i_p245_a11, participant_washes_the_countertops, 8, 39310272).
raw_performed(i_p245_a11, participant_washes_the_countertops, 9, 39324722).
raw_performed(i_p245_a11, participant_washes_the_countertops, 10, 39345305).
raw_performed(i_p245_a11, participant_wets_the_sponge, 11, 39365816).
raw_performed(i_p245_a11, participant_rinses_out_the_sponge, 12, 39384765).
raw_performed(i_p245_a11, participant_rinses_out_the_sponge, 13, 39384778).
raw_performed(i_p245_a11, participant_rinses_out_the_sponge, 14, 39392174).
raw_performed(i_p245_a11, participant_dries_the_countertops, 15, 39405222).
raw_performed(i_p245_a11, participant_dries_the_countertops, 16, 39416899).
raw_performed(i_p245_a11, participant_dries_the_countertops, 17, 39447404).
raw_performed(i_p245_a11, participant_dries_the_countertops, 18, 39470236).
raw_performed(i_p245_a11, participant_dries_the_countertops, 19, 39470665).
raw_performed(i_p245_a11, participant_dries_the_countertops, 20, 39485371).
raw_performed(i_p245_a11, participant_dries_the_countertops, 21, 39493802).
raw_performed(i_p245_a11, participant_dries_the_countertops, 22, 39499772).
raw_performed(i_p245_a11, participant_dries_the_countertops, 23, 39506032).
raw_performed(i_p245_a11, participant_dries_the_countertops, 24, 39520582).
raw_performed(i_p245_a11, participant_dries_the_countertops, 25, 39524427).
raw_performed(i_p245_a11, participant_dries_the_countertops, 26, 39531871).
raw_performed(i_p245_a11, participant_dries_the_countertops, 27, 39539291).
raw_performed(i_p245_a11, participant_dries_the_countertops, 28, 39543061).
raw_performed(i_p245_a11, participant_dries_the_countertops, 29, 39558233).
raw_performed(i_p245_a11, participant_dries_the_countertops, 30, 39559267).
raw_performed(i_p245_a11, participant_dries_the_countertops, 31, 39563654).
raw_performed(i_p245_a11, participant_dries_the_countertops, 32, 39576322).
raw_performed(i_p245_a11, participant_dries_the_countertops, 33, 39580265).

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

