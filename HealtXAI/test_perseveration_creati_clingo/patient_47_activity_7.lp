% ======================================================================
% Paziente 47
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

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 437689).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 2749284).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 328265).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 211844).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 302796).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 308099).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 270117).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 213072).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 410938).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p47_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p47_a7, participant_retrieves_materials_from_cupboard_a, 1, 37468298).
raw_performed(i_p47_a7, participant_fills_measuring_cup_with_water, 2, 37480809).
raw_performed(i_p47_a7, participant_fills_measuring_cup_with_water, 3, 37480823).
raw_performed(i_p47_a7, participant_fills_measuring_cup_with_water, 4, 37483286).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 5, 37491033).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 6, 37497996).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 7, 37517181).
raw_performed(i_p47_a7, participant_retrieves_materials_from_cupboard_a, 8, 37624726).
raw_performed(i_p47_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 37635858).
raw_performed(i_p47_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 37637228).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 11, 37639290).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 12, 37641047).
raw_performed(i_p47_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 37641047).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 14, 37649723).
raw_performed(i_p47_a7, participant_pours_glass_of_water, 15, 37649723).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 16, 37657365).
raw_performed(i_p47_a7, participant_pours_glass_of_water, 17, 37657365).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 18, 37664051).
raw_performed(i_p47_a7, participant_pours_glass_of_water, 19, 37664051).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 20, 37664065).
raw_performed(i_p47_a7, participant_returns_pitcher_of_water, 21, 37664065).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 22, 37666597).
raw_performed(i_p47_a7, participant_returns_pitcher_of_water, 23, 37666597).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 24, 37701503).
raw_performed(i_p47_a7, participant_pours_water_into_cup_of_noodles, 25, 37713869).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 37724460).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 37747296).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 37765857).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 37768225).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 37787654).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 37791068).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 37803592).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 37810358).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 37812337).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 37841628).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 37853631).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 37872976).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 37900448).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 37918110).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 37918469).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 37923283).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 37934000).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 37969068).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 37973267).
raw_performed(i_p47_a7, participant_brings_all_items_to_dining_room_table, 45, 37974562).

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

