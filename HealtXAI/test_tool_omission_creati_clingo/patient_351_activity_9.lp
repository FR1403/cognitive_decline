% ======================================================================
% Paziente 351
% Attivita: Check the wattage of a desk lamp and replace the bulb.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

action(participant_checks_wattage).
action(participant_moves_to_the_kitchen).
action(participant_retrieves_light_bulbs_from_cabinet_b).
action(participant_moves_to_the_dining_room).
action(participant_removes_old_light_bulb).
action(participant_throws_away_old_light_bulb).
action(participant_replaces_the_bulb).

part_of(participant_checks_wattage, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).
part_of(participant_moves_to_the_kitchen, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).
part_of(participant_retrieves_light_bulbs_from_cabinet_b, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).
part_of(participant_moves_to_the_dining_room, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).
part_of(participant_removes_old_light_bulb, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).
part_of(participant_throws_away_old_light_bulb, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).
part_of(participant_replaces_the_bulb, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

expected_object(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, old_light_bulb).
expected_object(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, light_bulb).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p351_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

performed(i_p351_a9, participant_removes_old_light_bulb, 1).
performed(i_p351_a9, participant_moves_to_the_kitchen, 2).
performed(i_p351_a9, participant_moves_to_the_kitchen, 3).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 6).
performed(i_p351_a9, participant_moves_to_the_dining_room, 7).
performed(i_p351_a9, participant_moves_to_the_dining_room, 8).
performed(i_p351_a9, participant_moves_to_the_kitchen, 9).
performed(i_p351_a9, participant_moves_to_the_kitchen, 10).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14).
performed(i_p351_a9, participant_moves_to_the_dining_room, 15).
performed(i_p351_a9, participant_moves_to_the_dining_room, 16).
performed(i_p351_a9, participant_moves_to_the_kitchen, 17).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 18).
performed(i_p351_a9, participant_retrieves_light_bulbs_from_cabinet_b, 19).
performed(i_p351_a9, participant_moves_to_the_dining_room, 20).
performed(i_p351_a9, participant_moves_to_the_dining_room, 21).
performed(i_p351_a9, participant_replaces_the_bulb, 22).

observed_object(i_p351_a9,participant_replaces_the_bulb,light_bulb).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

