% ======================================================================
% Paziente 214
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

instance(i_p214_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 1, 37003017).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 2, 37021053).
raw_performed(i_p214_a6, participant_stands_in_one_place, 3, 37026015).
raw_performed(i_p214_a6, participant_stands_in_one_place, 4, 37052009).
raw_performed(i_p214_a6, participant_stands_in_one_place, 5, 37060046).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 6, 37064036).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 7, 37066005).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 8, 37067053).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 9, 37073014).
raw_performed(i_p214_a6, participant_stands_in_one_place, 10, 37079001).
raw_performed(i_p214_a6, participant_stands_in_one_place, 11, 37092046).
raw_performed(i_p214_a6, participant_stands_in_one_place, 12, 37099019).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 13, 37102003).
raw_performed(i_p214_a6, participant_stands_in_one_place, 14, 37110018).
raw_performed(i_p214_a6, participant_stands_in_one_place, 15, 37119005).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 16, 37124059).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 17, 37133094).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 18, 37134079).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 19, 37136065).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 20, 37138011).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 21, 37139099).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 22, 37149041).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 23, 37154001).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 24, 37157011).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 25, 37158016).
raw_performed(i_p214_a6, participant_stands_in_one_place, 26, 37194077).
raw_performed(i_p214_a6, participant_stands_in_one_place, 27, 37198074).
raw_performed(i_p214_a6, participant_stands_in_one_place, 28, 37217020).
raw_performed(i_p214_a6, participant_stands_in_one_place, 29, 37217023).
raw_performed(i_p214_a6, participant_stands_in_one_place, 30, 37220012).
raw_performed(i_p214_a6, participant_stands_in_one_place, 31, 37237071).
raw_performed(i_p214_a6, participant_stands_in_one_place, 32, 37242095).
raw_performed(i_p214_a6, participant_stands_in_one_place, 33, 37242098).
raw_performed(i_p214_a6, participant_walks_around_during_phone_call, 34, 37247056).

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

