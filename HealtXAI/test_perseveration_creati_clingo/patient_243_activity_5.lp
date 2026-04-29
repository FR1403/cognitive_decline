% ======================================================================
% Paziente 243
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

instance(i_p243_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p243_a6, participant_answers_the_phone, 1, 39890001).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 2, 39893049).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 3, 39902032).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 4, 39906035).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 5, 39916016).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 6, 39921055).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 7, 39922018).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 8, 39926023).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 9, 39936088).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 10, 39937048).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 11, 39940036).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 12, 39944027).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 13, 39959000).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 14, 39963012).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 15, 39974009).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 16, 39974088).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 17, 39992071).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 18, 39995021).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 19, 39999021).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 20, 40006088).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 21, 40010032).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 22, 40014001).
raw_performed(i_p243_a6, participant_walks_around_during_phone_call, 23, 40029028).
raw_performed(i_p243_a6, participant_hangs_up_the_phone, 24, 40033069).

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

