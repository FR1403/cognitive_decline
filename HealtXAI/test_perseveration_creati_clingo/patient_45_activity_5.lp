% ======================================================================
% Paziente 45
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

instance(i_p45_a6, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p45_a6, participant_answers_the_phone, 1, 50614437).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 2, 50622145).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 3, 50623387).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 4, 50629793).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 5, 50634494).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 6, 50635146).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 7, 50635573).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 8, 50638204).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 9, 50638847).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 10, 50643582).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 11, 50644811).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 12, 50648677).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 13, 50651280).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 14, 50652593).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 15, 50660185).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 16, 50668217).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 17, 50670753).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 18, 50671865).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 19, 50674441).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 20, 50675477).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 21, 50675495).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 22, 50682456).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 23, 50685808).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 24, 50686482).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 25, 50689540).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 26, 50695546).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 27, 50695569).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 28, 50711092).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 29, 50712167).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 30, 50714668).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 31, 50715100).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 32, 50716905).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 33, 50719063).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 34, 50734521).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 35, 50736095).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 36, 50738680).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 37, 50739988).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 38, 50750644).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 39, 50753619).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 40, 50757624).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 41, 50761615).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 42, 50770573).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 43, 50774657).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 44, 50782335).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 45, 50785985).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 46, 50786635).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 47, 50789922).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 48, 50790932).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 49, 50793892).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 50, 50797525).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 51, 50805351).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 52, 50805368).
raw_performed(i_p45_a6, participant_walks_around_during_phone_call, 53, 50809483).
raw_performed(i_p45_a6, participant_hangs_up_the_phone, 54, 50809948).

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

