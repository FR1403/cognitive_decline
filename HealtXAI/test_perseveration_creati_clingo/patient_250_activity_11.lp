% ======================================================================
% Paziente 250
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

instance(i_p250_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p250_a11, participant_washes_the_countertops, 1, 38927046).
raw_performed(i_p250_a11, participant_washes_the_countertops, 2, 38934071).
raw_performed(i_p250_a11, participant_washes_the_countertops, 3, 38942023).
raw_performed(i_p250_a11, participant_washes_the_countertops, 4, 38967015).
raw_performed(i_p250_a11, participant_washes_the_countertops, 5, 38967078).
raw_performed(i_p250_a11, participant_washes_the_countertops, 6, 38979002).
raw_performed(i_p250_a11, participant_washes_the_countertops, 7, 38980023).
raw_performed(i_p250_a11, participant_washes_the_countertops, 8, 39023038).
raw_performed(i_p250_a11, participant_washes_the_countertops, 9, 39030029).
raw_performed(i_p250_a11, participant_washes_the_countertops, 10, 39037017).
raw_performed(i_p250_a11, participant_washes_the_countertops, 11, 39041035).
raw_performed(i_p250_a11, participant_washes_the_countertops, 12, 39051071).
raw_performed(i_p250_a11, participant_washes_the_countertops, 13, 39077050).
raw_performed(i_p250_a11, participant_washes_the_countertops, 14, 39087041).
raw_performed(i_p250_a11, participant_washes_the_countertops, 15, 39089021).
raw_performed(i_p250_a11, participant_washes_the_countertops, 16, 39130053).
raw_performed(i_p250_a11, participant_washes_the_countertops, 17, 39144072).
raw_performed(i_p250_a11, participant_washes_the_countertops, 18, 39173007).
raw_performed(i_p250_a11, participant_washes_the_countertops, 19, 39190049).
raw_performed(i_p250_a11, participant_washes_the_countertops, 20, 39193084).
raw_performed(i_p250_a11, participant_washes_the_countertops, 21, 39204067).
raw_performed(i_p250_a11, participant_washes_the_countertops, 22, 39212013).
raw_performed(i_p250_a11, participant_washes_the_countertops, 23, 39224016).
raw_performed(i_p250_a11, participant_washes_the_countertops, 24, 39224080).
raw_performed(i_p250_a11, participant_washes_the_countertops, 25, 39232096).
raw_performed(i_p250_a11, participant_washes_the_countertops, 26, 39245081).
raw_performed(i_p250_a11, participant_washes_the_countertops, 27, 39255098).
raw_performed(i_p250_a11, participant_washes_the_countertops, 28, 39278074).
raw_performed(i_p250_a11, participant_washes_the_countertops, 29, 39283003).
raw_performed(i_p250_a11, participant_washes_the_countertops, 30, 39304048).
raw_performed(i_p250_a11, participant_washes_the_countertops, 31, 39322036).
raw_performed(i_p250_a11, participant_washes_the_countertops, 32, 39326090).
raw_performed(i_p250_a11, participant_washes_the_countertops, 33, 39351039).
raw_performed(i_p250_a11, participant_washes_the_countertops, 34, 39357036).
raw_performed(i_p250_a11, participant_washes_the_countertops, 35, 39363064).
raw_performed(i_p250_a11, participant_washes_the_countertops, 36, 39392039).
raw_performed(i_p250_a11, participant_washes_the_countertops, 37, 39396035).
raw_performed(i_p250_a11, participant_washes_the_countertops, 38, 39402083).
raw_performed(i_p250_a11, participant_washes_the_countertops, 39, 39405011).
raw_performed(i_p250_a11, participant_washes_the_countertops, 40, 39412004).
raw_performed(i_p250_a11, participant_washes_the_countertops, 41, 39417057).
raw_performed(i_p250_a11, participant_washes_the_countertops, 42, 39443013).
raw_performed(i_p250_a11, participant_washes_the_countertops, 43, 39445002).
raw_performed(i_p250_a11, participant_washes_the_countertops, 44, 39457007).
raw_performed(i_p250_a11, participant_washes_the_countertops, 45, 39477029).
raw_performed(i_p250_a11, participant_washes_the_countertops, 46, 39478035).
raw_performed(i_p250_a11, participant_washes_the_countertops, 47, 39481051).

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

