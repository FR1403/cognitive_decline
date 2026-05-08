% ======================================================================
% Paziente 90
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

instance(i_p90_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p90_a6, participant_answers_the_phone, 1, 50297598).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 2, 50305196).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 3, 50311424).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 4, 50311442).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 5, 50314218).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 6, 50315484).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 7, 50316918).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 8, 50320110).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 9, 50322131).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 10, 50324665).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 11, 50328060).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 12, 50329895).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 13, 50333187).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 14, 50334097).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 15, 50335538).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 16, 50338804).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 17, 50341651).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 18, 50343707).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 19, 50345994).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 20, 50348171).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 21, 50349009).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 22, 50350834).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 23, 50353247).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 24, 50353265).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 25, 50360174).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 26, 50360195).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 27, 50360714).
raw_performed(i_p90_a6, participant_walks_around_during_phone_call, 28, 50360735).
raw_performed(i_p90_a6, participant_hangs_up_the_phone, 29, 50361911).

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

