% ======================================================================
% Paziente 127
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

action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_checks_wattage, 109234).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_kitchen, 160819).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_retrieves_light_bulbs_from_cabinet_b, 103499).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_moves_to_the_dining_room, 119069).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_removes_old_light_bulb, 62259).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_throws_away_old_light_bulb, 13572).
action_gap(check_the_wattage_of_a_desk_lamp_and_replace_the_bulb, participant_replaces_the_bulb, 216342).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p127_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p127_a9, participant_moves_to_the_dining_room, 1, 38624052).
raw_performed(i_p127_a9, participant_moves_to_the_kitchen, 2, 38634190).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3, 38634756).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 38656644).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5, 38656816).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 6, 38657356).
raw_performed(i_p127_a9, participant_moves_to_the_dining_room, 7, 38666893).
raw_performed(i_p127_a9, participant_removes_old_light_bulb, 8, 38677070).
raw_performed(i_p127_a9, participant_checks_wattage, 9, 38677571).
raw_performed(i_p127_a9, participant_moves_to_the_kitchen, 10, 38711565).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 38712438).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 38719860).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13, 38726099).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14, 38734851).
raw_performed(i_p127_a9, participant_retrieves_light_bulbs_from_cabinet_b, 15, 38737076).
raw_performed(i_p127_a9, participant_moves_to_the_dining_room, 16, 38762119).
raw_performed(i_p127_a9, participant_replaces_the_bulb, 17, 38794644).
raw_performed(i_p127_a9, participant_replaces_the_bulb, 18, 38819059).
raw_performed(i_p127_a9, participant_replaces_the_bulb, 19, 39009716).
raw_performed(i_p127_a9, participant_replaces_the_bulb, 20, 39019002).

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

