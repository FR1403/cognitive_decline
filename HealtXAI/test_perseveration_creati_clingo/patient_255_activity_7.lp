% ======================================================================
% Paziente 255
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

instance(i_p255_a8, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 1, 52911219).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 2, 52914566).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 3, 52944570).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 4, 52951632).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 5, 52954290).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 6, 52994595).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 7, 52997189).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 8, 53002400).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 9, 53007476).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 10, 53010392).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 11, 53015466).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 12, 53019445).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 13, 53022276).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 14, 53022632).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 15, 53025033).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 16, 53025590).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 17, 53034762).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 18, 53038090).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 19, 53038450).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 20, 53041775).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 21, 53045289).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 22, 53046419).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 23, 53047186).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 24, 53062694).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 25, 53065817).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 26, 53066025).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 27, 53068851).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 28, 53071150).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 29, 53071700).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 30, 53079438).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 31, 53082329).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 32, 53089499).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 33, 53090826).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 34, 53119315).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 35, 53128909).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 36, 53129651).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 37, 53134555).

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

