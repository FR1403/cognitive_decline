% =================================================================================================

                                  % Paziente 100
% Attività: Prepare a bowl of oatmeal on the stovetop from the directions given in task 12.

                                  % =================================================================================================

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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).


performed(i1, participant_moves_to_the_kitchen).
performed(i1, participant_removes_materials_from_cupboard).
performed(i1, participant_turns_on_stove).
performed(i1, participant_fills_pot_with_water).
performed(i1, participant_turns_stove_off).
performed(i1, participant_throws_raisin_box_in_trashcan).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
