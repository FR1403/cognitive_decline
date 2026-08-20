% ======================================================================
% Paziente 173
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

instance(i_p173_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p173_a8, participant_moves_to_hallway_closet, 1, 36118940).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 2, 36122980).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 3, 36128771).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 4, 36142465).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 5, 36144399).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 6, 36151801).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 7, 36154840).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 8, 36157095).
raw_performed(i_p173_a8, participant_lays_out_clothes_on_living_room_couch, 9, 36159762).
raw_performed(i_p173_a8, participant_lays_out_clothes_on_living_room_couch, 10, 36160040).
raw_performed(i_p173_a8, participant_moves_to_hallway_closet, 11, 36163394).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 12, 36163838).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 13, 36171498).
raw_performed(i_p173_a8, participant_lays_out_clothes_on_living_room_couch, 14, 36173819).
raw_performed(i_p173_a8, participant_lays_out_clothes_on_living_room_couch, 15, 36174126).
raw_performed(i_p173_a8, participant_moves_to_hallway_closet, 16, 36175489).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 17, 36176580).
raw_performed(i_p173_a8, participant_chooses_correct_outfit_from_closet, 18, 36179761).
raw_performed(i_p173_a8, participant_lays_out_clothes_on_living_room_couch, 19, 36184616).
raw_performed(i_p173_a8, participant_lays_out_clothes_on_living_room_couch, 20, 36187628).
raw_performed(i_p173_a8, participant_lays_out_clothes_on_living_room_couch, 21, 36193429).
raw_performed(i_p173_a8, participant_lays_out_clothes_on_living_room_couch, 22, 36202619).
raw_performed(i_p173_a8, participant_moves_to_hallway_closet, 23, 36208476).

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

