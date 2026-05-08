% ======================================================================
% Paziente 206
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

instance(i_p206_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p206_a6, participant_answers_the_phone, 1, 33925004).
raw_performed(i_p206_a6, participant_walks_around_during_phone_call, 2, 33926049).
raw_performed(i_p206_a6, participant_walks_around_during_phone_call, 3, 33931058).
raw_performed(i_p206_a6, participant_stands_in_one_place, 4, 33948069).
raw_performed(i_p206_a6, participant_stands_in_one_place, 5, 33955085).
raw_performed(i_p206_a6, participant_stands_in_one_place, 6, 33980073).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 7, 33981059).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 8, 33981062).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 9, 33984033).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 10, 33989096).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 11, 33994081).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 12, 33994084).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 13, 34016004).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 14, 34016068).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 15, 34033059).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 16, 34037009).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 17, 34038061).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 18, 34041051).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 19, 34120054).
raw_performed(i_p206_a6, participant_sits_down_during_conversation, 20, 34121017).
raw_performed(i_p206_a6, participant_hangs_up_the_phone, 21, 34123025).

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

