% ======================================================================
% Paziente 63
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

instance(i_p63_a8, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p63_a8, participant_moves_to_hallway_closet, 1, 52344645).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 2, 52357656).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 3, 52357946).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 4, 52364025).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 5, 52368479).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 6, 52371884).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 7, 52380109).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 8, 52382185).
raw_performed(i_p63_a8, participant_lays_out_clothes_on_living_room_couch, 9, 52386823).
raw_performed(i_p63_a8, participant_moves_to_hallway_closet, 10, 52387607).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 11, 52387807).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 12, 52399059).
raw_performed(i_p63_a8, participant_lays_out_clothes_on_living_room_couch, 13, 52401258).
raw_performed(i_p63_a8, participant_lays_out_clothes_on_living_room_couch, 14, 52405481).
raw_performed(i_p63_a8, participant_moves_to_hallway_closet, 15, 52406721).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 16, 52406938).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 17, 52410497).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 18, 52414629).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 19, 52418201).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 20, 52440435).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 21, 52447611).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 22, 52456092).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 23, 52457922).
raw_performed(i_p63_a8, participant_lays_out_clothes_on_living_room_couch, 24, 52460882).
raw_performed(i_p63_a8, participant_lays_out_clothes_on_living_room_couch, 25, 52465216).
raw_performed(i_p63_a8, participant_moves_to_hallway_closet, 26, 52465307).
raw_performed(i_p63_a8, participant_moves_to_hallway_closet, 27, 52465432).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 28, 52469521).
raw_performed(i_p63_a8, participant_chooses_correct_outfit_from_closet, 29, 52473803).
raw_performed(i_p63_a8, participant_lays_out_clothes_on_living_room_couch, 30, 52475881).

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

