% ======================================================================
% Paziente 18
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

expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_moves_to_the_kitchen, 1).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_removes_materials_from_cupboard, 2).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_locates_pot, 3).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_turns_on_stove, 4).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_fills_pot_with_water, 5).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_oatmeal_into_pot, 6).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participants_times_one_minute, 7).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_stirs_oatmeal, 8).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_oatmeal_into_bowl, 9).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_turns_stove_off, 10).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_sugar_in_oatmeal, 11).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_raisin_in_oatmeal, 12).
expected_pos(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_throws_raisin_box_in_trashcan, 13).

depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_fills_pot_with_water, participant_turns_on_stove).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_locates_pot, participant_removes_materials_from_cupboard).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_oatmeal_into_bowl, participant_stirs_oatmeal).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_oatmeal_into_pot, participant_fills_pot_with_water).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_raisin_in_oatmeal, participant_puts_sugar_in_oatmeal).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_puts_sugar_in_oatmeal, participant_turns_stove_off).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_removes_materials_from_cupboard, participant_moves_to_the_kitchen).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_stirs_oatmeal, participants_times_one_minute).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_throws_raisin_box_in_trashcan, participant_puts_raisin_in_oatmeal).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_turns_on_stove, participant_locates_pot).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participant_turns_stove_off, participant_puts_oatmeal_into_bowl).
depends_on(prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12, participants_times_one_minute, participant_puts_oatmeal_into_pot).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p18_a14, prepare_a_bowl_of_oatmeal_on_the_stovetop_from_the_directions_given_in_task_12).
performed(i_p18_a14, participant_moves_to_the_kitchen, 1).
performed(i_p18_a14, participant_removes_materials_from_cupboard, 2).
performed(i_p18_a14, participant_fills_pot_with_water, 3).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.

