% ======================================================================
% Paziente 312
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

instance(i_p312_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p312_a7, participant_retrieves_materials_from_cupboard_a, 1, 51674451).
raw_performed(i_p312_a7, participant_fills_measuring_cup_with_water, 2, 51692087).
raw_performed(i_p312_a7, participant_fills_measuring_cup_with_water, 3, 51692104).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 4, 51701009).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 5, 51709902).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 6, 51721020).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 7, 51728886).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 8, 51752027).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 9, 51765751).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 10, 51787853).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 11, 51837182).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 12, 51844424).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 13, 51852962).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 14, 51873687).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 15, 51883354).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 16, 51895315).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 17, 51898550).
raw_performed(i_p312_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 18, 51898550).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 19, 51903454).
raw_performed(i_p312_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 20, 51903454).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 21, 51904994).
raw_performed(i_p312_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 22, 51904994).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 23, 51908097).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 24, 51911508).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 25, 51916534).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 26, 51928605).
raw_performed(i_p312_a7, participant_pours_glass_of_water, 27, 51948130).
raw_performed(i_p312_a7, participant_pours_glass_of_water, 28, 51957122).
raw_performed(i_p312_a7, participant_returns_pitcher_of_water, 29, 51959420).
raw_performed(i_p312_a7, participant_returns_pitcher_of_water, 30, 51962540).
raw_performed(i_p312_a7, participant_returns_pitcher_of_water, 31, 51963155).
raw_performed(i_p312_a7, participant_pours_water_into_cup_of_noodles, 32, 51973169).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 51981143).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 51994350).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 52018316).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 52025722).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 52033474).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 52092140).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 52101915).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 52112283).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 52125755).
raw_performed(i_p312_a7, participant_brings_all_items_to_dining_room_table, 42, 52127535).

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

