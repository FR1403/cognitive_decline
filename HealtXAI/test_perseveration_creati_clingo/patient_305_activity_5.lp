% ======================================================================
% Paziente 305
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

instance(i_p305_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p305_a6, participant_answers_the_phone, 1, 36493433).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 2, 36494147).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 3, 36495438).
raw_performed(i_p305_a6, participant_stands_in_one_place, 4, 36506891).
raw_performed(i_p305_a6, participant_stands_in_one_place, 5, 36525250).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 6, 36527037).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 7, 36527530).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 8, 36527985).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 9, 36530890).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 10, 36535029).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 11, 36535289).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 12, 36535497).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 13, 36536523).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 14, 36537587).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 15, 36538459).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 16, 36541523).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 17, 36570535).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 18, 36570779).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 19, 36613050).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 20, 36616633).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 21, 36616896).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 22, 36677946).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 23, 36717678).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 24, 36719370).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 25, 36719496).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 26, 36719526).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 27, 36722617).
raw_performed(i_p305_a6, participant_hangs_up_the_phone, 28, 36722757).

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

