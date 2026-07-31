% ======================================================================
% Paziente 18
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

instance(i_p18_a7, prepare_a_cup_of_soup_using_the_microwave).

performed(i_p18_a7, participant_retrieves_materials_from_cupboard_a, 1).
performed(i_p18_a7, participant_fills_measuring_cup_with_water, 2).
performed(i_p18_a7, participant_fills_measuring_cup_with_water, 3).
performed(i_p18_a7, participant_boils_water_in_microwave, 4).
performed(i_p18_a7, participant_boils_water_in_microwave, 5).
performed(i_p18_a7, participant_boils_water_in_microwave, 6).
performed(i_p18_a7, participant_retrieves_materials_from_cupboard_a, 7).
performed(i_p18_a7, participant_boils_water_in_microwave, 8).
performed(i_p18_a7, participant_boils_water_in_microwave, 9).
performed(i_p18_a7, participant_boils_water_in_microwave, 10).
performed(i_p18_a7, participant_boils_water_in_microwave, 11).
performed(i_p18_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12).
performed(i_p18_a7, participant_boils_water_in_microwave, 13).
performed(i_p18_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14).
performed(i_p18_a7, participant_boils_water_in_microwave, 15).
performed(i_p18_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16).
performed(i_p18_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 17).
performed(i_p18_a7, participant_boils_water_in_microwave, 18).
performed(i_p18_a7, participant_boils_water_in_microwave, 19).
performed(i_p18_a7, participant_boils_water_in_microwave, 20).
performed(i_p18_a7, participant_boils_water_in_microwave, 21).
performed(i_p18_a7, participant_boils_water_in_microwave, 22).
performed(i_p18_a7, participant_boils_water_in_microwave, 23).
performed(i_p18_a7, participant_boils_water_in_microwave, 24).
performed(i_p18_a7, participant_boils_water_in_microwave, 25).
performed(i_p18_a7, participant_boils_water_in_microwave, 26).
performed(i_p18_a7, participant_boils_water_in_microwave, 27).
performed(i_p18_a7, participant_boils_water_in_microwave, 28).
performed(i_p18_a7, participant_pours_water_into_cup_of_noodles, 29).
performed(i_p18_a7, participant_pours_water_into_cup_of_noodles, 30).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 49).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 50).
performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 51).
performed(i_p18_a7, participant_brings_all_items_to_dining_room_table, 52).

observed_object(i_p18_a7,participant_pours_water_into_cup_of_noodles,pitcher).
observed_object(i_p18_a7,participant_pours_water_into_cup_of_noodles,pitcher).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

