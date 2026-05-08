% ======================================================================
% Paziente 111
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

instance(i_p111_a8, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p111_a8, participant_moves_to_hallway_closet, 1, 36806231).
raw_performed(i_p111_a8, participant_moves_to_hallway_closet, 2, 36806983).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 3, 36808380).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 4, 36809293).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 5, 36812487).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 6, 36815664).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 7, 36822615).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 8, 36826255).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 9, 36829916).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 10, 36837073).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 11, 36842256).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 12, 36848649).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 13, 36856167).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 14, 36859363).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 15, 36865736).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 16, 36874230).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 17, 36877477).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 18, 36935255).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 19, 36936393).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 20, 36938296).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 21, 36961090).
raw_performed(i_p111_a8, participant_lays_out_clothes_on_living_room_couch, 22, 36967442).
raw_performed(i_p111_a8, participant_moves_to_hallway_closet, 23, 36971391).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 24, 36972379).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 25, 36977049).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 26, 37009299).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 27, 37015447).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 28, 37017153).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 29, 37018340).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 30, 37046082).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 31, 37048258).
raw_performed(i_p111_a8, participant_lays_out_clothes_on_living_room_couch, 32, 37049687).
raw_performed(i_p111_a8, participant_lays_out_clothes_on_living_room_couch, 33, 37053849).

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

