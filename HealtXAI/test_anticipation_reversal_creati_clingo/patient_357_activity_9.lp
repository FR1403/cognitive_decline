% ======================================================================
% Paziente 357
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

expected_pos(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_checks_wattage, 1).
expected_pos(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_kitchen, 2).
expected_pos(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b, 3).
expected_pos(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_dining_room, 4).
expected_pos(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, 5).
expected_pos(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_throws_away_old_light_bulb, 6).
expected_pos(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, 7).

depends_on(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, participant_moves_to_the_dining_room).
depends_on(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, participant_removes_old_light_bulb).
depends_on(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b).
depends_on(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b, participant_checks_wattage).
depends_on(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b, participant_moves_to_the_kitchen).
depends_on(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_throws_away_old_light_bulb, participant_removes_old_light_bulb).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p357_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).
performed(i_p357_a9, participant_checks_wattage, 1).
performed(i_p357_a9, participant_removes_old_light_bulb, 2).
performed(i_p357_a9, participant_moves_to_the_kitchen, 3).
performed(i_p357_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4).
performed(i_p357_a9, participant_moves_to_the_dining_room, 5).
performed(i_p357_a9, participant_replaces_the_bulb, 6).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

anticipation_omission(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

#show reversal/3.
#show anticipation_omission/3.

