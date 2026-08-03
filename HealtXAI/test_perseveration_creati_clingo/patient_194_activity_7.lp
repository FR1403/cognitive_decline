% ======================================================================
% Paziente 194
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

instance(i_p194_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p194_a7, participant_retrieves_materials_from_cupboard_a, 1, 37232037).
raw_performed(i_p194_a7, participant_retrieves_materials_from_cupboard_a, 2, 37247076).
raw_performed(i_p194_a7, participant_retrieves_materials_from_cupboard_a, 3, 37262086).
raw_performed(i_p194_a7, participant_retrieves_materials_from_cupboard_a, 4, 37273976).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 5, 37324005).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 6, 37328095).
raw_performed(i_p194_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 37474037).
raw_performed(i_p194_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 37477058).
raw_performed(i_p194_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 37480150).
raw_performed(i_p194_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 37487050).
raw_performed(i_p194_a7, participant_pours_glass_of_water, 11, 37489048).
raw_performed(i_p194_a7, participant_returns_pitcher_of_water, 12, 37510053).
raw_performed(i_p194_a7, participant_returns_pitcher_of_water, 13, 37515030).
raw_performed(i_p194_a7, participant_returns_pitcher_of_water, 14, 37517449).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 15, 37519098).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 16, 37526445).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 17, 37663091).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 18, 37665035).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 19, 37813327).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 20, 37819036).
raw_performed(i_p194_a7, participant_pours_water_into_cup_of_noodles, 21, 37819085).
raw_performed(i_p194_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 37835042).
raw_performed(i_p194_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 37873179).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 24, 37879094).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 25, 37882239).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 26, 37882612).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 27, 37883034).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 28, 37888949).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 29, 37889901).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 30, 37892227).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 31, 37898077).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 32, 37900476).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 33, 37901012).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 34, 37902186).

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

