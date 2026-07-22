% ======================================================================
% Paziente 200
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

instance(i_p200_a9, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p200_a9, participant_checks_wattage, 1, 53961012).
raw_performed(i_p200_a9, participant_removes_old_light_bulb, 2, 53961012).
raw_performed(i_p200_a9, participant_moves_to_the_kitchen, 3, 53962014).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 53962073).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5, 53988019).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 6, 53988021).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 7, 53988075).
raw_performed(i_p200_a9, participant_replaces_the_bulb, 8, 53997052).
raw_performed(i_p200_a9, participant_moves_to_the_kitchen, 9, 54015019).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 10, 54015083).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 54023000).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 54027065).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 13, 54028029).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 14, 54029077).
raw_performed(i_p200_a9, participant_moves_to_the_kitchen, 15, 54045099).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16, 54053088).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 17, 54053090).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 18, 54055075).
raw_performed(i_p200_a9, participant_moves_to_the_kitchen, 19, 54080057).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20, 54081043).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 21, 54089032).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 22, 54091085).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 23, 54108050).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 24, 54109057).
raw_performed(i_p200_a9, participant_moves_to_the_kitchen, 25, 54168004).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 26, 54169000).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 27, 54198029).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 28, 54198092).
raw_performed(i_p200_a9, participant_retrieves_light_bulbs_from_cabinet_b, 29, 54205076).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 30, 54206079).
raw_performed(i_p200_a9, participant_moves_to_the_dining_room, 31, 54208067).

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

