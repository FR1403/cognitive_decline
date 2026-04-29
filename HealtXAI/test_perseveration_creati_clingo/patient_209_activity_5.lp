% ======================================================================
% Paziente 209
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

instance(i_p209_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p209_a6, participant_answers_the_phone, 1, 49486030).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 2, 49494087).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 3, 49497016).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 4, 49508003).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 5, 49509007).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 6, 49521030).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 7, 49537019).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 8, 49537083).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 9, 49540007).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 10, 49541034).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 11, 49550027).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 12, 49552059).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 13, 49560038).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 14, 49569003).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 15, 49576035).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 16, 49594009).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 17, 49594073).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 18, 49603048).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 19, 49604096).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 20, 49608074).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 21, 49614013).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 22, 49617072).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 23, 49621046).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 24, 49637013).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 25, 49637075).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 26, 49645063).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 27, 49649082).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 28, 49651088).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 29, 49670010).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 30, 49670070).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 31, 49676071).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 32, 49682077).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 33, 49684004).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 34, 49694024).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 35, 49701036).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 36, 49705054).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 37, 49707002).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 38, 49718009).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 39, 49718034).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 40, 49743016).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 41, 49745046).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 42, 49749085).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 43, 49752018).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 44, 49753023).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 45, 49754071).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 46, 49765095).
raw_performed(i_p209_a6, participant_walks_around_during_phone_call, 47, 49767041).
raw_performed(i_p209_a6, participant_hangs_up_the_phone, 48, 49769042).

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

