% ======================================================================
% Paziente 215
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

instance(i_p215_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p215_a8, participant_moves_to_hallway_closet, 1, 51154748).
raw_performed(i_p215_a8, participant_moves_to_hallway_closet, 2, 51157009).
raw_performed(i_p215_a8, participant_moves_to_hallway_closet, 3, 51159029).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 4, 51159179).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 5, 51162282).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 6, 51175760).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 7, 51180250).
raw_performed(i_p215_a8, participant_lays_out_clothes_on_living_room_couch, 8, 51186876).
raw_performed(i_p215_a8, participant_moves_to_hallway_closet, 9, 51190358).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 10, 51190358).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 11, 51198082).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 12, 51205341).
raw_performed(i_p215_a8, participant_lays_out_clothes_on_living_room_couch, 13, 51208020).
raw_performed(i_p215_a8, participant_lays_out_clothes_on_living_room_couch, 14, 51215080).
raw_performed(i_p215_a8, participant_moves_to_hallway_closet, 15, 51215666).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 16, 51215666).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 17, 51223161).
raw_performed(i_p215_a8, participant_moves_to_hallway_closet, 18, 51234326).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 19, 51235319).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 20, 51239784).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 21, 51256944).
raw_performed(i_p215_a8, participant_chooses_correct_outfit_from_closet, 22, 51259722).
raw_performed(i_p215_a8, participant_lays_out_clothes_on_living_room_couch, 23, 51281242).

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

