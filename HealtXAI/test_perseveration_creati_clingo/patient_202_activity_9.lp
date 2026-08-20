% ======================================================================
% Paziente 202
% Attivita: Check the wattage of a desk lamp and replace the bulb.
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

action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_checks_wattage, 84941).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_kitchen, 151004).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b, 92150).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_dining_room, 117925).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, 60270).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_throws_away_old_light_bulb, 12392).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, 178304).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p202_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 1, 52871034).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 2, 52872039).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3, 52880008).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 4, 52881088).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 5, 52883034).
raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 6, 52915084).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 52916044).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 8, 52921047).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 9, 52923057).
raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 10, 52934001).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 52935029).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 52968074).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 13, 52969076).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 14, 52971022).
raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 15, 53034029).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16, 53035032).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 17, 53040054).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 18, 53042038).
raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 19, 53068036).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20, 53069041).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 21, 53086004).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 22, 53087087).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 23, 53089075).

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

