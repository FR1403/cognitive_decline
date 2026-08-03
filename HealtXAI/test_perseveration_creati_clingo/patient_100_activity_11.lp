% ======================================================================
% Paziente 100
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

instance(i_p100_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p100_a11, participant_wets_the_sponge, 1, 56461071).
raw_performed(i_p100_a11, participant_washes_the_countertops, 2, 56474023).
raw_performed(i_p100_a11, participant_washes_the_countertops, 3, 56486019).
raw_performed(i_p100_a11, participant_washes_the_countertops, 4, 56491010).
raw_performed(i_p100_a11, participant_washes_the_countertops, 5, 56496820).
raw_performed(i_p100_a11, participant_washes_the_countertops, 6, 56498003).
raw_performed(i_p100_a11, participant_wets_the_sponge, 7, 56515066).
raw_performed(i_p100_a11, participant_wets_the_sponge, 8, 56518540).
raw_performed(i_p100_a11, participant_wets_the_sponge, 9, 56521006).
raw_performed(i_p100_a11, participant_wets_the_sponge, 10, 56524066).
raw_performed(i_p100_a11, participant_wets_the_sponge, 11, 56530066).
raw_performed(i_p100_a11, participant_wets_the_sponge, 12, 56531035).
raw_performed(i_p100_a11, participant_wets_the_sponge, 13, 56533072).
raw_performed(i_p100_a11, participant_washes_the_countertops, 14, 56534033).
raw_performed(i_p100_a11, participant_washes_the_countertops, 15, 56539113).
raw_performed(i_p100_a11, participant_washes_the_countertops, 16, 56544053).
raw_performed(i_p100_a11, participant_washes_the_countertops, 17, 56544077).
raw_performed(i_p100_a11, participant_washes_the_countertops, 18, 56546845).
raw_performed(i_p100_a11, participant_washes_the_countertops, 19, 56566014).
raw_performed(i_p100_a11, participant_washes_the_countertops, 20, 56568065).
raw_performed(i_p100_a11, participant_wets_the_sponge, 21, 56569060).
raw_performed(i_p100_a11, participant_wets_the_sponge, 22, 56572632).
raw_performed(i_p100_a11, participant_wets_the_sponge, 23, 56575072).
raw_performed(i_p100_a11, participant_wets_the_sponge, 24, 56578600).
raw_performed(i_p100_a11, participant_wets_the_sponge, 25, 56581058).
raw_performed(i_p100_a11, participant_washes_the_countertops, 26, 56587002).
raw_performed(i_p100_a11, participant_washes_the_countertops, 27, 56600035).
raw_performed(i_p100_a11, participant_washes_the_countertops, 28, 56604009).
raw_performed(i_p100_a11, participant_washes_the_countertops, 29, 56607060).
raw_performed(i_p100_a11, participant_washes_the_countertops, 30, 56611084).
raw_performed(i_p100_a11, participant_washes_the_countertops, 31, 56622050).
raw_performed(i_p100_a11, participant_washes_the_countertops, 32, 56622907).

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

