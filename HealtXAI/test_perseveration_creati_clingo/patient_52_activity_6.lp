% ======================================================================
% Paziente 52
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

instance(i_p52_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p52_a7, participant_retrieves_materials_from_cupboard_a, 1, 37202040).
raw_performed(i_p52_a7, participant_retrieves_materials_from_cupboard_a, 2, 37208094).
raw_performed(i_p52_a7, participant_fills_measuring_cup_with_water, 3, 37218087).
raw_performed(i_p52_a7, participant_fills_measuring_cup_with_water, 4, 37222008).
raw_performed(i_p52_a7, participant_boils_water_in_microwave, 5, 37232042).
raw_performed(i_p52_a7, participant_boils_water_in_microwave, 6, 37235003).
raw_performed(i_p52_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 37295008).
raw_performed(i_p52_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 37298629).
raw_performed(i_p52_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 37299054).
raw_performed(i_p52_a7, participant_pours_glass_of_water, 10, 37309364).
raw_performed(i_p52_a7, participant_pours_glass_of_water, 11, 37312053).
raw_performed(i_p52_a7, participant_returns_pitcher_of_water, 12, 37312888).
raw_performed(i_p52_a7, participant_returns_pitcher_of_water, 13, 37317047).
raw_performed(i_p52_a7, participant_boils_water_in_microwave, 14, 37339688).
raw_performed(i_p52_a7, participant_boils_water_in_microwave, 15, 37342848).
raw_performed(i_p52_a7, participant_boils_water_in_microwave, 16, 37429066).
raw_performed(i_p52_a7, participant_boils_water_in_microwave, 17, 37432009).
raw_performed(i_p52_a7, participant_boils_water_in_microwave, 18, 37433728).
raw_performed(i_p52_a7, participant_pours_water_into_cup_of_noodles, 19, 37453330).
raw_performed(i_p52_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 37463921).
raw_performed(i_p52_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 37469590).
raw_performed(i_p52_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 37483471).
raw_performed(i_p52_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 37494007).
raw_performed(i_p52_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 37503057).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 25, 37511082).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 26, 37513029).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 27, 37517022).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 28, 37518074).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 29, 37518880).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 30, 37523049).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 31, 37524065).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 32, 37531000).
raw_performed(i_p52_a7, participant_brings_all_items_to_dining_room_table, 33, 37539509).

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

