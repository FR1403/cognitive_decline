% ======================================================================
% Paziente 274
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

instance(i_p274_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p274_a7, participant_retrieves_materials_from_cupboard_a, 1, 35510357).
raw_performed(i_p274_a7, participant_fills_measuring_cup_with_water, 2, 35558656).
raw_performed(i_p274_a7, participant_fills_measuring_cup_with_water, 3, 35562362).
raw_performed(i_p274_a7, participant_fills_measuring_cup_with_water, 4, 35566092).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 5, 35566407).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 6, 35570145).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 7, 35577692).
raw_performed(i_p274_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 35583211).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 9, 35585114).
raw_performed(i_p274_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 35585114).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 11, 35587824).
raw_performed(i_p274_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 35587824).
raw_performed(i_p274_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 35587896).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 14, 35614015).
raw_performed(i_p274_a7, participant_pours_glass_of_water, 15, 35614015).
raw_performed(i_p274_a7, participant_returns_pitcher_of_water, 16, 35614645).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 17, 35615285).
raw_performed(i_p274_a7, participant_returns_pitcher_of_water, 18, 35615285).
raw_performed(i_p274_a7, participant_returns_pitcher_of_water, 19, 35617608).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 20, 35618203).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 21, 35628832).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 22, 35638290).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 23, 35653331).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 24, 35657691).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 25, 35657739).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 26, 35657763).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 27, 35658291).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 28, 35661908).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 29, 35662963).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 30, 35669965).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 31, 35711987).
raw_performed(i_p274_a7, participant_boils_water_in_microwave, 32, 35746185).
raw_performed(i_p274_a7, participant_pours_water_into_cup_of_noodles, 33, 35764437).
raw_performed(i_p274_a7, participant_pours_water_into_cup_of_noodles, 34, 35787398).
raw_performed(i_p274_a7, participant_brings_all_items_to_dining_room_table, 35, 35788261).

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

