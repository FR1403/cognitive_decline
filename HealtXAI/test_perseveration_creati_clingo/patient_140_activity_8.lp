% ======================================================================
% Paziente 140
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

instance(i_p140_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p140_a8, participant_moves_to_hallway_closet, 1, 54475714).
raw_performed(i_p140_a8, participant_moves_to_hallway_closet, 2, 54477003).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 3, 54483357).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 4, 54522702).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 5, 54563415).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 6, 54599210).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 7, 54599230).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 8, 54609311).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 9, 54609654).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 10, 54616138).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 11, 54636846).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 12, 54636863).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 13, 54645619).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 14, 54658560).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 15, 54660503).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 16, 54661344).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 17, 54663252).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 18, 54665846).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 19, 54669862).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 20, 54670251).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 21, 54671363).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 22, 54671378).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 23, 54674452).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 24, 54684887).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 25, 54687431).
raw_performed(i_p140_a8, participant_chooses_correct_outfit_from_closet, 26, 54688049).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 27, 54688664).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 28, 54690649).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 29, 54699448).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 30, 54702264).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 31, 54711281).
raw_performed(i_p140_a8, participant_lays_out_clothes_on_living_room_couch, 32, 54713222).

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

