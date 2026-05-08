% ======================================================================
% Paziente 268
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

instance(i_p268_a7, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p268_a7, participant_retrieves_materials_from_cupboard_a, 1, 35608337).
raw_performed(i_p268_a7, participant_retrieves_materials_from_cupboard_a, 2, 35609855).
raw_performed(i_p268_a7, participant_fills_measuring_cup_with_water, 3, 35619952).
raw_performed(i_p268_a7, participant_fills_measuring_cup_with_water, 4, 35622408).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 5, 35627494).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 6, 35631210).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 7, 35638972).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 8, 35652123).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 9, 35655443).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 10, 35670887).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 11, 35670902).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 12, 35703589).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 13, 35704975).
raw_performed(i_p268_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 35704975).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 15, 35706538).
raw_performed(i_p268_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 35706538).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 17, 35709071).
raw_performed(i_p268_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 18, 35709071).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 19, 35710303).
raw_performed(i_p268_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 20, 35710303).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 21, 35726366).
raw_performed(i_p268_a7, participant_pours_glass_of_water, 22, 35726366).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 23, 35729574).
raw_performed(i_p268_a7, participant_returns_pitcher_of_water, 24, 35729574).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 25, 35735388).
raw_performed(i_p268_a7, participant_returns_pitcher_of_water, 26, 35735388).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 27, 35735405).
raw_performed(i_p268_a7, participant_returns_pitcher_of_water, 28, 35735405).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 29, 35749243).
raw_performed(i_p268_a7, participant_boils_water_in_microwave, 30, 35816898).
raw_performed(i_p268_a7, participant_pours_water_into_cup_of_noodles, 31, 35825389).
raw_performed(i_p268_a7, participant_pours_water_into_cup_of_noodles, 32, 35834923).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 35843723).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 35850239).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 35859045).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 35859563).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 35864779).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 35865154).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 35865749).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 35868156).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 36014673).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 36027124).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 36030790).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 36031446).
raw_performed(i_p268_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45, 36050739).
raw_performed(i_p268_a7, participant_brings_all_items_to_dining_room_table, 46, 36054149).

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

