% ======================================================================
% Paziente 316
% Attività: Pick a complete outfit for an interview from a selection of clothing.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

action(participant_moves_to_hallway_closet).
action(participant_chooses_correct_outfit_from_closet).
action(participant_lays_out_clothes_on_living_room_couch).

action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 7).
action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 5).
action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 5).

expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 1).
expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 1).
expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 1).

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 240000).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 240000).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p316_a7, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p316_a7, participant_retrieves_materials_from_cupboard_a, 1, 55406365).
raw_performed(i_p316_a7, participant_retrieves_materials_from_cupboard_a, 2, 55413294).
raw_performed(i_p316_a7, participant_retrieves_materials_from_cupboard_a, 3, 55418216).
raw_performed(i_p316_a7, participant_fills_measuring_cup_with_water, 4, 55510742).
raw_performed(i_p316_a7, participant_retrieves_materials_from_cupboard_a, 5, 55552864).
raw_performed(i_p316_a7, participant_retrieves_materials_from_cupboard_a, 6, 55564223).
raw_performed(i_p316_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 55573371).
raw_performed(i_p316_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 55577355).
raw_performed(i_p316_a7, participant_pours_glass_of_water, 9, 55589208).
raw_performed(i_p316_a7, participant_returns_pitcher_of_water, 10, 55589232).
raw_performed(i_p316_a7, participant_returns_pitcher_of_water, 11, 55592913).
raw_performed(i_p316_a7, participant_returns_pitcher_of_water, 12, 55592937).
raw_performed(i_p316_a7, participant_brings_all_items_to_dining_room_table, 13, 55594137).
raw_performed(i_p316_a7, participant_brings_all_items_to_dining_room_table, 14, 55600636).
raw_performed(i_p316_a7, participant_pours_water_into_cup_of_noodles, 15, 55611857).
raw_performed(i_p316_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 16, 55625112).
raw_performed(i_p316_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 17, 55641782).
raw_performed(i_p316_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 55660500).
raw_performed(i_p316_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 55668112).
raw_performed(i_p316_a7, participant_retrieves_materials_from_cupboard_a, 20, 55683897).
raw_performed(i_p316_a7, participant_retrieves_materials_from_cupboard_a, 21, 55691282).
raw_performed(i_p316_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 55695182).
raw_performed(i_p316_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 55704664).
raw_performed(i_p316_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 55720959).
raw_performed(i_p316_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 55755203).
raw_performed(i_p316_a7, participant_brings_all_items_to_dining_room_table, 26, 55767101).
raw_performed(i_p316_a7, participant_brings_all_items_to_dining_room_table, 27, 55767125).
raw_performed(i_p316_a7, participant_brings_all_items_to_dining_room_table, 28, 55767949).
raw_performed(i_p316_a7, participant_brings_all_items_to_dining_room_table, 29, 55771483).

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

