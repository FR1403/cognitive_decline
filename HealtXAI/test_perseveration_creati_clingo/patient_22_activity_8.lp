% ======================================================================
% Paziente 22
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

instance(i_p22_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p22_a8, participant_moves_to_hallway_closet, 1, 56303030).
raw_performed(i_p22_a8, participant_moves_to_hallway_closet, 2, 56304002).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 3, 56304023).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 4, 56317044).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 5, 56322067).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 6, 56329062).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 7, 56331003).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 8, 56331083).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 9, 56337001).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 10, 56339080).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 11, 56346089).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 12, 56362028).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 13, 56362070).
raw_performed(i_p22_a8, participant_moves_to_hallway_closet, 14, 56363053).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 15, 56363092).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 16, 56380006).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 17, 56431092).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 18, 56444034).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 19, 56449095).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 20, 56452005).
raw_performed(i_p22_a8, participant_chooses_correct_outfit_from_closet, 21, 56455066).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 22, 56460038).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 23, 56460080).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 24, 56462022).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 25, 56468009).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 26, 56476022).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 27, 56479011).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 28, 56481083).
raw_performed(i_p22_a8, participant_lays_out_clothes_on_living_room_couch, 29, 56482036).

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

