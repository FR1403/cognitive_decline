% ======================================================================
% Paziente 87
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

expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 1).
expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 2).
expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 3).
expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 4).
expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 5).
expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 6).
expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 7).
expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 8).
expected_pos(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 9).

depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, participant_fills_measuring_cup_with_water).
<<<<<<< HEAD
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, participant_pours_glass_of_water).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, participant_retrieves_materials_from_cupboard_a).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, participant_waits_for_water_to_simmer_in_cup_of_noodles).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, participant_retrieves_pitcher_of_water_from_refrigerator).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, participant_boils_water_in_microwave).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, participant_retrieves_materials_from_cupboard_a).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, participant_pours_glass_of_water).
=======
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, participant_retrieves_materials_from_cupboard_a).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, participant_retrieves_materials_from_cupboard_a).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, participant_retrieves_pitcher_of_water_from_refrigerator).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, participant_boils_water_in_microwave).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, participant_pours_glass_of_water).
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, participant_boils_water_in_microwave).
>>>>>>> gap-objects-functions
depends_on(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, participant_pours_water_into_cup_of_noodles).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p87_a7, prepare_a_cup_of_soup_using_the_microwave).
performed(i_p87_a7, participant_retrieves_materials_from_cupboard_a, 1).
performed(i_p87_a7, participant_brings_all_items_to_dining_room_table, 2).


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

