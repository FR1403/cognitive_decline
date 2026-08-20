% ======================================================================
% Paziente 393
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

instance(i_p393_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p393_a7, participant_retrieves_materials_from_cupboard_a, 1, 37210194).
raw_performed(i_p393_a7, participant_retrieves_materials_from_cupboard_a, 2, 37214887).
raw_performed(i_p393_a7, participant_boils_water_in_microwave, 3, 37233402).
raw_performed(i_p393_a7, participant_boils_water_in_microwave, 4, 37237927).
raw_performed(i_p393_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 5, 37368599).
raw_performed(i_p393_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 6, 37369163).
raw_performed(i_p393_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 37371609).
raw_performed(i_p393_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 37372129).
raw_performed(i_p393_a7, participant_pours_glass_of_water, 9, 37372582).
raw_performed(i_p393_a7, participant_pours_glass_of_water, 10, 37377241).
raw_performed(i_p393_a7, participant_pours_glass_of_water, 11, 37378949).
raw_performed(i_p393_a7, participant_pours_glass_of_water, 12, 37388479).
raw_performed(i_p393_a7, participant_pours_glass_of_water, 13, 37391877).
raw_performed(i_p393_a7, participant_returns_pitcher_of_water, 14, 37393766).
raw_performed(i_p393_a7, participant_returns_pitcher_of_water, 15, 37394471).
raw_performed(i_p393_a7, participant_returns_pitcher_of_water, 16, 37397480).
raw_performed(i_p393_a7, participant_returns_pitcher_of_water, 17, 37398380).
raw_performed(i_p393_a7, participant_boils_water_in_microwave, 18, 37435720).
raw_performed(i_p393_a7, participant_boils_water_in_microwave, 19, 37440947).
raw_performed(i_p393_a7, participant_boils_water_in_microwave, 20, 37472522).
raw_performed(i_p393_a7, participant_boils_water_in_microwave, 21, 37477910).
raw_performed(i_p393_a7, participant_boils_water_in_microwave, 22, 37515331).
raw_performed(i_p393_a7, participant_boils_water_in_microwave, 23, 37524350).
raw_performed(i_p393_a7, participant_pours_water_into_cup_of_noodles, 24, 37525353).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 37528922).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 37534920).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 37560583).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 37575790).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 37579921).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 37588163).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 37592291).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 37600720).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 37613092).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 37615622).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 37619850).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 37635031).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 37636910).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 37655662).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 37658482).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 37664473).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 37668969).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 37671589).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 37676108).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 37689597).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45, 37739271).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46, 37748821).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47, 37775350).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48, 37781077).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 49, 37785589).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 50, 37789528).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 51, 37792330).
raw_performed(i_p393_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 52, 37795515).
raw_performed(i_p393_a7, participant_brings_all_items_to_dining_room_table, 53, 37796888).
raw_performed(i_p393_a7, participant_brings_all_items_to_dining_room_table, 54, 37797370).
raw_performed(i_p393_a7, participant_brings_all_items_to_dining_room_table, 55, 37798772).
raw_performed(i_p393_a7, participant_brings_all_items_to_dining_room_table, 56, 37802308).
raw_performed(i_p393_a7, participant_brings_all_items_to_dining_room_table, 57, 37806930).
raw_performed(i_p393_a7, participant_brings_all_items_to_dining_room_table, 58, 37807522).
raw_performed(i_p393_a7, participant_brings_all_items_to_dining_room_table, 59, 37809745).

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

