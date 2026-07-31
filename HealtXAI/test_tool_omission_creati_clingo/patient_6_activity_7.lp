% ======================================================================
% Paziente 6
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

part_of(participant_retrieves_materials_from_cupboard_a, prepare_a_cup_of_soup_using_the_microwave).
part_of(participant_fills_measuring_cup_with_water, prepare_a_cup_of_soup_using_the_microwave).
part_of(participant_boils_water_in_microwave, prepare_a_cup_of_soup_using_the_microwave).
part_of(participant_pours_water_into_cup_of_noodles, prepare_a_cup_of_soup_using_the_microwave).
part_of(participant_retrieves_pitcher_of_water_from_refrigerator, prepare_a_cup_of_soup_using_the_microwave).
part_of(participant_pours_glass_of_water, prepare_a_cup_of_soup_using_the_microwave).
part_of(participant_returns_pitcher_of_water, prepare_a_cup_of_soup_using_the_microwave).
part_of(participant_waits_for_water_to_simmer_in_cup_of_noodles, prepare_a_cup_of_soup_using_the_microwave).
part_of(participant_brings_all_items_to_dining_room_table, prepare_a_cup_of_soup_using_the_microwave).

expected_object(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, pitcher).
expected_object(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, microwave).
expected_object(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, pitcher).
expected_object(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, pitcher).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p6_a7, prepare_a_cup_of_soup_using_the_microwave).

performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 1).
performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 2).
performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 3).
performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 4).
performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 5).
performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 6).
performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 7).
performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 8).
performed(i_p6_a7, participant_retrieves_materials_from_cupboard_a, 9).
performed(i_p6_a7, participant_brings_all_items_to_dining_room_table, 10).
performed(i_p6_a7, participant_brings_all_items_to_dining_room_table, 11).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

