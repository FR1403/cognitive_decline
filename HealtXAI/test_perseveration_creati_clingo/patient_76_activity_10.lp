% ======================================================================
% Paziente 76
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

instance(i_p76_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p76_a11, participant_washes_the_countertops, 1, 37974095).
raw_performed(i_p76_a11, participant_washes_the_countertops, 2, 38054027).
raw_performed(i_p76_a11, participant_washes_the_countertops, 3, 38095092).
raw_performed(i_p76_a11, participant_washes_the_countertops, 4, 38108026).
raw_performed(i_p76_a11, participant_washes_the_countertops, 5, 38113030).
raw_performed(i_p76_a11, participant_washes_the_countertops, 6, 38114068).
raw_performed(i_p76_a11, participant_washes_the_countertops, 7, 38120002).
raw_performed(i_p76_a11, participant_washes_the_countertops, 8, 38126014).
raw_performed(i_p76_a11, participant_washes_the_countertops, 9, 38133023).
raw_performed(i_p76_a11, participant_washes_the_countertops, 10, 38137006).
raw_performed(i_p76_a11, participant_washes_the_countertops, 11, 38140068).
raw_performed(i_p76_a11, participant_washes_the_countertops, 12, 38147005).
raw_performed(i_p76_a11, participant_washes_the_countertops, 13, 38158091).
raw_performed(i_p76_a11, participant_washes_the_countertops, 14, 38161002).
raw_performed(i_p76_a11, participant_washes_the_countertops, 15, 38166000).
raw_performed(i_p76_a11, participant_washes_the_countertops, 16, 38169064).
raw_performed(i_p76_a11, participant_washes_the_countertops, 17, 38174050).
raw_performed(i_p76_a11, participant_washes_the_countertops, 18, 38176016).
raw_performed(i_p76_a11, participant_washes_the_countertops, 19, 38178001).
raw_performed(i_p76_a11, participant_washes_the_countertops, 20, 38186020).
raw_performed(i_p76_a11, participant_washes_the_countertops, 21, 38190012).
raw_performed(i_p76_a11, participant_washes_the_countertops, 22, 38194003).
raw_performed(i_p76_a11, participant_washes_the_countertops, 23, 38194075).
raw_performed(i_p76_a11, participant_washes_the_countertops, 24, 38201023).
raw_performed(i_p76_a11, participant_washes_the_countertops, 25, 38206004).
raw_performed(i_p76_a11, participant_washes_the_countertops, 26, 38242043).
raw_performed(i_p76_a11, participant_washes_the_countertops, 27, 38252040).
raw_performed(i_p76_a11, participant_washes_the_countertops, 28, 38263061).
raw_performed(i_p76_a11, participant_washes_the_countertops, 29, 38264051).
raw_performed(i_p76_a11, participant_washes_the_countertops, 30, 38269090).
raw_performed(i_p76_a11, participant_washes_the_countertops, 31, 38271027).
raw_performed(i_p76_a11, participant_washes_the_countertops, 32, 38286093).
raw_performed(i_p76_a11, participant_washes_the_countertops, 33, 38297021).
raw_performed(i_p76_a11, participant_washes_the_countertops, 34, 38313044).
raw_performed(i_p76_a11, participant_washes_the_countertops, 35, 38317064).
raw_performed(i_p76_a11, participant_washes_the_countertops, 36, 38322014).
raw_performed(i_p76_a11, participant_washes_the_countertops, 37, 38327083).
raw_performed(i_p76_a11, participant_washes_the_countertops, 38, 38332030).
raw_performed(i_p76_a11, participant_washes_the_countertops, 39, 38346079).
raw_performed(i_p76_a11, participant_washes_the_countertops, 40, 38357098).
raw_performed(i_p76_a11, participant_washes_the_countertops, 41, 38362081).
raw_performed(i_p76_a11, participant_washes_the_countertops, 42, 38366044).

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

