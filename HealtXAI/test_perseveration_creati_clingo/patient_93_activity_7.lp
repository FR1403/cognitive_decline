% ======================================================================
% Paziente 93
% Attività: Prepare a cup of soup using the microwave.
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

action_type(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 1).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 1).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 12).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 8).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 7).

expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 1).

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p93_a8, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p93_a8, participant_moves_to_hallway_closet, 1, 38066305).
raw_performed(i_p93_a8, participant_chooses_correct_outfit_from_closet, 2, 38067085).
raw_performed(i_p93_a8, participant_chooses_correct_outfit_from_closet, 3, 38088051).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 4, 38097058).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 5, 38099000).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 6, 38100025).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 7, 38107043).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 8, 38109015).
raw_performed(i_p93_a8, participant_moves_to_hallway_closet, 9, 38129024).
raw_performed(i_p93_a8, participant_moves_to_hallway_closet, 10, 38129051).
raw_performed(i_p93_a8, participant_chooses_correct_outfit_from_closet, 11, 38130002).
raw_performed(i_p93_a8, participant_chooses_correct_outfit_from_closet, 12, 38135807).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 13, 38137992).
raw_performed(i_p93_a8, participant_moves_to_hallway_closet, 14, 38143096).
raw_performed(i_p93_a8, participant_chooses_correct_outfit_from_closet, 15, 38144541).
raw_performed(i_p93_a8, participant_chooses_correct_outfit_from_closet, 16, 38149370).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 17, 38151441).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 18, 38152958).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 19, 38156309).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 20, 38176082).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 21, 38190004).
raw_performed(i_p93_a8, participant_lays_out_clothes_on_living_room_couch, 22, 38191089).
raw_performed(i_p93_a8, participant_moves_to_hallway_closet, 23, 38192069).
raw_performed(i_p93_a8, participant_moves_to_hallway_closet, 24, 38194054).
raw_performed(i_p93_a8, participant_moves_to_hallway_closet, 25, 38194746).

prev_same(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    T1 < T2,
    not between_same_time(I,X,T1,T2).

between_same_time(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    raw_performed(I,X,_,Tm),
    T1 < Tm,
    Tm < T2.

episode_start(I,X,T) :-
    raw_performed(I,X,_,T),
    not prev_same(I,X,_,T).

episode_start(I,X,T2) :-
    prev_same(I,X,T1,T2),
    instance(I,A),
    action_gap(A,X,G),
    T2 - T1 > G.

performed(I,X,Tstart) :-
    episode_start(I,X,Tstart).


% ===========================
% Level C - Anomaly detection
% ===========================


performed_count(I,X,M) :-
    instance(I,_),
    action(X),
    M = #count { T : performed(I,X,T) }.

perseveration(I,X) :-
    instance(I,A),
    expected_count(A,X,N),
    performed_count(I,X,M),
    M > N.

#show perseveration/2.

