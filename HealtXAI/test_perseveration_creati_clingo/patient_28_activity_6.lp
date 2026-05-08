% ======================================================================
% Paziente 28
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

instance(i_p28_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p28_a7, participant_retrieves_materials_from_cupboard_a, 1, 37477839).
raw_performed(i_p28_a7, participant_retrieves_materials_from_cupboard_a, 2, 37491429).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 3, 37616995).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 4, 37624558).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 5, 37727721).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 6, 37732580).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 7, 37747205).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 8, 37748768).
raw_performed(i_p28_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 37748768).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 10, 37756907).
raw_performed(i_p28_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 37756907).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 12, 37756921).
raw_performed(i_p28_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 37756921).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 14, 37762302).
raw_performed(i_p28_a7, participant_pours_glass_of_water, 15, 37762302).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 16, 37769486).
raw_performed(i_p28_a7, participant_pours_glass_of_water, 17, 37769486).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 18, 37773843).
raw_performed(i_p28_a7, participant_returns_pitcher_of_water, 19, 37773843).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 20, 37779308).
raw_performed(i_p28_a7, participant_returns_pitcher_of_water, 21, 37779308).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 22, 37780341).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 23, 37792279).
raw_performed(i_p28_a7, participant_boils_water_in_microwave, 24, 37795586).
raw_performed(i_p28_a7, participant_pours_water_into_cup_of_noodles, 25, 37921901).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 37925885).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 37925898).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 37945119).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 37947022).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 38016502).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 38033307).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 38053126).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 38063078).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 38064371).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 38064383).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 38066798).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 38119058).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 38120225).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 38123462).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 38134411).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 38142088).
raw_performed(i_p28_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 38142101).
raw_performed(i_p28_a7, participant_brings_all_items_to_dining_room_table, 43, 38142500).

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

