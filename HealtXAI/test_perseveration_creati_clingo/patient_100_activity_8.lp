% ======================================================================
% Paziente 100
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

instance(i_p100_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p100_a9, participant_moves_to_the_kitchen, 1, 56038063).
raw_performed(i_p100_a9, participant_moves_to_the_dining_room, 2, 56044036).
raw_performed(i_p100_a9, participant_removes_old_light_bulb, 3, 56048002).
raw_performed(i_p100_a9, participant_removes_old_light_bulb, 4, 56051040).
raw_performed(i_p100_a9, participant_removes_old_light_bulb, 5, 56053080).
raw_performed(i_p100_a9, participant_removes_old_light_bulb, 6, 56053553).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 56054005).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 8, 56061032).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 9, 56070013).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 10, 56073390).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 56078085).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 56084064).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13, 56092541).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14, 56094020).
raw_performed(i_p100_a9, participant_moves_to_the_dining_room, 15, 56096023).
raw_performed(i_p100_a9, participant_replaces_the_bulb, 16, 56107098).
raw_performed(i_p100_a9, participant_moves_to_the_kitchen, 17, 56108085).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 18, 56110921).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 19, 56131094).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20, 56132113).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 21, 56147098).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 22, 56147424).
raw_performed(i_p100_a9, participant_moves_to_the_dining_room, 23, 56149596).
raw_performed(i_p100_a9, participant_checks_wattage, 24, 56164080).
raw_performed(i_p100_a9, participant_moves_to_the_kitchen, 25, 56166050).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 26, 56168022).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 27, 56171374).
raw_performed(i_p100_a9, participant_retrieves_light_bulbs_from_cabinet_b, 28, 56176084).
raw_performed(i_p100_a9, participant_moves_to_the_dining_room, 29, 56182321).
raw_performed(i_p100_a9, participant_replaces_the_bulb, 30, 56199035).

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

