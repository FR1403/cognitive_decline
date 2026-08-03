% ======================================================================
% Paziente 329
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

instance(i_p329_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p329_a7, participant_retrieves_materials_from_cupboard_a, 1, 50724376).
raw_performed(i_p329_a7, participant_fills_measuring_cup_with_water, 2, 50776356).
raw_performed(i_p329_a7, participant_fills_measuring_cup_with_water, 3, 50776385).
raw_performed(i_p329_a7, participant_fills_measuring_cup_with_water, 4, 50780234).
raw_performed(i_p329_a7, participant_fills_measuring_cup_with_water, 5, 50780262).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 6, 50793315).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 7, 50796019).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 8, 50801683).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 9, 50809160).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 10, 50857217).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 11, 50867335).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 12, 50867944).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 13, 50880537).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 14, 50890503).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 15, 50900251).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 16, 50907718).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 17, 50915520).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 18, 50930196).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 19, 50943690).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 20, 50959103).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 21, 50964085).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 22, 50997861).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 23, 51010711).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 24, 51013758).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 25, 51017239).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 26, 51026676).
raw_performed(i_p329_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 27, 51026676).
raw_performed(i_p329_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 28, 51029542).
raw_performed(i_p329_a7, participant_pours_glass_of_water, 29, 51036968).
raw_performed(i_p329_a7, participant_pours_glass_of_water, 30, 51045691).
raw_performed(i_p329_a7, participant_pours_glass_of_water, 31, 51049938).
raw_performed(i_p329_a7, participant_pours_glass_of_water, 32, 51054029).
raw_performed(i_p329_a7, participant_returns_pitcher_of_water, 33, 51057403).
raw_performed(i_p329_a7, participant_boils_water_in_microwave, 34, 51059311).
raw_performed(i_p329_a7, participant_returns_pitcher_of_water, 35, 51061610).
raw_performed(i_p329_a7, participant_pours_water_into_cup_of_noodles, 36, 51090981).
raw_performed(i_p329_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 51106287).
raw_performed(i_p329_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 51114112).
raw_performed(i_p329_a7, participant_brings_all_items_to_dining_room_table, 39, 51121453).
raw_performed(i_p329_a7, participant_brings_all_items_to_dining_room_table, 40, 51122494).

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

