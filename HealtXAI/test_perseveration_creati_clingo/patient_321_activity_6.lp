% ======================================================================
% Paziente 321
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

instance(i_p321_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p321_a7, participant_retrieves_materials_from_cupboard_a, 1, 52535963).
raw_performed(i_p321_a7, participant_fills_measuring_cup_with_water, 2, 52548112).
raw_performed(i_p321_a7, participant_fills_measuring_cup_with_water, 3, 52550513).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 4, 52559645).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 5, 52564966).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 6, 52567493).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 7, 52571417).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 8, 52635060).
raw_performed(i_p321_a7, participant_retrieves_materials_from_cupboard_a, 9, 52644744).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 10, 52644744).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 11, 52656717).
raw_performed(i_p321_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 52656717).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 13, 52658320).
raw_performed(i_p321_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 52658320).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 15, 52663531).
raw_performed(i_p321_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 52663531).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 17, 52663906).
raw_performed(i_p321_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 18, 52663906).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 19, 52664512).
raw_performed(i_p321_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 20, 52664512).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 21, 52666597).
raw_performed(i_p321_a7, participant_pours_glass_of_water, 22, 52666597).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 23, 52679740).
raw_performed(i_p321_a7, participant_pours_glass_of_water, 24, 52679740).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 25, 52683027).
raw_performed(i_p321_a7, participant_returns_pitcher_of_water, 26, 52683027).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 27, 52687124).
raw_performed(i_p321_a7, participant_returns_pitcher_of_water, 28, 52687124).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 29, 52687497).
raw_performed(i_p321_a7, participant_returns_pitcher_of_water, 30, 52687497).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 31, 52691381).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 32, 52694221).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 33, 52705544).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 34, 52710538).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 35, 52721534).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 36, 52722124).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 37, 52723739).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 38, 52727437).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 39, 52730963).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 40, 52740523).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 41, 52743098).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 42, 52753992).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 43, 52755180).
raw_performed(i_p321_a7, participant_boils_water_in_microwave, 44, 52758945).
raw_performed(i_p321_a7, participant_pours_water_into_cup_of_noodles, 45, 52770052).
raw_performed(i_p321_a7, participant_pours_water_into_cup_of_noodles, 46, 52772608).
raw_performed(i_p321_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47, 52799783).
raw_performed(i_p321_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48, 52805625).
raw_performed(i_p321_a7, participant_brings_all_items_to_dining_room_table, 49, 52819432).

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

