% ======================================================================
% Paziente 100
% Attivita: Prepare a cup of soup using the microwave.
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

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 437605).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 2749284).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 328296).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 211844).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 302796).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 307897).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 301246).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 213072).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 408640).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p100_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p100_a7, participant_retrieves_materials_from_cupboard_a, 1, 54647084).
raw_performed(i_p100_a7, participant_retrieves_materials_from_cupboard_a, 2, 54657072).
raw_performed(i_p100_a7, participant_retrieves_materials_from_cupboard_a, 3, 54660005).
raw_performed(i_p100_a7, participant_fills_measuring_cup_with_water, 4, 54712057).
raw_performed(i_p100_a7, participant_fills_measuring_cup_with_water, 5, 54715068).
raw_performed(i_p100_a7, participant_fills_measuring_cup_with_water, 6, 54722811).
raw_performed(i_p100_a7, participant_fills_measuring_cup_with_water, 7, 54735001).
raw_performed(i_p100_a7, participant_fills_measuring_cup_with_water, 8, 54736059).
raw_performed(i_p100_a7, participant_boils_water_in_microwave, 9, 54757232).
raw_performed(i_p100_a7, participant_boils_water_in_microwave, 10, 54762095).
raw_performed(i_p100_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 54796065).
raw_performed(i_p100_a7, participant_pours_glass_of_water, 12, 54800093).
raw_performed(i_p100_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 54800481).
raw_performed(i_p100_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 54800673).
raw_performed(i_p100_a7, participant_pours_glass_of_water, 15, 54833305).
raw_performed(i_p100_a7, participant_returns_pitcher_of_water, 16, 54834552).
raw_performed(i_p100_a7, participant_returns_pitcher_of_water, 17, 54837202).
raw_performed(i_p100_a7, participant_returns_pitcher_of_water, 18, 54837800).
raw_performed(i_p100_a7, participant_brings_all_items_to_dining_room_table, 19, 54842069).
raw_performed(i_p100_a7, participant_brings_all_items_to_dining_room_table, 20, 54843001).
raw_performed(i_p100_a7, participant_brings_all_items_to_dining_room_table, 21, 54846021).
raw_performed(i_p100_a7, participant_brings_all_items_to_dining_room_table, 22, 54846071).
raw_performed(i_p100_a7, participant_boils_water_in_microwave, 23, 54849256).
raw_performed(i_p100_a7, participant_boils_water_in_microwave, 24, 54852240).
raw_performed(i_p100_a7, participant_boils_water_in_microwave, 25, 54922005).
raw_performed(i_p100_a7, participant_boils_water_in_microwave, 26, 54930040).
raw_performed(i_p100_a7, participant_pours_water_into_cup_of_noodles, 27, 54935293).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 54947676).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 54977038).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 55016552).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 55031250).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 55040760).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 55054286).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 55102035).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 55111031).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 55123077).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 55156039).
raw_performed(i_p100_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 55162627).
raw_performed(i_p100_a7, participant_brings_all_items_to_dining_room_table, 39, 55163055).
raw_performed(i_p100_a7, participant_brings_all_items_to_dining_room_table, 40, 55166420).

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

