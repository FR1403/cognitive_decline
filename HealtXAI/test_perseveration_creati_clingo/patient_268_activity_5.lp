% ======================================================================
% Paziente 268
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

instance(i_p268_a6, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p268_a6, participant_answers_the_phone, 1, 35395318).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 2, 35399003).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 3, 35403989).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 4, 35404597).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 5, 35409618).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 6, 35410294).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 7, 35411598).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 8, 35416750).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 9, 35417503).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 10, 35420836).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 11, 35422250).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 12, 35433081).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 13, 35436065).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 14, 35437665).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 15, 35439120).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 16, 35448310).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 17, 35448917).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 18, 35452794).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 19, 35455323).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 20, 35463208).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 21, 35465256).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 22, 35465868).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 23, 35467505).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 24, 35470836).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 25, 35474369).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 26, 35474985).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 27, 35476530).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 28, 35480029).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 29, 35487881).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 30, 35487902).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 31, 35488330).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 32, 35489285).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 33, 35490660).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 34, 35497365).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 35, 35503409).
raw_performed(i_p268_a6, participant_walks_around_during_phone_call, 36, 35504406).
raw_performed(i_p268_a6, participant_hangs_up_the_phone, 37, 35509748).

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

