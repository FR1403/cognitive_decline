% ======================================================================
% Paziente 174
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

instance(i_p174_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p174_a11, participant_wets_the_sponge, 1, 38253568).
raw_performed(i_p174_a11, participant_wets_the_sponge, 2, 38257335).
raw_performed(i_p174_a11, participant_washes_the_countertops, 3, 38261515).
raw_performed(i_p174_a11, participant_washes_the_countertops, 4, 38266045).
raw_performed(i_p174_a11, participant_washes_the_countertops, 5, 38272978).
raw_performed(i_p174_a11, participant_washes_the_countertops, 6, 38291789).
raw_performed(i_p174_a11, participant_washes_the_countertops, 7, 38308375).
raw_performed(i_p174_a11, participant_washes_the_countertops, 8, 38312333).
raw_performed(i_p174_a11, participant_washes_the_countertops, 9, 38313795).
raw_performed(i_p174_a11, participant_washes_the_countertops, 10, 38319669).
raw_performed(i_p174_a11, participant_washes_the_countertops, 11, 38330795).
raw_performed(i_p174_a11, participant_washes_the_countertops, 12, 38346060).
raw_performed(i_p174_a11, participant_washes_the_countertops, 13, 38351792).
raw_performed(i_p174_a11, participant_washes_the_countertops, 14, 38362939).
raw_performed(i_p174_a11, participant_washes_the_countertops, 15, 38365033).
raw_performed(i_p174_a11, participant_washes_the_countertops, 16, 38369382).
raw_performed(i_p174_a11, participant_washes_the_countertops, 17, 38374704).
raw_performed(i_p174_a11, participant_washes_the_countertops, 18, 38376808).
raw_performed(i_p174_a11, participant_washes_the_countertops, 19, 38377773).
raw_performed(i_p174_a11, participant_rinses_out_the_sponge, 20, 38441917).
raw_performed(i_p174_a11, participant_dries_the_countertops, 21, 38484632).
raw_performed(i_p174_a11, participant_dries_the_countertops, 22, 38487456).
raw_performed(i_p174_a11, participant_dries_the_countertops, 23, 38489366).
raw_performed(i_p174_a11, participant_dries_the_countertops, 24, 38500785).
raw_performed(i_p174_a11, participant_dries_the_countertops, 25, 38501637).
raw_performed(i_p174_a11, participant_dries_the_countertops, 26, 38504397).
raw_performed(i_p174_a11, participant_dries_the_countertops, 27, 38511992).
raw_performed(i_p174_a11, participant_dries_the_countertops, 28, 38515694).

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

