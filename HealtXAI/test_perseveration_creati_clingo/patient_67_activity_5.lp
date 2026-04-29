% ======================================================================
% Paziente 67
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

instance(i_p67_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p67_a6, participant_answers_the_phone, 1, 35277312).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 2, 35281966).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 3, 35281979).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 4, 35290281).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 5, 35292474).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 6, 35297005).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 7, 35297018).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 8, 35307556).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 9, 35307569).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 10, 35309382).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 11, 35311895).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 12, 35312311).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 13, 35312938).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 14, 35319079).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 15, 35320692).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 16, 35323357).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 17, 35323371).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 18, 35323973).
raw_performed(i_p67_a6, participant_stands_in_one_place, 19, 35335729).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 20, 35339646).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 21, 35339659).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 22, 35344300).
raw_performed(i_p67_a6, participant_stands_in_one_place, 23, 35352196).
raw_performed(i_p67_a6, participant_stands_in_one_place, 24, 35358134).
raw_performed(i_p67_a6, participant_stands_in_one_place, 25, 35380386).
raw_performed(i_p67_a6, participant_stands_in_one_place, 26, 35388032).
raw_performed(i_p67_a6, participant_walks_around_during_phone_call, 27, 35388466).
raw_performed(i_p67_a6, participant_hangs_up_the_phone, 28, 35398882).

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

