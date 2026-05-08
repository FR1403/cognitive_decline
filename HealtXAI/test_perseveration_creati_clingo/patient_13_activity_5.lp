% ======================================================================
% Paziente 13
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

instance(i_p13_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p13_a6, participant_answers_the_phone, 1, 49805526).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 2, 49811164).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 3, 49813333).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 4, 49821922).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 5, 49821970).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 6, 49829884).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 7, 49831141).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 8, 49833759).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 9, 49837822).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 10, 49842909).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 11, 49843965).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 12, 49843989).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 13, 49847327).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 14, 49855159).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 15, 49856526).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 16, 49856619).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 17, 49863234).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 18, 49864492).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 19, 49868653).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 20, 49875172).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 21, 49878903).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 22, 49878951).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 23, 49890090).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 24, 49890114).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 25, 49897567).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 26, 49900365).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 27, 49901177).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 28, 49902181).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 29, 49909894).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 30, 49911741).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 31, 49914184).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 32, 49921844).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 33, 49921868).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 34, 49933299).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 35, 49933323).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 36, 49944512).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 37, 49972717).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 38, 49972765).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 39, 49973724).
raw_performed(i_p13_a6, participant_walks_around_during_phone_call, 40, 49983651).
raw_performed(i_p13_a6, participant_hangs_up_the_phone, 41, 49987789).

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

