% ======================================================================
% Paziente 345
% Attivita: Pick a complete outfit for an interview from a selection of clothing.
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

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 133523).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 122151).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 216006).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p345_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p345_a8, participant_moves_to_hallway_closet, 1, 35861395).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 2, 35863370).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 3, 35863507).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 4, 35865184).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 5, 35866070).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 6, 35871715).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 7, 35874136).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 8, 35874321).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 9, 35875449).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 10, 35880576).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 11, 35880814).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 12, 35884939).
raw_performed(i_p345_a8, participant_lays_out_clothes_on_living_room_couch, 13, 35887160).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 14, 35889612).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 15, 35899585).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 16, 35904640).
raw_performed(i_p345_a8, participant_chooses_correct_outfit_from_closet, 17, 35904700).
raw_performed(i_p345_a8, participant_lays_out_clothes_on_living_room_couch, 18, 35904806).

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

