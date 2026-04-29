% =================================================================================================
% Paziente 310
% Attività: Prepare a cup of soup using the microwave.
% =================================================================================================


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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, prepare_a_cup_of_soup_using_the_microwave).


performed(i1, participant_retrieves_materials_from_cupboard_a).
performed(i1, participant_fills_measuring_cup_with_water).
performed(i1, participant_boils_water_in_microwave).
performed(i1, participant_pours_glass_of_water).
performed(i1, participant_brings_all_items_to_dining_room_table).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
