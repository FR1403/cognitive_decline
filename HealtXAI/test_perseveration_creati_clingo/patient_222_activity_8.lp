% ======================================================================
% Paziente 222
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

instance(i_p222_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p222_a8, participant_moves_to_hallway_closet, 1, 51107092).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 2, 51109802).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 3, 51113798).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 4, 51129374).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 5, 51134737).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 6, 51137760).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 7, 51139497).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 8, 51141636).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 9, 51145926).
raw_performed(i_p222_a8, participant_moves_to_hallway_closet, 10, 51149375).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 11, 51155806).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 12, 51158255).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 13, 51165212).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 14, 51186876).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 15, 51189235).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 16, 51190761).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 17, 51191782).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 18, 51192609).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 19, 51193116).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 20, 51195616).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 21, 51195654).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 22, 51196775).
raw_performed(i_p222_a8, participant_moves_to_hallway_closet, 23, 51198503).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 24, 51198690).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 25, 51202839).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 26, 51204725).
raw_performed(i_p222_a8, participant_chooses_correct_outfit_from_closet, 27, 51206567).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 28, 51208174).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 29, 51209244).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 30, 51211274).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 31, 51226996).
raw_performed(i_p222_a8, participant_lays_out_clothes_on_living_room_couch, 32, 51234337).

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

