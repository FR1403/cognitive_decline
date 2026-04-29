% ======================================================================
% Paziente 191
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

instance(i_p191_a10, check_the_wattage_of_a_desk_lamp_and_replace_the_bulb).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p191_a10, participant_moves_to_the_kitchen, 1, 39705848).
raw_performed(i_p191_a10, participant_turns_on_water, 2, 39710288).
raw_performed(i_p191_a10, participant_washes_hands, 3, 39712758).
raw_performed(i_p191_a10, participant_washes_hands, 4, 39715220).
raw_performed(i_p191_a10, participant_washes_hands, 5, 39717681).
raw_performed(i_p191_a10, participant_washes_hands, 6, 39720147).
raw_performed(i_p191_a10, participant_washes_hands, 7, 39725056).
raw_performed(i_p191_a10, participant_washes_hands, 8, 39729983).
raw_performed(i_p191_a10, participant_washes_hands, 9, 39732437).
raw_performed(i_p191_a10, participant_washes_hands, 10, 39734893).
raw_performed(i_p191_a10, participant_washes_hands, 11, 39737349).
raw_performed(i_p191_a10, participant_washes_hands, 12, 39739820).
raw_performed(i_p191_a10, participant_washes_hands, 13, 39742265).
raw_performed(i_p191_a10, participant_washes_hands, 14, 39744756).
raw_performed(i_p191_a10, participant_washes_hands, 15, 39747212).
raw_performed(i_p191_a10, participant_washes_hands, 16, 39749662).
raw_performed(i_p191_a10, participant_washes_hands, 17, 39752121).
raw_performed(i_p191_a10, participant_washes_hands, 18, 39754573).
raw_performed(i_p191_a10, participant_washes_hands, 19, 39757075).
raw_performed(i_p191_a10, participant_washes_hands, 20, 39759564).
raw_performed(i_p191_a10, participant_washes_hands, 21, 39761997).
raw_performed(i_p191_a10, participant_washes_hands, 22, 39764453).
raw_performed(i_p191_a10, participant_washes_hands, 23, 39766911).
raw_performed(i_p191_a10, participant_washes_hands, 24, 39769373).
raw_performed(i_p191_a10, participant_washes_hands, 25, 39774321).

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

