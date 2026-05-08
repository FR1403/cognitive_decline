% ======================================================================
% Paziente 308
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

instance(i_p308_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p308_a6, participant_answers_the_phone, 1, 36349706).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 2, 36353085).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 3, 36387296).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 4, 36409885).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 5, 36411345).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 6, 36411967).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 7, 36414071).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 8, 36423266).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 9, 36423879).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 10, 36426382).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 11, 36429746).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 12, 36432048).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 13, 36432074).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 14, 36448263).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 15, 36450947).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 16, 36452796).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 17, 36457816).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 18, 36458457).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 19, 36460504).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 20, 36476995).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 21, 36478055).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 22, 36480595).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 23, 36482439).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 24, 36483695).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 25, 36485393).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 26, 36488905).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 27, 36492911).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 28, 36501012).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 29, 36502469).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 30, 36505569).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 31, 36510525).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 32, 36512006).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 33, 36514509).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 34, 36515759).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 35, 36518457).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 36, 36519476).
raw_performed(i_p308_a6, participant_walks_around_during_phone_call, 37, 36526558).
raw_performed(i_p308_a6, participant_hangs_up_the_phone, 38, 36543531).

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

