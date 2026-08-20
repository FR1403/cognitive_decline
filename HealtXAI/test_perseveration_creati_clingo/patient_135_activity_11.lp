% ======================================================================
% Paziente 135
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

instance(i_p135_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p135_a11, participant_wets_the_sponge, 1, 45253991).
raw_performed(i_p135_a11, participant_wets_the_sponge, 2, 45254018).
raw_performed(i_p135_a11, participant_washes_the_countertops, 3, 45255972).
raw_performed(i_p135_a11, participant_washes_the_countertops, 4, 45267433).
raw_performed(i_p135_a11, participant_washes_the_countertops, 5, 45271461).
raw_performed(i_p135_a11, participant_washes_the_countertops, 6, 45295542).
raw_performed(i_p135_a11, participant_washes_the_countertops, 7, 45321588).
raw_performed(i_p135_a11, participant_washes_the_countertops, 8, 45329561).
raw_performed(i_p135_a11, participant_washes_the_countertops, 9, 45337684).
raw_performed(i_p135_a11, participant_washes_the_countertops, 10, 45339160).
raw_performed(i_p135_a11, participant_wets_the_sponge, 11, 45344741).
raw_performed(i_p135_a11, participant_wets_the_sponge, 12, 45344769).
raw_performed(i_p135_a11, participant_wets_the_sponge, 13, 45348556).
raw_performed(i_p135_a11, participant_washes_the_countertops, 14, 45352673).
raw_performed(i_p135_a11, participant_wets_the_sponge, 15, 45386074).
raw_performed(i_p135_a11, participant_wets_the_sponge, 16, 45389894).
raw_performed(i_p135_a11, participant_wets_the_sponge, 17, 45393606).
raw_performed(i_p135_a11, participant_washes_the_countertops, 18, 45393998).
raw_performed(i_p135_a11, participant_washes_the_countertops, 19, 45400528).
raw_performed(i_p135_a11, participant_washes_the_countertops, 20, 45419281).
raw_performed(i_p135_a11, participant_rinses_out_the_sponge, 21, 45437239).
raw_performed(i_p135_a11, participant_rinses_out_the_sponge, 22, 45440999).
raw_performed(i_p135_a11, participant_rinses_out_the_sponge, 23, 45448550).
raw_performed(i_p135_a11, participant_rinses_out_the_sponge, 24, 45452327).

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

