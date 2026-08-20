% ======================================================================
% Paziente 314
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

instance(i_p314_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p314_a8, participant_moves_to_hallway_closet, 1, 34816040).
raw_performed(i_p314_a8, participant_moves_to_hallway_closet, 2, 34816057).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 3, 34816482).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 4, 34850958).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 5, 34861951).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 6, 34885827).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 7, 34902035).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 8, 34902640).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 9, 34905688).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 10, 34914474).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 11, 34920532).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 12, 34924287).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 13, 34924305).
raw_performed(i_p314_a8, participant_moves_to_hallway_closet, 14, 34924854).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 15, 34924877).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 16, 34929834).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 17, 34935834).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 18, 34936444).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 19, 34936461).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 20, 34939808).
raw_performed(i_p314_a8, participant_moves_to_hallway_closet, 21, 34943515).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 22, 34944159).
raw_performed(i_p314_a8, participant_chooses_correct_outfit_from_closet, 23, 34950884).
raw_performed(i_p314_a8, participant_lays_out_clothes_on_living_room_couch, 24, 34970950).

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

