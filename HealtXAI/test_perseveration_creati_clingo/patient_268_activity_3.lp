% ======================================================================
% Paziente 268
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

instance(i_p268_a4, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p268_a4, participant_moves_to_the_living_room, 1, 34757426).
raw_performed(i_p268_a4, participant_reads_instructions_next_to_the_tv, 2, 34758877).
raw_performed(i_p268_a4, participant_reads_instructions_next_to_the_tv, 3, 34774833).
raw_performed(i_p268_a4, participant_reads_instructions_next_to_the_tv, 4, 34795410).
raw_performed(i_p268_a4, participant_reads_instructions_next_to_the_tv, 5, 34806020).
raw_performed(i_p268_a4, participant_reads_instructions_next_to_the_tv, 6, 34809288).
raw_performed(i_p268_a4, participant_watches_news_clip, 7, 34816645).
raw_performed(i_p268_a4, participant_watches_news_clip, 8, 34817024).
raw_performed(i_p268_a4, participant_watches_news_clip, 9, 34830014).
raw_performed(i_p268_a4, participant_watches_news_clip, 10, 34831617).
raw_performed(i_p268_a4, participant_watches_news_clip, 11, 34832453).
raw_performed(i_p268_a4, participant_watches_news_clip, 12, 34835945).
raw_performed(i_p268_a4, participant_watches_news_clip, 13, 34836315).
raw_performed(i_p268_a4, participant_watches_news_clip, 14, 34837543).
raw_performed(i_p268_a4, participant_watches_news_clip, 15, 35141460).
raw_performed(i_p268_a4, participant_watches_news_clip, 16, 35142361).
raw_performed(i_p268_a4, participant_watches_news_clip, 17, 35144310).
raw_performed(i_p268_a4, participant_watches_news_clip, 18, 35167199).

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

