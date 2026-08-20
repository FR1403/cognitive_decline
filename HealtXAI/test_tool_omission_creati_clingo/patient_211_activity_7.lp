% ======================================================================
% Paziente 211
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

expected_object(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, measuring_cup).
expected_object(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, microwave).
expected_object(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, measuring_cup).
expected_object(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, pitcher).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p211_a7, prepare_a_cup_of_soup_using_the_microwave).

performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 1).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 2).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 3).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 4).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 5).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 6).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 7).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 8).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 9).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 10).
performed(i_p211_a7, participant_fills_measuring_cup_with_water, 11).
performed(i_p211_a7, participant_boils_water_in_microwave, 12).
performed(i_p211_a7, participant_boils_water_in_microwave, 13).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 14).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 15).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 16).
performed(i_p211_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 17).
performed(i_p211_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 18).
performed(i_p211_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 19).
performed(i_p211_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 20).
performed(i_p211_a7, participant_pours_glass_of_water, 21).
performed(i_p211_a7, participant_returns_pitcher_of_water, 22).
performed(i_p211_a7, participant_returns_pitcher_of_water, 23).
performed(i_p211_a7, participant_returns_pitcher_of_water, 24).
performed(i_p211_a7, participant_boils_water_in_microwave, 25).
performed(i_p211_a7, participant_boils_water_in_microwave, 26).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 27).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 28).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 29).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 30).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 31).
performed(i_p211_a7, participant_boils_water_in_microwave, 32).
performed(i_p211_a7, participant_boils_water_in_microwave, 33).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 34).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 35).
performed(i_p211_a7, participant_pours_water_into_cup_of_noodles, 36).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 49).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 50).
performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 51).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 52).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 53).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 54).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 55).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 56).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 57).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 58).
performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 59).
performed(i_p211_a7, participant_brings_all_items_to_dining_room_table, 60).
performed(i_p211_a7, participant_brings_all_items_to_dining_room_table, 61).
performed(i_p211_a7, participant_brings_all_items_to_dining_room_table, 62).
performed(i_p211_a7, participant_brings_all_items_to_dining_room_table, 63).

observed_object(i_p211_a7,participant_pours_glass_of_water,pitcher).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

