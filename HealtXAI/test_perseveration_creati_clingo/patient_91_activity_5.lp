% ======================================================================
% Paziente 91
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

instance(i_p91_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p91_a6, participant_answers_the_phone, 1, 54364063).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 2, 54364065).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 3, 54365066).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 4, 54390003).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 5, 54390066).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 6, 54392096).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 7, 54393053).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 8, 54394054).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 9, 54397030).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 10, 54397091).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 11, 54398076).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 12, 54399039).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 13, 54400002).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 14, 54402061).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 15, 54402064).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 16, 54412002).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 17, 54414075).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 18, 54417051).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 19, 54417054).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 20, 54418028).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 21, 54418089).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 22, 54419077).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 23, 54420037).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 24, 54422010).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 25, 54426055).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 26, 54428048).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 27, 54429000).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 28, 54430017).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 29, 54430079).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 30, 54431072).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 31, 54434099).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 32, 54438056).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 33, 54440024).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 34, 54441051).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 35, 54442052).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 36, 54443097).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 37, 54456032).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 38, 54462079).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 39, 54476001).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 40, 54476065).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 41, 54482009).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 42, 54486072).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 43, 54488099).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 44, 54495001).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 45, 54495016).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 46, 54496021).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 47, 54506060).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 48, 54507064).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 49, 54512000).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 50, 54512007).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 51, 54518051).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 52, 54520037).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 53, 54538029).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 54, 54547095).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 55, 54558079).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 56, 54560025).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 57, 54574029).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 58, 54577008).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 59, 54581020).
raw_performed(i_p91_a6, participant_walks_around_during_phone_call, 60, 54602009).
raw_performed(i_p91_a6, participant_hangs_up_the_phone, 61, 54617078).

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

