% ======================================================================
% Paziente 187
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

instance(i_p187_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p187_a8, participant_moves_to_hallway_closet, 1, 34571049).
raw_performed(i_p187_a8, participant_moves_to_hallway_closet, 2, 34572036).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 3, 34574002).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 4, 34582065).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 5, 34588073).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 6, 34592004).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 7, 34604035).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 8, 34608001).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 9, 34611028).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 10, 34617068).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 11, 34622043).
raw_performed(i_p187_a8, participant_lays_out_clothes_on_living_room_couch, 12, 34625078).
raw_performed(i_p187_a8, participant_lays_out_clothes_on_living_room_couch, 13, 34629008).
raw_performed(i_p187_a8, participant_lays_out_clothes_on_living_room_couch, 14, 34642089).
raw_performed(i_p187_a8, participant_lays_out_clothes_on_living_room_couch, 15, 34646043).
raw_performed(i_p187_a8, participant_moves_to_hallway_closet, 16, 34648011).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 17, 34649016).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 18, 34657055).
raw_performed(i_p187_a8, participant_chooses_correct_outfit_from_closet, 19, 34658081).
raw_performed(i_p187_a8, participant_lays_out_clothes_on_living_room_couch, 20, 34659061).
raw_performed(i_p187_a8, participant_lays_out_clothes_on_living_room_couch, 21, 34659064).

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

