% ======================================================================
% Paziente 8
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

instance(i_p8_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p8_a7, participant_retrieves_materials_from_cupboard_a, 1, 50225950).
raw_performed(i_p8_a7, participant_retrieves_materials_from_cupboard_a, 2, 50231543).
raw_performed(i_p8_a7, participant_fills_measuring_cup_with_water, 3, 50310217).
raw_performed(i_p8_a7, participant_fills_measuring_cup_with_water, 4, 50312700).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 5, 50316812).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 6, 50321126).
raw_performed(i_p8_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 50346156).
raw_performed(i_p8_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 50347378).
raw_performed(i_p8_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 50349842).
raw_performed(i_p8_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 50350220).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 11, 50357339).
raw_performed(i_p8_a7, participant_pours_glass_of_water, 12, 50357339).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 13, 50369563).
raw_performed(i_p8_a7, participant_pours_glass_of_water, 14, 50369563).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 15, 50371346).
raw_performed(i_p8_a7, participant_returns_pitcher_of_water, 16, 50371346).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 17, 50372398).
raw_performed(i_p8_a7, participant_returns_pitcher_of_water, 18, 50372398).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 19, 50374082).
raw_performed(i_p8_a7, participant_returns_pitcher_of_water, 20, 50374082).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 21, 50376676).
raw_performed(i_p8_a7, participant_returns_pitcher_of_water, 22, 50376676).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 23, 50382326).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 24, 50382940).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 25, 50384025).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 26, 50388622).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 27, 50388645).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 28, 50390249).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 29, 50390851).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 30, 50393184).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 31, 50399811).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 32, 50436653).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 33, 50495916).
raw_performed(i_p8_a7, participant_boils_water_in_microwave, 34, 50509429).
raw_performed(i_p8_a7, participant_pours_water_into_cup_of_noodles, 35, 50530706).
raw_performed(i_p8_a7, participant_pours_water_into_cup_of_noodles, 36, 50545122).
raw_performed(i_p8_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 50550763).
raw_performed(i_p8_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 50621236).
raw_performed(i_p8_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 50713273).
raw_performed(i_p8_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 50715625).
raw_performed(i_p8_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 50717562).
raw_performed(i_p8_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 50724324).
raw_performed(i_p8_a7, participant_brings_all_items_to_dining_room_table, 43, 50724705).
raw_performed(i_p8_a7, participant_brings_all_items_to_dining_room_table, 44, 50725778).

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

