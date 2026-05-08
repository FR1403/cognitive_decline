% ======================================================================
% Paziente 300
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

instance(i_p300_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p300_a8, participant_moves_to_hallway_closet, 1, 54723002).
raw_performed(i_p300_a8, participant_moves_to_hallway_closet, 2, 54723066).
raw_performed(i_p300_a8, participant_chooses_correct_outfit_from_closet, 3, 54724030).
raw_performed(i_p300_a8, participant_chooses_correct_outfit_from_closet, 4, 54749030).
raw_performed(i_p300_a8, participant_chooses_correct_outfit_from_closet, 5, 54749033).
raw_performed(i_p300_a8, participant_lays_out_clothes_on_living_room_couch, 6, 54750035).
raw_performed(i_p300_a8, participant_lays_out_clothes_on_living_room_couch, 7, 54756064).
raw_performed(i_p300_a8, participant_lays_out_clothes_on_living_room_couch, 8, 54757068).
raw_performed(i_p300_a8, participant_lays_out_clothes_on_living_room_couch, 9, 54761062).
raw_performed(i_p300_a8, participant_moves_to_hallway_closet, 10, 54762067).
raw_performed(i_p300_a8, participant_moves_to_hallway_closet, 11, 54763028).
raw_performed(i_p300_a8, participant_chooses_correct_outfit_from_closet, 12, 54775003).
raw_performed(i_p300_a8, participant_chooses_correct_outfit_from_closet, 13, 54775066).
raw_performed(i_p300_a8, participant_lays_out_clothes_on_living_room_couch, 14, 54776030).

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

