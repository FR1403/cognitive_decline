% ======================================================================
% Paziente 194
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

instance(i_p194_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p194_a6, participant_answers_the_phone, 1, 36976018).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 2, 36978011).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 3, 36987042).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 4, 36988017).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 5, 36990074).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 6, 36998874).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 7, 36999381).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 8, 36999993).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 9, 37001036).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 10, 37001980).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 11, 37002828).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 12, 37010554).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 13, 37012091).
raw_performed(i_p194_a6, participant_sits_down_during_conversation, 14, 37014008).
raw_performed(i_p194_a6, participant_sits_down_during_conversation, 15, 37027018).
raw_performed(i_p194_a6, participant_sits_down_during_conversation, 16, 37155093).
raw_performed(i_p194_a6, participant_sits_down_during_conversation, 17, 37157247).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 18, 37158027).
raw_performed(i_p194_a6, participant_walks_around_during_phone_call, 19, 37164719).
raw_performed(i_p194_a6, participant_sits_down_during_conversation, 20, 37168088).
raw_performed(i_p194_a6, participant_sits_down_during_conversation, 21, 37170680).
raw_performed(i_p194_a6, participant_sits_down_during_conversation, 22, 37206095).
raw_performed(i_p194_a6, participant_hangs_up_the_phone, 23, 37208057).
raw_performed(i_p194_a6, participant_sits_down_during_conversation, 24, 37208259).

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

