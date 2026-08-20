% ======================================================================
% Paziente 189
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

instance(i_p189_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p189_a11, participant_wets_the_sponge, 1, 37174536).
raw_performed(i_p189_a11, participant_washes_the_countertops, 2, 37189169).
raw_performed(i_p189_a11, participant_washes_the_countertops, 3, 37194943).
raw_performed(i_p189_a11, participant_washes_the_countertops, 4, 37197855).
raw_performed(i_p189_a11, participant_washes_the_countertops, 5, 37201504).
raw_performed(i_p189_a11, participant_washes_the_countertops, 6, 37205112).
raw_performed(i_p189_a11, participant_washes_the_countertops, 7, 37218453).
raw_performed(i_p189_a11, participant_washes_the_countertops, 8, 37221166).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 9, 37223786).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 10, 37226297).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 11, 37228753).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 12, 37231215).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 13, 37233669).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 14, 37241062).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 15, 37250901).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 16, 37253358).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 17, 37273023).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 18, 37275459).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 19, 37277924).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 20, 37277943).

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

