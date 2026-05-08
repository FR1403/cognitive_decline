% ======================================================================
% Paziente 97
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

instance(i_p97_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p97_a6, participant_answers_the_phone, 1, 50717965).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 2, 50718347).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 3, 50729852).
raw_performed(i_p97_a6, participant_stands_in_one_place, 4, 50749836).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 5, 50752663).
raw_performed(i_p97_a6, participant_stands_in_one_place, 6, 50772539).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 7, 50784701).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 8, 50786365).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 9, 50786737).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 10, 50797320).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 11, 50801438).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 12, 50801459).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 13, 50806516).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 14, 50808121).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 15, 50809868).
raw_performed(i_p97_a6, participant_stands_in_one_place, 16, 50819453).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 17, 50819830).
raw_performed(i_p97_a6, participant_walks_around_during_phone_call, 18, 50821877).
raw_performed(i_p97_a6, participant_stands_in_one_place, 19, 50829318).
raw_performed(i_p97_a6, participant_stands_in_one_place, 20, 50844470).

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

