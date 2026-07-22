% ======================================================================
% Paziente 222
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

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 437605).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 2749284).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 328296).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 211844).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 302796).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 307897).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 301246).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 213072).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 408640).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p222_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 1, 50552353).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 2, 50552421).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 3, 50555570).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 4, 50563226).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 5, 50695525).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 6, 50721385).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 7, 50730422).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 8, 50731358).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 9, 50811588).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 10, 50813462).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 11, 50828728).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 50834657).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 50834861).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 50835453).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 15, 50838823).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 50838957).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 17, 50840074).
raw_performed(i_p222_a7, participant_pours_glass_of_water, 18, 50841223).
raw_performed(i_p222_a7, participant_pours_glass_of_water, 19, 50844405).
raw_performed(i_p222_a7, participant_pours_glass_of_water, 20, 50855478).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 21, 50856571).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 22, 50857185).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 23, 50860743).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 24, 50860797).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 25, 50861201).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 26, 50862571).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 27, 50863699).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 28, 50864773).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 29, 50866643).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 30, 50903989).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 31, 50906115).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 32, 50930716).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 33, 50937472).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 34, 50959415).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 35, 50964204).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 36, 50970957).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 37, 50973899).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 38, 50994736).
raw_performed(i_p222_a7, participant_pours_water_into_cup_of_noodles, 39, 51010712).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 40, 51040540).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 41, 51041051).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 42, 51042594).

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

