% ======================================================================
% Paziente 153
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

instance(i_p153_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p153_a11, participant_wets_the_sponge, 1, 39517975).
raw_performed(i_p153_a11, participant_washes_the_countertops, 2, 39525837).
raw_performed(i_p153_a11, participant_wets_the_sponge, 3, 39529288).
raw_performed(i_p153_a11, participant_washes_the_countertops, 4, 39557724).
raw_performed(i_p153_a11, participant_washes_the_countertops, 5, 39562320).
raw_performed(i_p153_a11, participant_washes_the_countertops, 6, 39569011).
raw_performed(i_p153_a11, participant_washes_the_countertops, 7, 39570464).
raw_performed(i_p153_a11, participant_washes_the_countertops, 8, 39577233).
raw_performed(i_p153_a11, participant_washes_the_countertops, 9, 39578278).
raw_performed(i_p153_a11, participant_washes_the_countertops, 10, 39581493).
raw_performed(i_p153_a11, participant_washes_the_countertops, 11, 39588153).
raw_performed(i_p153_a11, participant_washes_the_countertops, 12, 39592110).
raw_performed(i_p153_a11, participant_wets_the_sponge, 13, 39595325).
raw_performed(i_p153_a11, participant_washes_the_countertops, 14, 39600306).
raw_performed(i_p153_a11, participant_rinses_out_the_sponge, 15, 39626340).
raw_performed(i_p153_a11, participant_rinses_out_the_sponge, 16, 39626367).
raw_performed(i_p153_a11, participant_rinses_out_the_sponge, 17, 39630063).
raw_performed(i_p153_a11, participant_dries_the_countertops, 18, 39634743).
raw_performed(i_p153_a11, participant_dries_the_countertops, 19, 39649363).
raw_performed(i_p153_a11, participant_dries_the_countertops, 20, 39657288).
raw_performed(i_p153_a11, participant_dries_the_countertops, 21, 39658077).
raw_performed(i_p153_a11, participant_dries_the_countertops, 22, 39683248).
raw_performed(i_p153_a11, participant_dries_the_countertops, 23, 39690184).
raw_performed(i_p153_a11, participant_dries_the_countertops, 24, 39692914).
raw_performed(i_p153_a11, participant_dries_the_countertops, 25, 39698400).
raw_performed(i_p153_a11, participant_dries_the_countertops, 26, 39702287).
raw_performed(i_p153_a11, participant_dries_the_countertops, 27, 39712202).

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

