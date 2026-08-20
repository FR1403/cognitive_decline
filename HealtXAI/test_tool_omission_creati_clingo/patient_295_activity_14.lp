% ======================================================================
% Paziente 295
% Attivita: Prepare a bowl of oatmeal on the stovetop from the directions given in task 12.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).

action(participant_moves_to_the_kitchen).
action(participant_removes_materials_from_cupboard).
action(participant_locates_pot).
action(participant_turns_on_stove).
action(participant_fills_pot_with_water).
action(participant_puts_oatmeal_into_pot).
action(participants_times_one_minute).
action(participant_stirs_oatmeal).
action(participant_puts_oatmeal_into_bowl).
action(participant_turns_stove_off).
action(participant_puts_sugar_in_oatmeal).
action(participant_puts_raisin_in_oatmeal).
action(participant_throws_raisin_box_in_trashcan).

part_of(participant_moves_to_the_kitchen, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_removes_materials_from_cupboard, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_locates_pot, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_turns_on_stove, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_fills_pot_with_water, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_puts_oatmeal_into_pot, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participants_times_one_minute, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_stirs_oatmeal, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_puts_oatmeal_into_bowl, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_turns_stove_off, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_puts_sugar_in_oatmeal, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_puts_raisin_in_oatmeal, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
part_of(participant_throws_raisin_box_in_trashcan, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).

expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_removes_materials_from_cupboard, materials).
expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_turns_on_stove, stove).
expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_fills_pot_with_water, pot).
expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_oatmeal_into_pot, oatmeal).
expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_stirs_oatmeal, spoon).
expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_oatmeal_into_bowl, spoon).
expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_turns_stove_off, stove).
expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_sugar_in_oatmeal, sugar).
expected_object(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_raisin_in_oatmeal, raisin).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p295_a14, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).

performed(i_p295_a14, participant_moves_to_the_kitchen, 1).
performed(i_p295_a14, participant_removes_materials_from_cupboard, 2).
performed(i_p295_a14, participant_removes_materials_from_cupboard, 3).
performed(i_p295_a14, participant_removes_materials_from_cupboard, 4).
performed(i_p295_a14, participant_removes_materials_from_cupboard, 5).
performed(i_p295_a14, participant_removes_materials_from_cupboard, 6).
performed(i_p295_a14, participant_removes_materials_from_cupboard, 7).
performed(i_p295_a14, participant_removes_materials_from_cupboard, 8).
performed(i_p295_a14, participant_puts_sugar_in_oatmeal, 9).
performed(i_p295_a14, participant_puts_sugar_in_oatmeal, 10).
performed(i_p295_a14, participant_puts_raisin_in_oatmeal, 11).
performed(i_p295_a14, participant_puts_raisin_in_oatmeal, 12).
performed(i_p295_a14, participant_puts_raisin_in_oatmeal, 13).
performed(i_p295_a14, participant_puts_raisin_in_oatmeal, 14).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

