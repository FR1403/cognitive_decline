% ======================================================================
% Paziente 255
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

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 133523).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 122151).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 216006).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p255_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 1, 52911219).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 2, 52914566).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 3, 52944570).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 4, 52951632).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 5, 52954290).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 6, 52994595).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 7, 52997189).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 8, 53002400).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 9, 53007476).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 10, 53010392).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 11, 53015466).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 12, 53019445).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 13, 53022276).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 14, 53022632).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 15, 53025033).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 16, 53025590).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 17, 53034762).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 18, 53038090).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 19, 53038450).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 20, 53041775).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 21, 53045289).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 22, 53046419).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 23, 53047186).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 24, 53062694).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 25, 53065817).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 26, 53066025).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 27, 53068851).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 28, 53071150).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 29, 53071700).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 30, 53079438).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 31, 53082329).
raw_performed(i_p255_a8, participant_moves_to_hallway_closet, 32, 53089499).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 33, 53090826).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 34, 53119315).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 35, 53128909).
raw_performed(i_p255_a8, participant_chooses_correct_outfit_from_closet, 36, 53129651).
raw_performed(i_p255_a8, participant_lays_out_clothes_on_living_room_couch, 37, 53134555).

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

