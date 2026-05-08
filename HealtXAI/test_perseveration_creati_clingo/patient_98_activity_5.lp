% ======================================================================
% Paziente 98
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

instance(i_p98_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p98_a6, participant_answers_the_phone, 1, 50337978).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 2, 50339014).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 3, 50387406).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 4, 50387678).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 5, 50388359).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 6, 50388552).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 7, 50390017).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 8, 50390435).
raw_performed(i_p98_a6, participant_stands_in_one_place, 9, 50405735).
raw_performed(i_p98_a6, participant_stands_in_one_place, 10, 50409516).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 11, 50409949).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 12, 50422970).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 13, 50423083).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 14, 50427863).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 15, 50429987).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 16, 50464218).
raw_performed(i_p98_a6, participant_stands_in_one_place, 17, 50488793).
raw_performed(i_p98_a6, participant_stands_in_one_place, 18, 50492723).
raw_performed(i_p98_a6, participant_stands_in_one_place, 19, 50499477).
raw_performed(i_p98_a6, participant_stands_in_one_place, 20, 50503228).
raw_performed(i_p98_a6, participant_stands_in_one_place, 21, 50506797).
raw_performed(i_p98_a6, participant_stands_in_one_place, 22, 50510544).
raw_performed(i_p98_a6, participant_stands_in_one_place, 23, 50512598).
raw_performed(i_p98_a6, participant_stands_in_one_place, 24, 50514290).
raw_performed(i_p98_a6, participant_stands_in_one_place, 25, 50517848).
raw_performed(i_p98_a6, participant_stands_in_one_place, 26, 50521571).
raw_performed(i_p98_a6, participant_stands_in_one_place, 27, 50528537).
raw_performed(i_p98_a6, participant_walks_around_during_phone_call, 28, 50531393).
raw_performed(i_p98_a6, participant_hangs_up_the_phone, 29, 50531446).

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

