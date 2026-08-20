% ======================================================================
% Paziente 7
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

instance(i_p7_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

performed(i_p7_a9, participant_moves_to_the_kitchen, 1).
performed(i_p7_a9, participant_retrieves_light_bulbs_from_cabinet_b, 2).
performed(i_p7_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3).
performed(i_p7_a9, participant_moves_to_the_dining_room, 4).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

