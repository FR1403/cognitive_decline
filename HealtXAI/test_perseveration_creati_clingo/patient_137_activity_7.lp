% ======================================================================
% Paziente 137
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

instance(i_p137_a8, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 1, 50769026).
raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 2, 50770069).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 3, 50777080).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 4, 50799030).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 5, 50802020).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 6, 50805002).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 7, 50813020).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 8, 50817012).
raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 9, 50818016).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 10, 50819005).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 11, 50841000).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 12, 50843009).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 13, 50846001).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 14, 50855001).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 15, 50855003).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 16, 50859033).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 17, 50859097).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 18, 50863011).
raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 19, 50864036).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 20, 50864099).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 21, 50872033).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 22, 50876051).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 23, 50880097).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 24, 50882041).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 25, 50898003).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 26, 50900022).
raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 27, 50906044).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 28, 50907004).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 29, 50913017).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 30, 50915068).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 31, 50916052).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 32, 50928079).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 33, 50938078).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 34, 50941073).

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

