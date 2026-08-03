% ======================================================================
% Paziente 147
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

instance(i_p147_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p147_a7, participant_retrieves_materials_from_cupboard_a, 1, 49730326).
raw_performed(i_p147_a7, participant_retrieves_materials_from_cupboard_a, 2, 49748536).
raw_performed(i_p147_a7, participant_fills_measuring_cup_with_water, 3, 49856952).
raw_performed(i_p147_a7, participant_boils_water_in_microwave, 4, 49864117).
raw_performed(i_p147_a7, participant_boils_water_in_microwave, 5, 49868961).
raw_performed(i_p147_a7, participant_boils_water_in_microwave, 6, 49882392).
raw_performed(i_p147_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 49917236).
raw_performed(i_p147_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 49921493).
raw_performed(i_p147_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 49922066).
raw_performed(i_p147_a7, participant_pours_glass_of_water, 10, 49924503).
raw_performed(i_p147_a7, participant_pours_glass_of_water, 11, 49930994).
raw_performed(i_p147_a7, participant_pours_glass_of_water, 12, 49938717).
raw_performed(i_p147_a7, participant_pours_glass_of_water, 13, 49943929).
raw_performed(i_p147_a7, participant_returns_pitcher_of_water, 14, 49952005).
raw_performed(i_p147_a7, participant_returns_pitcher_of_water, 15, 49955524).
raw_performed(i_p147_a7, participant_returns_pitcher_of_water, 16, 49956371).
raw_performed(i_p147_a7, participant_pours_water_into_cup_of_noodles, 17, 49991118).
raw_performed(i_p147_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 50037381).
raw_performed(i_p147_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 50054841).
raw_performed(i_p147_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 50086986).
raw_performed(i_p147_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 50101267).
raw_performed(i_p147_a7, participant_brings_all_items_to_dining_room_table, 22, 50112039).

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

