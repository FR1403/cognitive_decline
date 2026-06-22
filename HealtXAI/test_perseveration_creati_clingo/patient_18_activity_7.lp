% ======================================================================
% Paziente 18
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

instance(i_p18_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p18_a7, participant_retrieves_materials_from_cupboard_a, 1, 52573381).
raw_performed(i_p18_a7, participant_fills_measuring_cup_with_water, 2, 52586812).
raw_performed(i_p18_a7, participant_fills_measuring_cup_with_water, 3, 52589298).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 4, 52606156).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 5, 52610698).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 6, 52623516).
raw_performed(i_p18_a7, participant_retrieves_materials_from_cupboard_a, 7, 52626538).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 8, 52632044).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 9, 52646448).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 10, 52646462).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 11, 52653548).
raw_performed(i_p18_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 52659011).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 13, 52659990).
raw_performed(i_p18_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 52659990).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 15, 52664459).
raw_performed(i_p18_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 52664459).
raw_performed(i_p18_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 17, 52665907).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 18, 52668003).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 19, 52682010).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 20, 52688933).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 21, 52691799).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 22, 52696747).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 23, 52702097).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 24, 52710296).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 25, 52715348).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 26, 52727455).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 27, 52730659).
raw_performed(i_p18_a7, participant_boils_water_in_microwave, 28, 52738990).
raw_performed(i_p18_a7, participant_pours_water_into_cup_of_noodles, 29, 52847794).
raw_performed(i_p18_a7, participant_pours_water_into_cup_of_noodles, 30, 52850746).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 52875522).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 52880922).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 52887712).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 52888744).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 52901783).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 52904584).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 52907860).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 52909539).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 52952001).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 52952398).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 52954667).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 52957879).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 52963265).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 52985032).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45, 52993479).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46, 53000661).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47, 53007034).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48, 53011335).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 49, 53012784).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 50, 53035835).
raw_performed(i_p18_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 51, 53038222).
raw_performed(i_p18_a7, participant_brings_all_items_to_dining_room_table, 52, 53047110).

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

