% ======================================================================
% Paziente 184
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

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 128883).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 125588).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 178354).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p184_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p184_a8, participant_moves_to_hallway_closet, 1, 50315067).
raw_performed(i_p184_a8, participant_moves_to_hallway_closet, 2, 50315136).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 3, 50316860).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 4, 50350549).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 5, 50383926).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 6, 50386552).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 7, 50391594).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 8, 50401162).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 9, 50406772).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 10, 50409176).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 11, 50410804).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 12, 50413444).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 13, 50415493).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 14, 50420159).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 15, 50424414).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 16, 50424858).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 17, 50425631).
raw_performed(i_p184_a8, participant_moves_to_hallway_closet, 18, 50427618).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 19, 50427963).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 20, 50431360).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 21, 50455335).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 22, 50457597).
raw_performed(i_p184_a8, participant_chooses_correct_outfit_from_closet, 23, 50458367).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 24, 50459428).
raw_performed(i_p184_a8, participant_lays_out_clothes_on_living_room_couch, 25, 50461168).

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

