% =================================================================================================

                                  % Paziente 371
% Attività: Check the wattage of a desk lamp and replace the bulb.

                                  % =================================================================================================

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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).


performed(i1, participant_checks_wattage).
performed(i1, participant_moves_to_the_kitchen).
performed(i1, participant_retrieves_light_bulbs_from_cabinet_b).
performed(i1, participant_moves_to_the_dining_room).
performed(i1, participant_removes_old_light_bulb).
performed(i1, participant_throws_away_old_light_bulb).
performed(i1, participant_replaces_the_bulb).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
