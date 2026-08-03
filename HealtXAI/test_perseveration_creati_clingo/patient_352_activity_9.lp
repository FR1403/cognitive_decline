% ======================================================================
% Paziente 352
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

instance(i_p352_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p352_a9, participant_moves_to_the_kitchen, 1, 37768086).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 2, 37769042).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3, 37782015).
raw_performed(i_p352_a9, participant_moves_to_the_dining_room, 4, 37784062).
raw_performed(i_p352_a9, participant_moves_to_the_dining_room, 5, 37786024).
raw_performed(i_p352_a9, participant_moves_to_the_kitchen, 6, 37798044).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 37799011).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 8, 37814001).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 9, 37819085).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 10, 37821076).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 37823098).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 37826044).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13, 37831058).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14, 37838005).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 15, 37843021).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16, 37854090).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 17, 37865058).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 18, 37875008).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 19, 37883081).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20, 37897015).
raw_performed(i_p352_a9, participant_moves_to_the_dining_room, 21, 37897079).
raw_performed(i_p352_a9, participant_checks_wattage, 22, 37911064).
raw_performed(i_p352_a9, participant_moves_to_the_kitchen, 23, 37913025).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 24, 37914011).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 25, 37942007).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 26, 37964050).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 27, 37996030).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 28, 38004084).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 29, 38013075).
raw_performed(i_p352_a9, participant_moves_to_the_dining_room, 30, 38015004).
raw_performed(i_p352_a9, participant_moves_to_the_dining_room, 31, 38015015).
raw_performed(i_p352_a9, participant_moves_to_the_kitchen, 32, 38064029).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 33, 38064077).
raw_performed(i_p352_a9, participant_moves_to_the_kitchen, 34, 38083060).
raw_performed(i_p352_a9, participant_moves_to_the_kitchen, 35, 38084026).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 36, 38084092).
raw_performed(i_p352_a9, participant_retrieves_light_bulbs_from_cabinet_b, 37, 38096001).
raw_performed(i_p352_a9, participant_moves_to_the_dining_room, 38, 38096050).
raw_performed(i_p352_a9, participant_moves_to_the_dining_room, 39, 38098091).

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

