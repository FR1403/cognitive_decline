% ======================================================================
% Paziente 143
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

instance(i_p143_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p143_a7, participant_retrieves_materials_from_cupboard_a, 1, 53347882).
raw_performed(i_p143_a7, participant_retrieves_materials_from_cupboard_a, 2, 53408704).
raw_performed(i_p143_a7, participant_retrieves_materials_from_cupboard_a, 3, 53450770).
raw_performed(i_p143_a7, participant_retrieves_materials_from_cupboard_a, 4, 53453551).
raw_performed(i_p143_a7, participant_fills_measuring_cup_with_water, 5, 53454862).
raw_performed(i_p143_a7, participant_fills_measuring_cup_with_water, 6, 53457097).
raw_performed(i_p143_a7, participant_fills_measuring_cup_with_water, 7, 53459230).
raw_performed(i_p143_a7, participant_fills_measuring_cup_with_water, 8, 53460079).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 9, 53465092).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 10, 53473046).
raw_performed(i_p143_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 53503065).
raw_performed(i_p143_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 53512430).
raw_performed(i_p143_a7, participant_returns_pitcher_of_water, 13, 53542528).
raw_performed(i_p143_a7, participant_returns_pitcher_of_water, 14, 53545063).
raw_performed(i_p143_a7, participant_returns_pitcher_of_water, 15, 53546003).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 16, 53556038).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 17, 53561499).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 18, 53625472).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 19, 53629799).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 20, 53693047).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 21, 53699081).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 22, 53709075).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 23, 53772427).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 24, 53777046).
raw_performed(i_p143_a7, participant_boils_water_in_microwave, 25, 53777081).
raw_performed(i_p143_a7, participant_pours_water_into_cup_of_noodles, 26, 53785001).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 53817064).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 53827114).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 53831039).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 53835006).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 53836055).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 53852065).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 53854005).
raw_performed(i_p143_a7, participant_retrieves_materials_from_cupboard_a, 34, 53855648).
raw_performed(i_p143_a7, participant_retrieves_materials_from_cupboard_a, 35, 53862306).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 53863177).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 53883038).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 53909027).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 53922447).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 53969035).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 54033391).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 54043168).
raw_performed(i_p143_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 54045527).
raw_performed(i_p143_a7, participant_brings_all_items_to_dining_room_table, 44, 54051059).
raw_performed(i_p143_a7, participant_brings_all_items_to_dining_room_table, 45, 54052326).
raw_performed(i_p143_a7, participant_brings_all_items_to_dining_room_table, 46, 54053199).
raw_performed(i_p143_a7, participant_brings_all_items_to_dining_room_table, 47, 54055008).

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

