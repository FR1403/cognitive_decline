% ======================================================================
% Paziente 156
% Attività: Pick a complete outfit for an interview from a selection of clothing.
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

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 240000).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 240000).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p156_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p156_a8, participant_moves_to_hallway_closet, 1, 50768066).
raw_performed(i_p156_a8, participant_moves_to_hallway_closet, 2, 50768069).
raw_performed(i_p156_a8, participant_chooses_correct_outfit_from_closet, 3, 50770034).
raw_performed(i_p156_a8, participant_chooses_correct_outfit_from_closet, 4, 50777009).
raw_performed(i_p156_a8, participant_chooses_correct_outfit_from_closet, 5, 50783096).
raw_performed(i_p156_a8, participant_chooses_correct_outfit_from_closet, 6, 50812003).
raw_performed(i_p156_a8, participant_chooses_correct_outfit_from_closet, 7, 50815065).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 8, 50816022).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 9, 50818014).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 10, 50825026).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 11, 50827017).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 12, 50832029).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 13, 50833003).
raw_performed(i_p156_a8, participant_moves_to_hallway_closet, 14, 50833097).
raw_performed(i_p156_a8, participant_chooses_correct_outfit_from_closet, 15, 50835021).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 16, 50838064).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 17, 50855080).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 18, 50859081).
raw_performed(i_p156_a8, participant_lays_out_clothes_on_living_room_couch, 19, 50860047).

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

