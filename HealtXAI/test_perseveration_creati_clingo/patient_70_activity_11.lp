% ======================================================================
% Paziente 70
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

instance(i_p70_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p70_a11, participant_wets_the_sponge, 1, 51775511).
raw_performed(i_p70_a11, participant_wets_the_sponge, 2, 51775528).
raw_performed(i_p70_a11, participant_wets_the_sponge, 3, 51785420).
raw_performed(i_p70_a11, participant_washes_the_countertops, 4, 51786845).
raw_performed(i_p70_a11, participant_washes_the_countertops, 5, 51794354).
raw_performed(i_p70_a11, participant_washes_the_countertops, 6, 51803152).
raw_performed(i_p70_a11, participant_washes_the_countertops, 7, 51804661).
raw_performed(i_p70_a11, participant_washes_the_countertops, 8, 51809352).
raw_performed(i_p70_a11, participant_washes_the_countertops, 9, 51812947).
raw_performed(i_p70_a11, participant_washes_the_countertops, 10, 51822741).
raw_performed(i_p70_a11, participant_washes_the_countertops, 11, 51828189).
raw_performed(i_p70_a11, participant_washes_the_countertops, 12, 51832992).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 13, 51842313).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 14, 51844780).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 15, 51849698).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 16, 51849715).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 17, 51852158).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 18, 51854660).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 19, 51857150).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 20, 51857170).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 21, 51859626).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 22, 51859644).
raw_performed(i_p70_a11, participant_washes_the_countertops, 23, 51859890).
raw_performed(i_p70_a11, participant_washes_the_countertops, 24, 51860895).
raw_performed(i_p70_a11, participant_washes_the_countertops, 25, 51871363).
raw_performed(i_p70_a11, participant_washes_the_countertops, 26, 51873065).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 27, 51874442).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 28, 51876910).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 29, 51876934).
raw_performed(i_p70_a11, participant_washes_the_countertops, 30, 51878492).
raw_performed(i_p70_a11, participant_washes_the_countertops, 31, 51881655).
raw_performed(i_p70_a11, participant_washes_the_countertops, 32, 51895267).
raw_performed(i_p70_a11, participant_washes_the_countertops, 33, 51895280).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 34, 51906600).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 35, 51909080).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 36, 51909100).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 37, 51911543).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 38, 51926373).
raw_performed(i_p70_a11, participant_rinses_out_the_sponge, 39, 51931285).

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

