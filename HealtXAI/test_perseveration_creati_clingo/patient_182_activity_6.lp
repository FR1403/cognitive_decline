% ======================================================================
% Paziente 182
% Attività: Prepare a cup of soup using the microwave.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(prepare_a_cup_of_soup_using_the_microwave).

action(participant_retrieves_materials_from_cupboard_a).
action(participant_fills_measuring_cup_with_water).
action(participant_boils_water_in_microwave).
action(participant_pours_water_into_cup_of_noodles).
action(participant_retrieves_pitcher_of_water_from_refrigerator).
action(participant_pours_glass_of_water).
action(participant_returns_pitcher_of_water).
action(participant_waits_for_water_to_simmer_in_cup_of_noodles).
action(participant_brings_all_items_to_dining_room_table).

action_type(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 1).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 1).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 12).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 8).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 7).

expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 1).

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p182_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p182_a7, participant_retrieves_materials_from_cupboard_a, 1, 36433498).
raw_performed(i_p182_a7, participant_fills_measuring_cup_with_water, 2, 36451830).
raw_performed(i_p182_a7, participant_fills_measuring_cup_with_water, 3, 36451848).
raw_performed(i_p182_a7, participant_boils_water_in_microwave, 4, 36461515).
raw_performed(i_p182_a7, participant_boils_water_in_microwave, 5, 36465438).
raw_performed(i_p182_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 6, 36473795).
raw_performed(i_p182_a7, participant_boils_water_in_microwave, 7, 36477099).
raw_performed(i_p182_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 36477099).
raw_performed(i_p182_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 36477945).
raw_performed(i_p182_a7, participant_boils_water_in_microwave, 10, 36480233).
raw_performed(i_p182_a7, participant_pours_glass_of_water, 11, 36480233).
raw_performed(i_p182_a7, participant_boils_water_in_microwave, 12, 36502960).
raw_performed(i_p182_a7, participant_boils_water_in_microwave, 13, 36523154).
raw_performed(i_p182_a7, participant_boils_water_in_microwave, 14, 36527134).
raw_performed(i_p182_a7, participant_boils_water_in_microwave, 15, 36538733).
raw_performed(i_p182_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 16, 36601682).
raw_performed(i_p182_a7, participant_pours_water_into_cup_of_noodles, 17, 36669807).
raw_performed(i_p182_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 36703242).
raw_performed(i_p182_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 36717732).
raw_performed(i_p182_a7, participant_brings_all_items_to_dining_room_table, 20, 36726830).

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

