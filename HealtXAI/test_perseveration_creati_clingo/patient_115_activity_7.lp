% ======================================================================
% Paziente 115
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

instance(i_p115_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p115_a7, participant_retrieves_materials_from_cupboard_a, 1, 35127996).
raw_performed(i_p115_a7, participant_fills_measuring_cup_with_water, 2, 35141479).
raw_performed(i_p115_a7, participant_fills_measuring_cup_with_water, 3, 35149433).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 4, 35316228).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 5, 35329270).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 6, 35333229).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 7, 35339529).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 8, 35348499).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 9, 35355169).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 10, 35361795).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 11, 35383188).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 12, 35407911).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 13, 35412876).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 14, 35418469).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 15, 35422628).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 16, 35426578).
raw_performed(i_p115_a7, participant_boils_water_in_microwave, 17, 35433662).
raw_performed(i_p115_a7, participant_pours_water_into_cup_of_noodles, 18, 35460742).
raw_performed(i_p115_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 35462185).
raw_performed(i_p115_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 35462821).
raw_performed(i_p115_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 35463445).
raw_performed(i_p115_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 35468747).
raw_performed(i_p115_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 35469830).
raw_performed(i_p115_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 35470421).
raw_performed(i_p115_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 35472119).
raw_performed(i_p115_a7, participant_brings_all_items_to_dining_room_table, 26, 35475087).

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

