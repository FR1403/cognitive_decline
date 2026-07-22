% ======================================================================
% Paziente 293
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

instance(i_p293_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p293_a8, participant_moves_to_hallway_closet, 1, 37289949).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 2, 37292370).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 3, 37295936).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 4, 37304167).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 5, 37311750).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 6, 37317748).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 7, 37322262).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 8, 37325349).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 9, 37330762).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 10, 37354214).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 11, 37356838).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 12, 37364132).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 13, 37367911).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 14, 37374281).
raw_performed(i_p293_a8, participant_lays_out_clothes_on_living_room_couch, 15, 37376536).
raw_performed(i_p293_a8, participant_lays_out_clothes_on_living_room_couch, 16, 37376970).
raw_performed(i_p293_a8, participant_lays_out_clothes_on_living_room_couch, 17, 37380568).
raw_performed(i_p293_a8, participant_lays_out_clothes_on_living_room_couch, 18, 37382932).
raw_performed(i_p293_a8, participant_lays_out_clothes_on_living_room_couch, 19, 37383309).
raw_performed(i_p293_a8, participant_moves_to_hallway_closet, 20, 37383500).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 21, 37384610).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 22, 37388548).
raw_performed(i_p293_a8, participant_chooses_correct_outfit_from_closet, 23, 37389609).
raw_performed(i_p293_a8, participant_lays_out_clothes_on_living_room_couch, 24, 37392271).
raw_performed(i_p293_a8, participant_lays_out_clothes_on_living_room_couch, 25, 37393068).

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

