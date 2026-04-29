% ======================================================================
% Paziente 76
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

instance(i_p76_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p76_a9, participant_removes_old_light_bulb, 1, 37741007).
raw_performed(i_p76_a9, participant_moves_to_the_kitchen, 2, 37763056).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3, 37764073).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 37766082).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5, 37768053).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 6, 37774006).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 37775052).
raw_performed(i_p76_a9, participant_moves_to_the_dining_room, 8, 37777088).
raw_performed(i_p76_a9, participant_moves_to_the_kitchen, 9, 37787003).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 10, 37787093).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 37795038).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 37801061).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13, 37810052).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14, 37813007).
raw_performed(i_p76_a9, participant_moves_to_the_dining_room, 15, 37814002).
raw_performed(i_p76_a9, participant_moves_to_the_kitchen, 16, 37833040).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 17, 37834050).
raw_performed(i_p76_a9, participant_retrieves_light_bulbs_from_cabinet_b, 18, 37841078).
raw_performed(i_p76_a9, participant_moves_to_the_dining_room, 19, 37844062).
raw_performed(i_p76_a9, participant_checks_wattage, 20, 37863086).
raw_performed(i_p76_a9, participant_replaces_the_bulb, 21, 37885020).

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

