% ======================================================================
% Paziente 53
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

instance(i_p53_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p53_a9, participant_checks_wattage, 1, 56206565).
raw_performed(i_p53_a9, participant_checks_wattage, 2, 56212341).
raw_performed(i_p53_a9, participant_checks_wattage, 3, 56212969).
raw_performed(i_p53_a9, participant_checks_wattage, 4, 56227692).
raw_performed(i_p53_a9, participant_moves_to_the_kitchen, 5, 56228915).
raw_performed(i_p53_a9, participant_retrieves_light_bulbs_from_cabinet_b, 6, 56229082).
raw_performed(i_p53_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 56236074).
raw_performed(i_p53_a9, participant_retrieves_light_bulbs_from_cabinet_b, 8, 56239535).
raw_performed(i_p53_a9, participant_retrieves_light_bulbs_from_cabinet_b, 9, 56245047).
raw_performed(i_p53_a9, participant_retrieves_light_bulbs_from_cabinet_b, 10, 56249572).
raw_performed(i_p53_a9, participant_moves_to_the_dining_room, 11, 56250026).
raw_performed(i_p53_a9, participant_removes_old_light_bulb, 12, 56255095).
raw_performed(i_p53_a9, participant_removes_old_light_bulb, 13, 56258006).
raw_performed(i_p53_a9, participant_replaces_the_bulb, 14, 56263076).
raw_performed(i_p53_a9, participant_replaces_the_bulb, 15, 56292124).

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

