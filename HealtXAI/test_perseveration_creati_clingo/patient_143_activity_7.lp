% ======================================================================
% Paziente 143
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

instance(i_p143_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p143_a8, participant_moves_to_hallway_closet, 1, 54111096).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 2, 54112303).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 3, 54129029).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 4, 54134277).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 5, 54135326).
raw_performed(i_p143_a8, participant_lays_out_clothes_on_living_room_couch, 6, 54136005).
raw_performed(i_p143_a8, participant_lays_out_clothes_on_living_room_couch, 7, 54136262).
raw_performed(i_p143_a8, participant_lays_out_clothes_on_living_room_couch, 8, 54147004).
raw_performed(i_p143_a8, participant_lays_out_clothes_on_living_room_couch, 9, 54148098).
raw_performed(i_p143_a8, participant_lays_out_clothes_on_living_room_couch, 10, 54154057).
raw_performed(i_p143_a8, participant_moves_to_hallway_closet, 11, 54156003).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 12, 54157144).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 13, 54163725).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 14, 54171672).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 15, 54178011).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 16, 54202578).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 17, 54216034).
raw_performed(i_p143_a8, participant_chooses_correct_outfit_from_closet, 18, 54218047).
raw_performed(i_p143_a8, participant_lays_out_clothes_on_living_room_couch, 19, 54219681).
raw_performed(i_p143_a8, participant_lays_out_clothes_on_living_room_couch, 20, 54220011).
raw_performed(i_p143_a8, participant_lays_out_clothes_on_living_room_couch, 21, 54222898).

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

