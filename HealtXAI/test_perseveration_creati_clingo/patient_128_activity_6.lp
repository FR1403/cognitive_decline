% ======================================================================
% Paziente 128
% Attività: Prepare a cup of soup using the microwave.
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

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 18000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 240000).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p128_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p128_a7, participant_retrieves_materials_from_cupboard_a, 1, 35037096).
raw_performed(i_p128_a7, participant_retrieves_materials_from_cupboard_a, 2, 35047045).
raw_performed(i_p128_a7, participant_retrieves_materials_from_cupboard_a, 3, 35050000).
raw_performed(i_p128_a7, participant_retrieves_materials_from_cupboard_a, 4, 35062062).
raw_performed(i_p128_a7, participant_retrieves_materials_from_cupboard_a, 5, 35068087).
raw_performed(i_p128_a7, participant_retrieves_materials_from_cupboard_a, 6, 35144075).
raw_performed(i_p128_a7, participant_retrieves_materials_from_cupboard_a, 7, 35153066).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 8, 35245034).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 9, 35249005).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 10, 35435009).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 11, 35439006).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 12, 35447003).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 13, 35471010).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 14, 35480073).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 15, 35488044).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 16, 35542092).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 17, 35546006).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 18, 35553042).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 19, 35567002).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 20, 35569078).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 21, 35653097).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 22, 35657049).
raw_performed(i_p128_a7, participant_boils_water_in_microwave, 23, 35661086).
raw_performed(i_p128_a7, participant_pours_water_into_cup_of_noodles, 24, 35664092).
raw_performed(i_p128_a7, participant_pours_water_into_cup_of_noodles, 25, 35672022).

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

