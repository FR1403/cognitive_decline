% ======================================================================
% Paziente 274
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

action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 17266).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 91).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 276069).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 103550).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 156154).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 123649).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 100328).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 4392).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p274_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p274_a11, participant_wets_the_sponge, 1, 36597782).
raw_performed(i_p274_a11, participant_washes_the_countertops, 2, 36606435).
raw_performed(i_p274_a11, participant_washes_the_countertops, 3, 36615030).
raw_performed(i_p274_a11, participant_washes_the_countertops, 4, 36619032).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 5, 36628465).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 6, 36632309).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 7, 36660560).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 8, 36660586).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 9, 36664347).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 10, 36664374).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 11, 36664718).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 12, 36668050).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 13, 36668076).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 14, 36672162).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 15, 36675550).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 16, 36675577).
raw_performed(i_p274_a11, participant_rinses_out_the_sponge, 17, 36679351).
raw_performed(i_p274_a11, participant_dries_the_countertops, 18, 36689724).
raw_performed(i_p274_a11, participant_dries_the_countertops, 19, 36689748).
raw_performed(i_p274_a11, participant_dries_the_countertops, 20, 36700681).
raw_performed(i_p274_a11, participant_dries_the_countertops, 21, 36702352).
raw_performed(i_p274_a11, participant_dries_the_countertops, 22, 36704605).
raw_performed(i_p274_a11, participant_dries_the_countertops, 23, 36712062).
raw_performed(i_p274_a11, participant_dries_the_countertops, 24, 36717312).

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

