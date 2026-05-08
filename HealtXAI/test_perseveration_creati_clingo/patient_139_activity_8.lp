% ======================================================================
% Paziente 139
% Attività: Pick a complete outfit for an interview from a selection of clothing.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

action(participant_moves_to_hallway_closet).
action(participant_chooses_correct_outfit_from_closet).
action(participant_lays_out_clothes_on_living_room_couch).

action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 7).
action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 5).
action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 5).

expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 1).
expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 1).
expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 1).

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 240000).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 240000).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p139_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p139_a9, participant_checks_wattage, 1, 55514085).
raw_performed(i_p139_a9, participant_checks_wattage, 2, 55520002).
raw_performed(i_p139_a9, participant_moves_to_the_kitchen, 3, 55520086).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 55521050).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5, 55527034).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 6, 55535027).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 55538081).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 8, 55543015).
raw_performed(i_p139_a9, participant_moves_to_the_dining_room, 9, 55545083).
raw_performed(i_p139_a9, participant_removes_old_light_bulb, 10, 55546004).
raw_performed(i_p139_a9, participant_replaces_the_bulb, 11, 55560063).
raw_performed(i_p139_a9, participant_replaces_the_bulb, 12, 55567006).
raw_performed(i_p139_a9, participant_moves_to_the_kitchen, 13, 55572043).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14, 55578009).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 15, 55585099).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16, 55595014).
raw_performed(i_p139_a9, participant_retrieves_light_bulbs_from_cabinet_b, 17, 55598085).
raw_performed(i_p139_a9, participant_moves_to_the_dining_room, 18, 55599048).
raw_performed(i_p139_a9, participant_removes_old_light_bulb, 19, 55600052).
raw_performed(i_p139_a9, participant_replaces_the_bulb, 20, 55608085).
raw_performed(i_p139_a9, participant_moves_to_the_kitchen, 21, 55609050).

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

