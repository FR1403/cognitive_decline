% ======================================================================
% Paziente 247
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

instance(i_p247_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p247_a7, participant_retrieves_materials_from_cupboard_a, 1, 38637323).
raw_performed(i_p247_a7, participant_retrieves_materials_from_cupboard_a, 2, 38643304).
raw_performed(i_p247_a7, participant_fills_measuring_cup_with_water, 3, 38647831).
raw_performed(i_p247_a7, participant_fills_measuring_cup_with_water, 4, 38650723).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 5, 38661386).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 6, 38692917).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 7, 38693325).
raw_performed(i_p247_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 38693325).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 9, 38694004).
raw_performed(i_p247_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 38694004).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 11, 38700395).
raw_performed(i_p247_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 38700395).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 13, 38702753).
raw_performed(i_p247_a7, participant_pours_glass_of_water, 14, 38702753).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 15, 38731666).
raw_performed(i_p247_a7, participant_pours_glass_of_water, 16, 38731666).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 17, 38731822).
raw_performed(i_p247_a7, participant_pours_glass_of_water, 18, 38731822).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 19, 38737464).
raw_performed(i_p247_a7, participant_returns_pitcher_of_water, 20, 38737464).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 21, 38739496).
raw_performed(i_p247_a7, participant_returns_pitcher_of_water, 22, 38739496).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 23, 38739707).
raw_performed(i_p247_a7, participant_returns_pitcher_of_water, 24, 38739707).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 25, 38758313).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 26, 38758649).
raw_performed(i_p247_a7, participant_boils_water_in_microwave, 27, 38783711).
raw_performed(i_p247_a7, participant_pours_water_into_cup_of_noodles, 28, 38895180).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 38906533).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 38912826).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 38929957).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 38933444).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 38939815).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 38958386).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 38972949).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 38984093).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 39020726).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 39024182).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 39048023).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 39050804).
raw_performed(i_p247_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 39059609).
raw_performed(i_p247_a7, participant_brings_all_items_to_dining_room_table, 42, 39100424).

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

