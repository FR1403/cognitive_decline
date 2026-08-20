% ======================================================================
% Paziente 137
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

instance(i_p137_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p137_a9, participant_checks_wattage, 1, 51794038).
raw_performed(i_p137_a9, participant_removes_old_light_bulb, 2, 51794038).
raw_performed(i_p137_a9, participant_moves_to_the_kitchen, 3, 51796027).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 51796090).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5, 51810075).
raw_performed(i_p137_a9, participant_moves_to_the_dining_room, 6, 51811079).
raw_performed(i_p137_a9, participant_moves_to_the_dining_room, 7, 51812085).
raw_performed(i_p137_a9, participant_moves_to_the_kitchen, 8, 51840012).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 9, 51841039).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 10, 51845036).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 51849059).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 51854055).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13, 51867053).
raw_performed(i_p137_a9, participant_moves_to_the_dining_room, 14, 51874002).
raw_performed(i_p137_a9, participant_moves_to_the_dining_room, 15, 51876092).
raw_performed(i_p137_a9, participant_moves_to_the_kitchen, 16, 51911052).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 17, 51912056).
raw_performed(i_p137_a9, participant_moves_to_the_dining_room, 18, 51918019).
raw_performed(i_p137_a9, participant_moves_to_the_kitchen, 19, 52031072).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20, 52032034).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 21, 52043053).
raw_performed(i_p137_a9, participant_moves_to_the_dining_room, 22, 52050044).
raw_performed(i_p137_a9, participant_moves_to_the_kitchen, 23, 52093025).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 24, 52093085).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 25, 52103002).
raw_performed(i_p137_a9, participant_retrieves_light_bulbs_from_cabinet_b, 26, 52110001).
raw_performed(i_p137_a9, participant_moves_to_the_dining_room, 27, 52111058).
raw_performed(i_p137_a9, participant_moves_to_the_dining_room, 28, 52113002).
raw_performed(i_p137_a9, participant_replaces_the_bulb, 29, 52177025).
raw_performed(i_p137_a9, participant_replaces_the_bulb, 30, 52204037).

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

