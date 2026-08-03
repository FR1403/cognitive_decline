% ======================================================================
% Paziente 127
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

instance(i_p127_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p127_a11, participant_wets_the_sponge, 1, 39216754).
raw_performed(i_p127_a11, participant_wets_the_sponge, 2, 39219678).
raw_performed(i_p127_a11, participant_wets_the_sponge, 3, 39222063).
raw_performed(i_p127_a11, participant_wets_the_sponge, 4, 39225089).
raw_performed(i_p127_a11, participant_wets_the_sponge, 5, 39228672).
raw_performed(i_p127_a11, participant_wets_the_sponge, 6, 39231808).
raw_performed(i_p127_a11, participant_wets_the_sponge, 7, 39234006).
raw_performed(i_p127_a11, participant_wets_the_sponge, 8, 39237886).
raw_performed(i_p127_a11, participant_washes_the_countertops, 9, 39250992).
raw_performed(i_p127_a11, participant_washes_the_countertops, 10, 39254265).
raw_performed(i_p127_a11, participant_washes_the_countertops, 11, 39262000).
raw_performed(i_p127_a11, participant_washes_the_countertops, 12, 39274558).
raw_performed(i_p127_a11, participant_wets_the_sponge, 13, 39276776).
raw_performed(i_p127_a11, participant_wets_the_sponge, 14, 39279797).
raw_performed(i_p127_a11, participant_wets_the_sponge, 15, 39282064).
raw_performed(i_p127_a11, participant_wets_the_sponge, 16, 39288073).
raw_performed(i_p127_a11, participant_washes_the_countertops, 17, 39290752).
raw_performed(i_p127_a11, participant_washes_the_countertops, 18, 39298058).
raw_performed(i_p127_a11, participant_washes_the_countertops, 19, 39299092).
raw_performed(i_p127_a11, participant_washes_the_countertops, 20, 39305144).
raw_performed(i_p127_a11, participant_washes_the_countertops, 21, 39317000).
raw_performed(i_p127_a11, participant_washes_the_countertops, 22, 39329011).
raw_performed(i_p127_a11, participant_washes_the_countertops, 23, 39333034).
raw_performed(i_p127_a11, participant_washes_the_countertops, 24, 39337948).
raw_performed(i_p127_a11, participant_washes_the_countertops, 25, 39351432).
raw_performed(i_p127_a11, participant_washes_the_countertops, 26, 39358066).
raw_performed(i_p127_a11, participant_washes_the_countertops, 27, 39358781).
raw_performed(i_p127_a11, participant_washes_the_countertops, 28, 39360028).

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

