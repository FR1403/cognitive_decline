% ======================================================================
% Paziente 13
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

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 437689).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 2749284).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 328265).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 211844).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 302796).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 308099).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 270117).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 213072).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 410938).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p13_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p13_a7, participant_retrieves_materials_from_cupboard_a, 1, 50085288).
raw_performed(i_p13_a7, participant_retrieves_materials_from_cupboard_a, 2, 50088370).
raw_performed(i_p13_a7, participant_retrieves_materials_from_cupboard_a, 3, 50092291).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 4, 50109517).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 5, 50113278).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 6, 50113302).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 7, 50117064).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 8, 50152501).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 9, 50153139).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 10, 50162462).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 11, 50166102).
raw_performed(i_p13_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 50166102).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 13, 50169901).
raw_performed(i_p13_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 50169901).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 15, 50176277).
raw_performed(i_p13_a7, participant_pours_glass_of_water, 16, 50176277).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 17, 50183743).
raw_performed(i_p13_a7, participant_pours_glass_of_water, 18, 50183743).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 19, 50187682).
raw_performed(i_p13_a7, participant_pours_glass_of_water, 20, 50187682).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 21, 50195271).
raw_performed(i_p13_a7, participant_returns_pitcher_of_water, 22, 50195271).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 23, 50203203).
raw_performed(i_p13_a7, participant_returns_pitcher_of_water, 24, 50203203).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 25, 50203231).
raw_performed(i_p13_a7, participant_returns_pitcher_of_water, 26, 50203231).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 27, 50209941).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 28, 50209965).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 29, 50209990).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 30, 50222599).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 31, 50283778).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 32, 50293906).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 33, 50296877).
raw_performed(i_p13_a7, participant_boils_water_in_microwave, 34, 50304254).
raw_performed(i_p13_a7, participant_brings_all_items_to_dining_room_table, 35, 50330938).

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

