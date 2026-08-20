% ======================================================================
% Paziente 215
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

instance(i_p215_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p215_a7, participant_retrieves_materials_from_cupboard_a, 1, 50484616).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 2, 50704644).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 3, 50704807).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 4, 50750176).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 5, 50752012).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 6, 50754635).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 7, 50756701).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 8, 50758209).
raw_performed(i_p215_a7, participant_retrieves_materials_from_cupboard_a, 9, 50874954).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 50887685).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 50888798).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 50891676).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 50891864).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 50891955).
raw_performed(i_p215_a7, participant_pours_glass_of_water, 15, 50900774).
raw_performed(i_p215_a7, participant_pours_glass_of_water, 16, 50910816).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 17, 50914496).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 18, 50915445).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 19, 50918302).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 20, 50918333).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 21, 50924554).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 22, 50926476).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 23, 50993607).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 24, 50994608).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 25, 50998348).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 26, 51010329).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 27, 51015754).
raw_performed(i_p215_a7, participant_pours_water_into_cup_of_noodles, 28, 51022918).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 29, 51037625).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 30, 51038206).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 31, 51041377).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 32, 51068967).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 33, 51069533).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 34, 51073057).

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

