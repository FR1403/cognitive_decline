% ======================================================================
% Paziente 216
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

instance(i_p216_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p216_a9, participant_moves_to_the_kitchen, 1, 56283061).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 2, 56284024).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3, 56293013).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 56303060).
raw_performed(i_p216_a9, participant_moves_to_the_dining_room, 5, 56311051).
raw_performed(i_p216_a9, participant_checks_wattage, 6, 56318016).
raw_performed(i_p216_a9, participant_moves_to_the_kitchen, 7, 56318079).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 8, 56319004).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 9, 56331000).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 10, 56341008).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 56354001).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 56363099).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13, 56372077).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14, 56382042).
raw_performed(i_p216_a9, participant_moves_to_the_dining_room, 15, 56383006).
raw_performed(i_p216_a9, participant_checks_wattage, 16, 56384091).
raw_performed(i_p216_a9, participant_moves_to_the_kitchen, 17, 56407047).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 18, 56408009).
raw_performed(i_p216_a9, participant_retrieves_light_bulbs_from_cabinet_b, 19, 56416066).
raw_performed(i_p216_a9, participant_moves_to_the_dining_room, 20, 56422092).
raw_performed(i_p216_a9, participant_removes_old_light_bulb, 21, 56424043).
raw_performed(i_p216_a9, participant_replaces_the_bulb, 22, 56424043).

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

