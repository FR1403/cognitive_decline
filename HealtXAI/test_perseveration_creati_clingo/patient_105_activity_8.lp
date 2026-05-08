% ======================================================================
% Paziente 105
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

instance(i_p105_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p105_a9, participant_moves_to_the_kitchen, 1, 52572778).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 2, 52573389).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3, 52583060).
raw_performed(i_p105_a9, participant_moves_to_the_dining_room, 4, 52583082).
raw_performed(i_p105_a9, participant_moves_to_the_kitchen, 5, 52597357).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 6, 52597737).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 52605849).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 8, 52609218).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 9, 52611975).
raw_performed(i_p105_a9, participant_moves_to_the_dining_room, 10, 52613036).
raw_performed(i_p105_a9, participant_moves_to_the_kitchen, 11, 52624041).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 52624642).
raw_performed(i_p105_a9, participant_moves_to_the_dining_room, 13, 52636473).
raw_performed(i_p105_a9, participant_moves_to_the_kitchen, 14, 52650761).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 15, 52651128).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16, 52655580).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 17, 52662055).
raw_performed(i_p105_a9, participant_moves_to_the_dining_room, 18, 52663113).
raw_performed(i_p105_a9, participant_moves_to_the_kitchen, 19, 52679381).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20, 52679999).
raw_performed(i_p105_a9, participant_retrieves_light_bulbs_from_cabinet_b, 21, 52696532).
raw_performed(i_p105_a9, participant_moves_to_the_dining_room, 22, 52697391).

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

