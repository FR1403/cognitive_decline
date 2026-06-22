% ======================================================================
% Paziente 22
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
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 97785).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 155619).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 123649).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 101880).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 4392).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p22_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p22_a11, participant_washes_the_countertops, 1, 57627089).
raw_performed(i_p22_a11, participant_washes_the_countertops, 2, 57630097).
raw_performed(i_p22_a11, participant_washes_the_countertops, 3, 57632028).
raw_performed(i_p22_a11, participant_washes_the_countertops, 4, 57632080).
raw_performed(i_p22_a11, participant_washes_the_countertops, 5, 57641005).
raw_performed(i_p22_a11, participant_washes_the_countertops, 6, 57647095).
raw_performed(i_p22_a11, participant_washes_the_countertops, 7, 57648044).
raw_performed(i_p22_a11, participant_washes_the_countertops, 8, 57668045).
raw_performed(i_p22_a11, participant_washes_the_countertops, 9, 57672005).
raw_performed(i_p22_a11, participant_washes_the_countertops, 10, 57685040).
raw_performed(i_p22_a11, participant_washes_the_countertops, 11, 57694015).
raw_performed(i_p22_a11, participant_washes_the_countertops, 12, 57705024).
raw_performed(i_p22_a11, participant_washes_the_countertops, 13, 57708071).
raw_performed(i_p22_a11, participant_washes_the_countertops, 14, 57714003).
raw_performed(i_p22_a11, participant_washes_the_countertops, 15, 57727055).
raw_performed(i_p22_a11, participant_washes_the_countertops, 16, 57731049).
raw_performed(i_p22_a11, participant_washes_the_countertops, 17, 57741069).
raw_performed(i_p22_a11, participant_washes_the_countertops, 18, 57745046).
raw_performed(i_p22_a11, participant_washes_the_countertops, 19, 57746094).
raw_performed(i_p22_a11, participant_washes_the_countertops, 20, 57749067).
raw_performed(i_p22_a11, participant_washes_the_countertops, 21, 57753000).
raw_performed(i_p22_a11, participant_washes_the_countertops, 22, 57756062).
raw_performed(i_p22_a11, participant_washes_the_countertops, 23, 57765034).
raw_performed(i_p22_a11, participant_washes_the_countertops, 24, 57770007).
raw_performed(i_p22_a11, participant_dries_the_countertops, 25, 57816009).
raw_performed(i_p22_a11, participant_dries_the_countertops, 26, 57828024).
raw_performed(i_p22_a11, participant_dries_the_countertops, 27, 57854054).
raw_performed(i_p22_a11, participant_dries_the_countertops, 28, 57886034).
raw_performed(i_p22_a11, participant_dries_the_countertops, 29, 57896025).
raw_performed(i_p22_a11, participant_dries_the_countertops, 30, 57899049).
raw_performed(i_p22_a11, participant_dries_the_countertops, 31, 57905024).
raw_performed(i_p22_a11, participant_dries_the_countertops, 32, 57908069).
raw_performed(i_p22_a11, participant_dries_the_countertops, 33, 57926002).
raw_performed(i_p22_a11, participant_dries_the_countertops, 34, 57937004).

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

