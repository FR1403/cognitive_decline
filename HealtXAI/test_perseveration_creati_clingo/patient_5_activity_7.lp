% ======================================================================
% Paziente 5
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

instance(i_p5_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p5_a7, participant_retrieves_materials_from_cupboard_a, 1, 42683856).
raw_performed(i_p5_a7, participant_fills_measuring_cup_with_water, 2, 42709725).
raw_performed(i_p5_a7, participant_boils_water_in_microwave, 3, 42750468).
raw_performed(i_p5_a7, participant_boils_water_in_microwave, 4, 42823648).
raw_performed(i_p5_a7, participant_boils_water_in_microwave, 5, 42831561).
raw_performed(i_p5_a7, participant_boils_water_in_microwave, 6, 42874494).
raw_performed(i_p5_a7, participant_boils_water_in_microwave, 7, 42879133).
raw_performed(i_p5_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 43004300).
raw_performed(i_p5_a7, participant_pours_glass_of_water, 9, 43007794).
raw_performed(i_p5_a7, participant_pours_glass_of_water, 10, 43025831).
raw_performed(i_p5_a7, participant_pours_glass_of_water, 11, 43027528).
raw_performed(i_p5_a7, participant_returns_pitcher_of_water, 12, 43029674).
raw_performed(i_p5_a7, participant_pours_water_into_cup_of_noodles, 13, 43052356).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 14, 43066699).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 15, 43069358).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 16, 43069382).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 17, 43070408).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 43077738).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 43078390).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 43109425).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 43132340).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 43204677).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 43250422).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 43258921).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 43278680).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 43302643).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 43309811).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 43344380).
raw_performed(i_p5_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 43353534).
raw_performed(i_p5_a7, participant_brings_all_items_to_dining_room_table, 30, 43367262).

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

