% ======================================================================
% Paziente 117
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

instance(i_p117_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p117_a7, participant_retrieves_materials_from_cupboard_a, 1, 50639631).
raw_performed(i_p117_a7, participant_fills_measuring_cup_with_water, 2, 50657662).
raw_performed(i_p117_a7, participant_fills_measuring_cup_with_water, 3, 50657682).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 4, 50663438).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 5, 50671230).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 6, 50705518).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 7, 50706381).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 8, 50717379).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 9, 50739995).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 10, 50740423).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 11, 50751512).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 12, 50751524).
raw_performed(i_p117_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 50751524).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 14, 50752791).
raw_performed(i_p117_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 15, 50752791).
raw_performed(i_p117_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 50755075).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 17, 50756628).
raw_performed(i_p117_a7, participant_pours_glass_of_water, 18, 50756628).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 19, 50762733).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 20, 50762751).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 21, 50770730).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 22, 50774730).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 23, 50776611).
raw_performed(i_p117_a7, participant_pours_glass_of_water, 24, 50776611).
raw_performed(i_p117_a7, participant_boils_water_in_microwave, 25, 50778881).
raw_performed(i_p117_a7, participant_pours_glass_of_water, 26, 50778881).
raw_performed(i_p117_a7, participant_pours_glass_of_water, 27, 50799440).
raw_performed(i_p117_a7, participant_returns_pitcher_of_water, 28, 50799454).
raw_performed(i_p117_a7, participant_returns_pitcher_of_water, 29, 50803769).
raw_performed(i_p117_a7, participant_pours_water_into_cup_of_noodles, 30, 50865460).
raw_performed(i_p117_a7, participant_brings_all_items_to_dining_room_table, 31, 50875643).

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

