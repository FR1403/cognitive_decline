% ======================================================================
% Paziente 263
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

instance(i_p263_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 1, 36643064).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 2, 36644028).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 3, 36669097).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 4, 36689005).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 5, 36700089).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 6, 36716039).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 7, 36728003).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 8, 36733000).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 9, 36740017).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 10, 36751008).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 11, 36798063).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 12, 36807041).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 13, 36821046).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 14, 36945063).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 15, 36950043).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 16, 37037093).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 17, 37047011).
raw_performed(i_p263_a7, participant_retrieves_materials_from_cupboard_a, 18, 37048016).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 19, 37140004).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 20, 37150031).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 21, 37151017).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 22, 37152019).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 23, 37155073).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 24, 37156098).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 25, 37161020).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 26, 37163089).
raw_performed(i_p263_a7, participant_brings_all_items_to_dining_room_table, 27, 37171017).

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

