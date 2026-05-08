% ======================================================================
% Paziente 157
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

instance(i_p157_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p157_a6, participant_answers_the_phone, 1, 54358023).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 2, 54361011).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 3, 54373079).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 4, 54375005).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 5, 54379093).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 6, 54381000).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 7, 54385053).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 8, 54389064).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 9, 54397047).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 10, 54414021).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 11, 54420003).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 12, 54421034).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 13, 54423093).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 14, 54425006).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 15, 54439090).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 16, 54470044).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 17, 54474002).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 18, 54482067).
raw_performed(i_p157_a6, participant_sits_down_during_conversation, 19, 54492068).
raw_performed(i_p157_a6, participant_hangs_up_the_phone, 20, 54515044).

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

