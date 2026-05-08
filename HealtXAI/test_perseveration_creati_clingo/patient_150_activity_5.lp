% ======================================================================
% Paziente 150
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

instance(i_p150_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p150_a6, participant_answers_the_phone, 1, 36382672).
raw_performed(i_p150_a6, participant_stands_in_one_place, 2, 36389157).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 3, 36389942).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 4, 36392739).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 5, 36393173).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 6, 36398687).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 7, 36402259).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 8, 36402702).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 9, 36405086).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 10, 36406381).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 11, 36409381).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 12, 36414567).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 13, 36415208).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 14, 36418135).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 15, 36425777).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 16, 36426436).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 17, 36433550).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 18, 36438767).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 19, 36442733).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 20, 36445156).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 21, 36449927).
raw_performed(i_p150_a6, participant_stands_in_one_place, 22, 36477781).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 23, 36477795).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 24, 36477812).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 25, 36478676).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 26, 36481292).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 27, 36489393).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 28, 36489408).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 29, 36490506).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 30, 36492847).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 31, 36493673).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 32, 36496842).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 33, 36497326).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 34, 36500494).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 35, 36500508).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 36, 36501395).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 37, 36508222).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 38, 36519424).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 39, 36520080).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 40, 36523442).
raw_performed(i_p150_a6, participant_stands_in_one_place, 41, 36553469).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 42, 36555845).
raw_performed(i_p150_a6, participant_walks_around_during_phone_call, 43, 36557344).
raw_performed(i_p150_a6, participant_hangs_up_the_phone, 44, 36606261).

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

