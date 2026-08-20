% ======================================================================
% Paziente 115
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

instance(i_p115_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p115_a8, participant_moves_to_hallway_closet, 1, 35690341).
raw_performed(i_p115_a8, participant_moves_to_hallway_closet, 2, 35691176).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 3, 35696592).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 4, 35701829).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 5, 35706233).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 6, 35714969).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 7, 35717661).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 8, 35721559).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 9, 35728641).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 10, 35800051).
raw_performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 11, 35801069).
raw_performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 12, 35804006).
raw_performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 13, 35805688).
raw_performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 14, 35820139).
raw_performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 15, 35825579).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 16, 35829119).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 17, 35829746).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 18, 35846018).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 19, 35856247).
raw_performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 20, 35857729).
raw_performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 21, 35859205).
raw_performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 22, 35859230).

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

