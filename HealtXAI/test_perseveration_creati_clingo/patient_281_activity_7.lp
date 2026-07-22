% ======================================================================
% Paziente 281
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

instance(i_p281_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p281_a7, participant_retrieves_materials_from_cupboard_a, 1, 54378470).
raw_performed(i_p281_a7, participant_retrieves_materials_from_cupboard_a, 2, 54381609).
raw_performed(i_p281_a7, participant_retrieves_materials_from_cupboard_a, 3, 54382619).
raw_performed(i_p281_a7, participant_fills_measuring_cup_with_water, 4, 54388720).
raw_performed(i_p281_a7, participant_fills_measuring_cup_with_water, 5, 54388749).
raw_performed(i_p281_a7, participant_boils_water_in_microwave, 6, 54396526).
raw_performed(i_p281_a7, participant_boils_water_in_microwave, 7, 54400572).
raw_performed(i_p281_a7, participant_boils_water_in_microwave, 8, 54408976).
raw_performed(i_p281_a7, participant_boils_water_in_microwave, 9, 54413647).
raw_performed(i_p281_a7, participant_retrieves_materials_from_cupboard_a, 10, 54421537).
raw_performed(i_p281_a7, participant_retrieves_materials_from_cupboard_a, 11, 54423286).
raw_performed(i_p281_a7, participant_pours_glass_of_water, 12, 54429022).
raw_performed(i_p281_a7, participant_pours_glass_of_water, 13, 54507035).
raw_performed(i_p281_a7, participant_pours_glass_of_water, 14, 54507063).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 15, 54528341).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 16, 54528394).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 17, 54530491).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 18, 54531124).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 19, 54543919).
raw_performed(i_p281_a7, participant_boils_water_in_microwave, 20, 54597636).
raw_performed(i_p281_a7, participant_boils_water_in_microwave, 21, 54605421).
raw_performed(i_p281_a7, participant_boils_water_in_microwave, 22, 54605445).
raw_performed(i_p281_a7, participant_pours_water_into_cup_of_noodles, 23, 54635669).
raw_performed(i_p281_a7, participant_retrieves_materials_from_cupboard_a, 24, 54635694).
raw_performed(i_p281_a7, participant_retrieves_materials_from_cupboard_a, 25, 54640763).
raw_performed(i_p281_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 54643065).
raw_performed(i_p281_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 54647184).
raw_performed(i_p281_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 54647815).
raw_performed(i_p281_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 54655748).
raw_performed(i_p281_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 54658182).
raw_performed(i_p281_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 54658206).
raw_performed(i_p281_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 54659057).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 33, 54666120).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 34, 54666144).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 35, 54666718).
raw_performed(i_p281_a7, participant_brings_all_items_to_dining_room_table, 36, 54672594).

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

