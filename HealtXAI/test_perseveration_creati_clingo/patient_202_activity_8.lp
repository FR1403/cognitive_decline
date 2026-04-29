% ======================================================================
% Paziente 202
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

instance(i_p202_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 1, 52871034).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 2, 52872039).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3, 52880008).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 4, 52881088).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 5, 52883034).
raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 6, 52915084).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 52916044).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 8, 52921047).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 9, 52923057).
raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 10, 52934001).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 52935029).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 52968074).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 13, 52969076).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 14, 52971022).
raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 15, 53034029).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16, 53035032).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 17, 53040054).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 18, 53042038).
raw_performed(i_p202_a9, participant_moves_to_the_kitchen, 19, 53068036).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20, 53069041).
raw_performed(i_p202_a9, participant_retrieves_light_bulbs_from_cabinet_b, 21, 53086004).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 22, 53087087).
raw_performed(i_p202_a9, participant_moves_to_the_dining_room, 23, 53089075).

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

