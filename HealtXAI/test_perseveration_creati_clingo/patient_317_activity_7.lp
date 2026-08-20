% ======================================================================
% Paziente 317
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

instance(i_p317_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p317_a7, participant_retrieves_materials_from_cupboard_a, 1, 35361230).
raw_performed(i_p317_a7, participant_fills_measuring_cup_with_water, 2, 35403332).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 3, 35413098).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 4, 35418908).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 5, 35435651).
raw_performed(i_p317_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 6, 35439751).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 7, 35440317).
raw_performed(i_p317_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 35440317).
raw_performed(i_p317_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 35444293).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 10, 35454587).
raw_performed(i_p317_a7, participant_pours_glass_of_water, 11, 35454587).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 12, 35455207).
raw_performed(i_p317_a7, participant_pours_glass_of_water, 13, 35455207).
raw_performed(i_p317_a7, participant_returns_pitcher_of_water, 14, 35469918).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 15, 35470567).
raw_performed(i_p317_a7, participant_returns_pitcher_of_water, 16, 35470567).
raw_performed(i_p317_a7, participant_returns_pitcher_of_water, 17, 35475256).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 18, 35478861).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 19, 35485016).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 20, 35497901).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 21, 35505605).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 22, 35509202).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 23, 35511363).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 24, 35514138).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 25, 35537238).
raw_performed(i_p317_a7, participant_boils_water_in_microwave, 26, 35612541).
raw_performed(i_p317_a7, participant_pours_water_into_cup_of_noodles, 27, 35616685).
raw_performed(i_p317_a7, participant_pours_water_into_cup_of_noodles, 28, 35626255).
raw_performed(i_p317_a7, participant_brings_all_items_to_dining_room_table, 29, 35643806).

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

