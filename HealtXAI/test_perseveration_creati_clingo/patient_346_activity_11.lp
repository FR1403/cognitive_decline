% ======================================================================
% Paziente 346
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

instance(i_p346_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p346_a11, participant_washes_the_countertops, 1, 54758033).
raw_performed(i_p346_a11, participant_washes_the_countertops, 2, 54770018).
raw_performed(i_p346_a11, participant_washes_the_countertops, 3, 54771064).
raw_performed(i_p346_a11, participant_washes_the_countertops, 4, 54783092).
raw_performed(i_p346_a11, participant_washes_the_countertops, 5, 54788046).
raw_performed(i_p346_a11, participant_washes_the_countertops, 6, 54791018).
raw_performed(i_p346_a11, participant_washes_the_countertops, 7, 54802021).
raw_performed(i_p346_a11, participant_washes_the_countertops, 8, 54802082).
raw_performed(i_p346_a11, participant_washes_the_countertops, 9, 54806084).
raw_performed(i_p346_a11, participant_washes_the_countertops, 10, 54811065).
raw_performed(i_p346_a11, participant_washes_the_countertops, 11, 54820060).
raw_performed(i_p346_a11, participant_washes_the_countertops, 12, 54826084).
raw_performed(i_p346_a11, participant_washes_the_countertops, 13, 54832018).
raw_performed(i_p346_a11, participant_washes_the_countertops, 14, 54850093).
raw_performed(i_p346_a11, participant_washes_the_countertops, 15, 54855005).
raw_performed(i_p346_a11, participant_washes_the_countertops, 16, 54859010).
raw_performed(i_p346_a11, participant_washes_the_countertops, 17, 54866096).
raw_performed(i_p346_a11, participant_washes_the_countertops, 18, 54877008).
raw_performed(i_p346_a11, participant_washes_the_countertops, 19, 54889036).
raw_performed(i_p346_a11, participant_washes_the_countertops, 20, 54893074).
raw_performed(i_p346_a11, participant_washes_the_countertops, 21, 54899056).
raw_performed(i_p346_a11, participant_washes_the_countertops, 22, 54902087).
raw_performed(i_p346_a11, participant_washes_the_countertops, 23, 54915000).
raw_performed(i_p346_a11, participant_washes_the_countertops, 24, 54923025).
raw_performed(i_p346_a11, participant_washes_the_countertops, 25, 54941012).
raw_performed(i_p346_a11, participant_washes_the_countertops, 26, 54944002).

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

