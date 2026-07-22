% ======================================================================
% Paziente 137
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

instance(i_p137_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 1, 50769026).
raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 2, 50770069).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 3, 50777080).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 4, 50799030).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 5, 50802020).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 6, 50805002).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 7, 50813020).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 8, 50817012).
raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 9, 50818016).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 10, 50819005).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 11, 50841000).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 12, 50843009).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 13, 50846001).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 14, 50855001).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 15, 50855003).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 16, 50859033).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 17, 50859097).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 18, 50863011).
raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 19, 50864036).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 20, 50864099).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 21, 50872033).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 22, 50876051).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 23, 50880097).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 24, 50882041).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 25, 50898003).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 26, 50900022).
raw_performed(i_p137_a8, participant_moves_to_hallway_closet, 27, 50906044).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 28, 50907004).
raw_performed(i_p137_a8, participant_chooses_correct_outfit_from_closet, 29, 50913017).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 30, 50915068).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 31, 50916052).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 32, 50928079).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 33, 50938078).
raw_performed(i_p137_a8, participant_lays_out_clothes_on_living_room_couch, 34, 50941073).

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

