% ======================================================================
% Paziente 285
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

instance(i_p285_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p285_a11, participant_wets_the_sponge, 1, 50867858).
raw_performed(i_p285_a11, participant_wets_the_sponge, 2, 50871750).
raw_performed(i_p285_a11, participant_wets_the_sponge, 3, 50875823).
raw_performed(i_p285_a11, participant_washes_the_countertops, 4, 50876388).
raw_performed(i_p285_a11, participant_washes_the_countertops, 5, 50879860).
raw_performed(i_p285_a11, participant_washes_the_countertops, 6, 50892722).
raw_performed(i_p285_a11, participant_washes_the_countertops, 7, 50900240).
raw_performed(i_p285_a11, participant_washes_the_countertops, 8, 50909789).
raw_performed(i_p285_a11, participant_washes_the_countertops, 9, 50915536).
raw_performed(i_p285_a11, participant_washes_the_countertops, 10, 50922979).
raw_performed(i_p285_a11, participant_washes_the_countertops, 11, 50924468).
raw_performed(i_p285_a11, participant_wets_the_sponge, 12, 50930231).
raw_performed(i_p285_a11, participant_washes_the_countertops, 13, 50931379).
raw_performed(i_p285_a11, participant_washes_the_countertops, 14, 50931808).
raw_performed(i_p285_a11, participant_washes_the_countertops, 15, 50941923).
raw_performed(i_p285_a11, participant_washes_the_countertops, 16, 50945848).
raw_performed(i_p285_a11, participant_washes_the_countertops, 17, 50947693).
raw_performed(i_p285_a11, participant_wets_the_sponge, 18, 50954917).
raw_performed(i_p285_a11, participant_washes_the_countertops, 19, 50956479).
raw_performed(i_p285_a11, participant_washes_the_countertops, 20, 50967629).
raw_performed(i_p285_a11, participant_rinses_out_the_sponge, 21, 50992403).
raw_performed(i_p285_a11, participant_rinses_out_the_sponge, 22, 50999901).
raw_performed(i_p285_a11, participant_dries_the_countertops, 23, 51057848).
raw_performed(i_p285_a11, participant_dries_the_countertops, 24, 51059098).
raw_performed(i_p285_a11, participant_dries_the_countertops, 25, 51065444).
raw_performed(i_p285_a11, participant_dries_the_countertops, 26, 51072950).
raw_performed(i_p285_a11, participant_dries_the_countertops, 27, 51080351).
raw_performed(i_p285_a11, participant_dries_the_countertops, 28, 51082002).
raw_performed(i_p285_a11, participant_dries_the_countertops, 29, 51089618).
raw_performed(i_p285_a11, participant_dries_the_countertops, 30, 51101027).

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

