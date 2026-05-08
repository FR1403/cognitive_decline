% ======================================================================
% Paziente 33
% Attività: Obtain a watering can and water all plants in the living space.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(obtain_a_watering_can_and_water_all_plants_in_the_living_space).

action(participant_retrieves_watering_can_from_supply_closet).
action(participant_fills_watering_can).
action(participant_waters_plants_windowsill).
action(participant_waters_plants_coffee_table).
action(participant_empties_extra_water_into_sink).
action(participant_returns_watering_can_to_supply_closet).

action_type(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_retrieves_watering_can_from_supply_closet, 1).
action_type(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_fills_watering_can, 5).
action_type(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_windowsill, 5).
action_type(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_coffee_table, 5).
action_type(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_empties_extra_water_into_sink, 5).
action_type(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_returns_watering_can_to_supply_closet, 12).

expected_count(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_retrieves_watering_can_from_supply_closet, 1).
expected_count(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_fills_watering_can, 1).
expected_count(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_windowsill, 1).
expected_count(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_coffee_table, 1).
expected_count(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_empties_extra_water_into_sink, 1).
expected_count(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_returns_watering_can_to_supply_closet, 1).

action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_retrieves_watering_can_from_supply_closet, 18000).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_fills_watering_can, 240000).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_windowsill, 240000).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_coffee_table, 240000).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_empties_extra_water_into_sink, 240000).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_returns_watering_can_to_supply_closet, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p33_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p33_a6, participant_answers_the_phone, 1, 37473330).
raw_performed(i_p33_a6, participant_stands_in_one_place, 2, 37477185).
raw_performed(i_p33_a6, participant_stands_in_one_place, 3, 37483691).
raw_performed(i_p33_a6, participant_stands_in_one_place, 4, 37517354).
raw_performed(i_p33_a6, participant_stands_in_one_place, 5, 37519334).
raw_performed(i_p33_a6, participant_stands_in_one_place, 6, 37524451).
raw_performed(i_p33_a6, participant_stands_in_one_place, 7, 37534778).
raw_performed(i_p33_a6, participant_stands_in_one_place, 8, 37541879).
raw_performed(i_p33_a6, participant_stands_in_one_place, 9, 37546456).
raw_performed(i_p33_a6, participant_stands_in_one_place, 10, 37557855).
raw_performed(i_p33_a6, participant_stands_in_one_place, 11, 37563094).
raw_performed(i_p33_a6, participant_stands_in_one_place, 12, 37573343).
raw_performed(i_p33_a6, participant_stands_in_one_place, 13, 37613160).
raw_performed(i_p33_a6, participant_stands_in_one_place, 14, 37632865).
raw_performed(i_p33_a6, participant_stands_in_one_place, 15, 37649900).
raw_performed(i_p33_a6, participant_stands_in_one_place, 16, 37656358).
raw_performed(i_p33_a6, participant_stands_in_one_place, 17, 37693228).
raw_performed(i_p33_a6, participant_stands_in_one_place, 18, 37697829).
raw_performed(i_p33_a6, participant_stands_in_one_place, 19, 37706022).
raw_performed(i_p33_a6, participant_stands_in_one_place, 20, 37712548).
raw_performed(i_p33_a6, participant_stands_in_one_place, 21, 37718001).
raw_performed(i_p33_a6, participant_stands_in_one_place, 22, 37726650).
raw_performed(i_p33_a6, participant_hangs_up_the_phone, 23, 37735427).

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

