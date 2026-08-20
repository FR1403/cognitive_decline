% ======================================================================
% Paziente 202
% Attivita: Obtain a watering can and water all plants in the living space.
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

action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_retrieves_watering_can_from_supply_closet, 534259).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_fills_watering_can, 37060).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_windowsill, 31799).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_coffee_table, 83132).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_empties_extra_water_into_sink, 15945).
action_gap(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_returns_watering_can_to_supply_closet, 22826).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p202_a5, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p202_a5, participant_retrieves_watering_can_from_supply_closet, 1, 50653059).
raw_performed(i_p202_a5, participant_fills_watering_can, 2, 50658084).
raw_performed(i_p202_a5, participant_fills_watering_can, 3, 50671029).
raw_performed(i_p202_a5, participant_fills_watering_can, 4, 50678005).
raw_performed(i_p202_a5, participant_fills_watering_can, 5, 50692091).
raw_performed(i_p202_a5, participant_fills_watering_can, 6, 50708074).
raw_performed(i_p202_a5, participant_waters_plants_windowsill, 7, 50712070).
raw_performed(i_p202_a5, participant_fills_watering_can, 8, 50724055).
raw_performed(i_p202_a5, participant_fills_watering_can, 9, 50726057).
raw_performed(i_p202_a5, participant_fills_watering_can, 10, 50733003).
raw_performed(i_p202_a5, participant_fills_watering_can, 11, 50733066).
raw_performed(i_p202_a5, participant_waters_plants_windowsill, 12, 50735012).
raw_performed(i_p202_a5, participant_waters_plants_coffee_table, 13, 50750060).
raw_performed(i_p202_a5, participant_waters_plants_coffee_table, 14, 50752007).
raw_performed(i_p202_a5, participant_waters_plants_coffee_table, 15, 50756000).
raw_performed(i_p202_a5, participant_waters_plants_coffee_table, 16, 50757014).
raw_performed(i_p202_a5, participant_empties_extra_water_into_sink, 17, 50764040).
raw_performed(i_p202_a5, participant_empties_extra_water_into_sink, 18, 50771055).
raw_performed(i_p202_a5, participant_returns_watering_can_to_supply_closet, 19, 50773082).

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

