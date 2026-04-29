% ======================================================================
% Paziente 50
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

instance(i_p50_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p50_a6, participant_answers_the_phone, 1, 38312928).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 2, 38312965).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 3, 38312989).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 4, 38317228).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 5, 38322455).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 6, 38324769).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 7, 38325617).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 8, 38326532).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 9, 38332781).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 10, 38333549).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 11, 38337203).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 12, 38343943).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 13, 38348283).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 14, 38349264).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 15, 38351780).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 16, 38352612).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 17, 38353494).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 18, 38358062).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 19, 38358626).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 20, 38365538).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 21, 38367444).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 22, 38370466).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 23, 38371103).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 24, 38378876).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 25, 38378911).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 26, 38381083).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 27, 38384799).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 28, 38386238).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 29, 38393092).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 30, 38393140).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 31, 38400234).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 32, 38401252).
raw_performed(i_p50_a6, participant_walks_around_during_phone_call, 33, 38408778).
raw_performed(i_p50_a6, participant_hangs_up_the_phone, 34, 38413532).

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

