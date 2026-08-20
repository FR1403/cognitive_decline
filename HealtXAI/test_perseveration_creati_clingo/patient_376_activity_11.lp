% ======================================================================
% Paziente 376
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

instance(i_p376_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p376_a11, participant_wets_the_sponge, 1, 54010632).
raw_performed(i_p376_a11, participant_wets_the_sponge, 2, 54013095).
raw_performed(i_p376_a11, participant_wets_the_sponge, 3, 54015576).
raw_performed(i_p376_a11, participant_washes_the_countertops, 4, 54030836).
raw_performed(i_p376_a11, participant_washes_the_countertops, 5, 54042585).
raw_performed(i_p376_a11, participant_washes_the_countertops, 6, 54045566).
raw_performed(i_p376_a11, participant_washes_the_countertops, 7, 54058522).
raw_performed(i_p376_a11, participant_washes_the_countertops, 8, 54099440).
raw_performed(i_p376_a11, participant_washes_the_countertops, 9, 54108495).
raw_performed(i_p376_a11, participant_washes_the_countertops, 10, 54116128).
raw_performed(i_p376_a11, participant_rinses_out_the_sponge, 11, 54119130).
raw_performed(i_p376_a11, participant_rinses_out_the_sponge, 12, 54119148).
raw_performed(i_p376_a11, participant_rinses_out_the_sponge, 13, 54121588).
raw_performed(i_p376_a11, participant_rinses_out_the_sponge, 14, 54124109).
raw_performed(i_p376_a11, participant_dries_the_countertops, 15, 54129954).
raw_performed(i_p376_a11, participant_dries_the_countertops, 16, 54134564).
raw_performed(i_p376_a11, participant_dries_the_countertops, 17, 54136432).
raw_performed(i_p376_a11, participant_dries_the_countertops, 18, 54153780).
raw_performed(i_p376_a11, participant_dries_the_countertops, 19, 54159390).

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

