% ======================================================================
% Paziente 354
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

instance(i_p354_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p354_a11, participant_wets_the_sponge, 1, 38497579).
raw_performed(i_p354_a11, participant_wets_the_sponge, 2, 38503189).
raw_performed(i_p354_a11, participant_wets_the_sponge, 3, 38521894).
raw_performed(i_p354_a11, participant_wets_the_sponge, 4, 38524897).
raw_performed(i_p354_a11, participant_washes_the_countertops, 5, 38527791).
raw_performed(i_p354_a11, participant_washes_the_countertops, 6, 38532849).
raw_performed(i_p354_a11, participant_washes_the_countertops, 7, 38536982).
raw_performed(i_p354_a11, participant_washes_the_countertops, 8, 38546162).
raw_performed(i_p354_a11, participant_washes_the_countertops, 9, 38568902).
raw_performed(i_p354_a11, participant_washes_the_countertops, 10, 38597387).
raw_performed(i_p354_a11, participant_washes_the_countertops, 11, 38601847).
raw_performed(i_p354_a11, participant_washes_the_countertops, 12, 38604323).
raw_performed(i_p354_a11, participant_wets_the_sponge, 13, 38613375).
raw_performed(i_p354_a11, participant_washes_the_countertops, 14, 38622475).
raw_performed(i_p354_a11, participant_washes_the_countertops, 15, 38624352).
raw_performed(i_p354_a11, participant_wets_the_sponge, 16, 38624438).
raw_performed(i_p354_a11, participant_wets_the_sponge, 17, 38650689).
raw_performed(i_p354_a11, participant_wets_the_sponge, 18, 38658933).
raw_performed(i_p354_a11, participant_washes_the_countertops, 19, 38659413).
raw_performed(i_p354_a11, participant_washes_the_countertops, 20, 38667466).
raw_performed(i_p354_a11, participant_washes_the_countertops, 21, 38674408).
raw_performed(i_p354_a11, participant_washes_the_countertops, 22, 38710960).
raw_performed(i_p354_a11, participant_washes_the_countertops, 23, 38735341).
raw_performed(i_p354_a11, participant_washes_the_countertops, 24, 38747341).
raw_performed(i_p354_a11, participant_washes_the_countertops, 25, 38750168).
raw_performed(i_p354_a11, participant_washes_the_countertops, 26, 38752387).
raw_performed(i_p354_a11, participant_washes_the_countertops, 27, 38754076).
raw_performed(i_p354_a11, participant_washes_the_countertops, 28, 38755953).
raw_performed(i_p354_a11, participant_washes_the_countertops, 29, 38757826).
raw_performed(i_p354_a11, participant_rinses_out_the_sponge, 30, 38762601).
raw_performed(i_p354_a11, participant_rinses_out_the_sponge, 31, 38767112).
raw_performed(i_p354_a11, participant_rinses_out_the_sponge, 32, 38771618).
raw_performed(i_p354_a11, participant_dries_the_countertops, 33, 38773951).
raw_performed(i_p354_a11, participant_dries_the_countertops, 34, 38778271).
raw_performed(i_p354_a11, participant_dries_the_countertops, 35, 38779933).

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

