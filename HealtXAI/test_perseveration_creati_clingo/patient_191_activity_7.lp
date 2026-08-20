% ======================================================================
% Paziente 191
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

instance(i_p191_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p191_a7, participant_retrieves_materials_from_cupboard_a, 1, 37775030).
raw_performed(i_p191_a7, participant_retrieves_materials_from_cupboard_a, 2, 37787840).
raw_performed(i_p191_a7, participant_fills_measuring_cup_with_water, 3, 37827251).
raw_performed(i_p191_a7, participant_fills_measuring_cup_with_water, 4, 37827267).
raw_performed(i_p191_a7, participant_fills_measuring_cup_with_water, 5, 37829704).
raw_performed(i_p191_a7, participant_fills_measuring_cup_with_water, 6, 37837074).
raw_performed(i_p191_a7, participant_fills_measuring_cup_with_water, 7, 37841996).
raw_performed(i_p191_a7, participant_fills_measuring_cup_with_water, 8, 37846920).
raw_performed(i_p191_a7, participant_pours_water_into_cup_of_noodles, 9, 37868273).
raw_performed(i_p191_a7, participant_boils_water_in_microwave, 10, 37878217).
raw_performed(i_p191_a7, participant_boils_water_in_microwave, 11, 37898435).
raw_performed(i_p191_a7, participant_boils_water_in_microwave, 12, 37939822).
raw_performed(i_p191_a7, participant_boils_water_in_microwave, 13, 37954178).
raw_performed(i_p191_a7, participant_boils_water_in_microwave, 14, 37960308).
raw_performed(i_p191_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 15, 37997850).
raw_performed(i_p191_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 37998899).
raw_performed(i_p191_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 17, 38005401).
raw_performed(i_p191_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 18, 38005768).
raw_performed(i_p191_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 19, 38006972).
raw_performed(i_p191_a7, participant_pours_glass_of_water, 20, 38015969).
raw_performed(i_p191_a7, participant_returns_pitcher_of_water, 21, 38018252).
raw_performed(i_p191_a7, participant_returns_pitcher_of_water, 22, 38019314).
raw_performed(i_p191_a7, participant_returns_pitcher_of_water, 23, 38023663).
raw_performed(i_p191_a7, participant_boils_water_in_microwave, 24, 38117765).
raw_performed(i_p191_a7, participant_boils_water_in_microwave, 25, 38121823).
raw_performed(i_p191_a7, participant_brings_all_items_to_dining_room_table, 26, 38134473).
raw_performed(i_p191_a7, participant_brings_all_items_to_dining_room_table, 27, 38135170).
raw_performed(i_p191_a7, participant_brings_all_items_to_dining_room_table, 28, 38141609).
raw_performed(i_p191_a7, participant_brings_all_items_to_dining_room_table, 29, 38155764).
raw_performed(i_p191_a7, participant_brings_all_items_to_dining_room_table, 30, 38156135).
raw_performed(i_p191_a7, participant_brings_all_items_to_dining_room_table, 31, 38159035).
raw_performed(i_p191_a7, participant_brings_all_items_to_dining_room_table, 32, 38160338).

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

