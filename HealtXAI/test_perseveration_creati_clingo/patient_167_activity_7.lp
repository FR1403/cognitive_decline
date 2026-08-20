% ======================================================================
% Paziente 167
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

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 421747).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 2061963).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 307278).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 193518).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 255405).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 259464).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 225934).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 184857).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 363831).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p167_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p167_a7, participant_retrieves_materials_from_cupboard_a, 1, 50521058).
raw_performed(i_p167_a7, participant_fills_measuring_cup_with_water, 2, 50548485).
raw_performed(i_p167_a7, participant_fills_measuring_cup_with_water, 3, 50551385).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 4, 50554127).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 5, 50558263).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 6, 50570938).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 7, 50575882).
raw_performed(i_p167_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 50575882).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 9, 50576947).
raw_performed(i_p167_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 50576947).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 11, 50579290).
raw_performed(i_p167_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 50579290).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 13, 50579821).
raw_performed(i_p167_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 50579821).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 15, 50593595).
raw_performed(i_p167_a7, participant_pours_glass_of_water, 16, 50593595).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 17, 50596120).
raw_performed(i_p167_a7, participant_returns_pitcher_of_water, 18, 50596120).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 19, 50598376).
raw_performed(i_p167_a7, participant_returns_pitcher_of_water, 20, 50598376).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 21, 50599232).
raw_performed(i_p167_a7, participant_returns_pitcher_of_water, 22, 50599232).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 23, 50622305).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 24, 50623830).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 25, 50652734).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 26, 50677168).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 27, 50688545).
raw_performed(i_p167_a7, participant_boils_water_in_microwave, 28, 50693122).
raw_performed(i_p167_a7, participant_pours_water_into_cup_of_noodles, 29, 50769635).
raw_performed(i_p167_a7, participant_pours_water_into_cup_of_noodles, 30, 50776809).
raw_performed(i_p167_a7, participant_pours_water_into_cup_of_noodles, 31, 50783422).
raw_performed(i_p167_a7, participant_pours_water_into_cup_of_noodles, 32, 50793802).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 50805609).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 50816091).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 50819430).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 50834701).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 50846425).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 50855708).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 50858453).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 50861856).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 50874926).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 50884930).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 50887416).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 50890810).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45, 50918529).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46, 50924605).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47, 50939185).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48, 50945913).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 49, 50959461).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 50, 50981777).
raw_performed(i_p167_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 51, 50987724).
raw_performed(i_p167_a7, participant_brings_all_items_to_dining_room_table, 52, 50996010).

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

