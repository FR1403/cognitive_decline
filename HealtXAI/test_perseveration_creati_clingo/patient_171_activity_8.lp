% ======================================================================
% Paziente 171
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

instance(i_p171_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p171_a8, participant_moves_to_hallway_closet, 1, 54575416).
raw_performed(i_p171_a8, participant_chooses_correct_outfit_from_closet, 2, 54576136).
raw_performed(i_p171_a8, participant_chooses_correct_outfit_from_closet, 3, 54630915).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 4, 54632576).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 5, 54633232).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 6, 54634415).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 7, 54642231).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 8, 54646380).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 9, 54649290).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 10, 54656121).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 11, 54658693).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 12, 54662122).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 13, 54665342).
raw_performed(i_p171_a8, participant_moves_to_hallway_closet, 14, 54666422).
raw_performed(i_p171_a8, participant_chooses_correct_outfit_from_closet, 15, 54666793).
raw_performed(i_p171_a8, participant_chooses_correct_outfit_from_closet, 16, 54671961).
raw_performed(i_p171_a8, participant_chooses_correct_outfit_from_closet, 17, 54671993).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 18, 54672952).
raw_performed(i_p171_a8, participant_lays_out_clothes_on_living_room_couch, 19, 54673320).

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

