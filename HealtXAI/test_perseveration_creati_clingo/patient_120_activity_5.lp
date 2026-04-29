% ======================================================================
% Paziente 120
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

instance(i_p120_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p120_a6, participant_answers_the_phone, 1, 34885164).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 2, 34886980).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 3, 34889177).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 4, 34894867).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 5, 34897557).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 6, 34906022).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 7, 34915275).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 8, 34918815).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 9, 34920843).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 10, 34927384).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 11, 34930825).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 12, 34932148).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 13, 34932495).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 14, 34934314).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 15, 34935145).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 16, 34935750).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 17, 34939917).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 18, 34942555).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 19, 34942926).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 20, 34971223).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 21, 34971242).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 22, 34977326).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 23, 34981581).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 24, 34983635).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 25, 34985150).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 26, 34990094).
raw_performed(i_p120_a6, participant_walks_around_during_phone_call, 27, 34991600).
raw_performed(i_p120_a6, participant_hangs_up_the_phone, 28, 35001260).

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

