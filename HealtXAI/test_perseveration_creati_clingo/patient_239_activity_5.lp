% ======================================================================
% Paziente 239
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

instance(i_p239_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 1, 53105040).
raw_performed(i_p239_a6, participant_answers_the_phone, 2, 53105115).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 3, 53109720).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 4, 53112079).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 5, 53115024).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 6, 53115419).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 7, 53124080).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 8, 53127544).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 9, 53141027).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 10, 53141042).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 11, 53152594).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 12, 53152867).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 13, 53155003).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 14, 53170028).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 15, 53172017).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 16, 53173499).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 17, 53179461).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 18, 53180935).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 19, 53208033).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 20, 53208676).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 21, 53212010).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 22, 53212718).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 23, 53215021).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 24, 53217096).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 25, 53218037).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 26, 53221010).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 27, 53229135).
raw_performed(i_p239_a6, participant_walks_around_during_phone_call, 28, 53229835).
raw_performed(i_p239_a6, participant_hangs_up_the_phone, 29, 53229835).

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

