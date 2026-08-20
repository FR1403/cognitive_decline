% ======================================================================
% Paziente 169
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

instance(i_p169_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p169_a8, participant_moves_to_hallway_closet, 1, 37911132).
raw_performed(i_p169_a8, participant_chooses_correct_outfit_from_closet, 2, 37930102).
raw_performed(i_p169_a8, participant_chooses_correct_outfit_from_closet, 3, 37982579).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 4, 37982976).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 5, 37992181).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 6, 37999074).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 7, 38002105).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 8, 38003772).
raw_performed(i_p169_a8, participant_moves_to_hallway_closet, 9, 38014149).
raw_performed(i_p169_a8, participant_chooses_correct_outfit_from_closet, 10, 38014573).
raw_performed(i_p169_a8, participant_chooses_correct_outfit_from_closet, 11, 38047282).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 12, 38048731).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 13, 38053217).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 14, 38054034).
raw_performed(i_p169_a8, participant_moves_to_hallway_closet, 15, 38056957).
raw_performed(i_p169_a8, participant_chooses_correct_outfit_from_closet, 16, 38056970).
raw_performed(i_p169_a8, participant_chooses_correct_outfit_from_closet, 17, 38069254).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 18, 38071905).
raw_performed(i_p169_a8, participant_lays_out_clothes_on_living_room_couch, 19, 38071932).

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

