% ======================================================================
% Paziente 173
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

instance(i_p173_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p173_a6, participant_answers_the_phone, 1, 35492629).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 2, 35492954).
raw_performed(i_p173_a6, participant_stands_in_one_place, 3, 35498983).
raw_performed(i_p173_a6, participant_stands_in_one_place, 4, 35504071).
raw_performed(i_p173_a6, participant_stands_in_one_place, 5, 35507790).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 6, 35508785).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 7, 35517357).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 8, 35519961).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 9, 35522201).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 10, 35529462).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 11, 35529716).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 12, 35530654).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 13, 35534777).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 14, 35535800).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 15, 35537811).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 16, 35546370).
raw_performed(i_p173_a6, participant_stands_in_one_place, 17, 35551831).
raw_performed(i_p173_a6, participant_stands_in_one_place, 18, 35556108).
raw_performed(i_p173_a6, participant_stands_in_one_place, 19, 35559460).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 20, 35562235).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 21, 35564762).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 22, 35565142).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 23, 35570219).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 24, 35595101).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 25, 35595599).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 26, 35597674).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 27, 35598774).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 28, 35599986).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 29, 35602287).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 30, 35604291).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 31, 35606590).
raw_performed(i_p173_a6, participant_stands_in_one_place, 32, 35617599).
raw_performed(i_p173_a6, participant_stands_in_one_place, 33, 35622523).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 34, 35623230).
raw_performed(i_p173_a6, participant_stands_in_one_place, 35, 35626042).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 36, 35628898).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 37, 35646522).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 38, 35647430).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 39, 35654163).
raw_performed(i_p173_a6, participant_walks_around_during_phone_call, 40, 35655040).
raw_performed(i_p173_a6, participant_hangs_up_the_phone, 41, 35655563).

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

