% ======================================================================
% Paziente 154
% Attività: Check the wattage of a desk lamp and replace the bulb.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

action(participant_checks_wattage).
action(participant_moves_to_the_kitchen).
action(participant_retrieves_light_bulbs_from_cabinet_b).
action(participant_moves_to_the_dining_room).
action(participant_removes_old_light_bulb).
action(participant_throws_away_old_light_bulb).
action(participant_replaces_the_bulb).

action_type(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_checks_wattage, 6).
action_type(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_kitchen, 7).
action_type(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b, 1).
action_type(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_dining_room, 7).
action_type(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, 5).
action_type(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_throws_away_old_light_bulb, 12).
action_type(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, 5).

expected_count(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_checks_wattage, 1).
expected_count(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_kitchen, 1).
expected_count(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b, 1).
expected_count(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_dining_room, 1).
expected_count(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, 1).
expected_count(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_throws_away_old_light_bulb, 1).
expected_count(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, 1).

action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_checks_wattage, 240000).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_kitchen, 240000).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b, 18000).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_dining_room, 240000).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, 240000).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_throws_away_old_light_bulb, 18000).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p154_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p154_a9, participant_checks_wattage, 1, 37693071).
raw_performed(i_p154_a9, participant_checks_wattage, 2, 37699059).
raw_performed(i_p154_a9, participant_moves_to_the_kitchen, 3, 37701466).
raw_performed(i_p154_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 37701876).
raw_performed(i_p154_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5, 37728038).
raw_performed(i_p154_a9, participant_retrieves_light_bulbs_from_cabinet_b, 6, 37731998).
raw_performed(i_p154_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 37737551).
raw_performed(i_p154_a9, participant_moves_to_the_dining_room, 8, 37742506).
raw_performed(i_p154_a9, participant_removes_old_light_bulb, 9, 37751003).
raw_performed(i_p154_a9, participant_throws_away_old_light_bulb, 10, 37755631).
raw_performed(i_p154_a9, participant_replaces_the_bulb, 11, 37782075).
raw_performed(i_p154_a9, participant_moves_to_the_kitchen, 12, 37803038).
raw_performed(i_p154_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13, 37803079).
raw_performed(i_p154_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14, 37823841).
raw_performed(i_p154_a9, participant_moves_to_the_dining_room, 15, 37824574).
raw_performed(i_p154_a9, participant_removes_old_light_bulb, 16, 37834031).
raw_performed(i_p154_a9, participant_replaces_the_bulb, 17, 37856469).
raw_performed(i_p154_a9, participant_replaces_the_bulb, 18, 37886440).
raw_performed(i_p154_a9, participant_replaces_the_bulb, 19, 37907397).
raw_performed(i_p154_a9, participant_replaces_the_bulb, 20, 37914071).

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

