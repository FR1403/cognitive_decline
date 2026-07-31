% ======================================================================
% Paziente 202
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

expected_object(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, bulb_extractor).
expected_object(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, bulb_replace).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p202_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

performed(i_p202_a9, participant_moves_to_the_kitchen, 1).
performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 2).
performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3).
performed(i_p202_a9, participant_moves_to_the_dining_room, 4).
performed(i_p202_a9, participant_moves_to_the_dining_room, 5).
performed(i_p202_a9, participant_moves_to_the_kitchen, 6).
performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7).
performed(i_p202_a9, participant_moves_to_the_dining_room, 8).
performed(i_p202_a9, participant_moves_to_the_dining_room, 9).
performed(i_p202_a9, participant_moves_to_the_kitchen, 10).
performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11).
performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12).
performed(i_p202_a9, participant_moves_to_the_dining_room, 13).
performed(i_p202_a9, participant_moves_to_the_dining_room, 14).
performed(i_p202_a9, participant_moves_to_the_kitchen, 15).
performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16).
performed(i_p202_a9, participant_moves_to_the_dining_room, 17).
performed(i_p202_a9, participant_moves_to_the_dining_room, 18).
performed(i_p202_a9, participant_moves_to_the_kitchen, 19).
performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20).
performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 21).
performed(i_p202_a9, participant_moves_to_the_dining_room, 22).
performed(i_p202_a9, participant_moves_to_the_dining_room, 23).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

