% ======================================================================
% Paziente 72
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

instance(i_p72_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p72_a8, participant_moves_to_hallway_closet, 1, 37548183).
raw_performed(i_p72_a8, participant_moves_to_hallway_closet, 2, 37548207).
raw_performed(i_p72_a8, participant_chooses_correct_outfit_from_closet, 3, 37548232).
raw_performed(i_p72_a8, participant_chooses_correct_outfit_from_closet, 4, 37549325).
raw_performed(i_p72_a8, participant_chooses_correct_outfit_from_closet, 5, 37618277).
raw_performed(i_p72_a8, participant_lays_out_clothes_on_living_room_couch, 6, 37620255).
raw_performed(i_p72_a8, participant_lays_out_clothes_on_living_room_couch, 7, 37622883).
raw_performed(i_p72_a8, participant_lays_out_clothes_on_living_room_couch, 8, 37635672).
raw_performed(i_p72_a8, participant_moves_to_hallway_closet, 9, 37638511).
raw_performed(i_p72_a8, participant_chooses_correct_outfit_from_closet, 10, 37638537).
raw_performed(i_p72_a8, participant_lays_out_clothes_on_living_room_couch, 11, 37638561).
raw_performed(i_p72_a8, participant_moves_to_hallway_closet, 12, 37647243).
raw_performed(i_p72_a8, participant_chooses_correct_outfit_from_closet, 13, 37647243).
raw_performed(i_p72_a8, participant_chooses_correct_outfit_from_closet, 14, 37660313).
raw_performed(i_p72_a8, participant_chooses_correct_outfit_from_closet, 15, 37668754).
raw_performed(i_p72_a8, participant_chooses_correct_outfit_from_closet, 16, 37691660).
raw_performed(i_p72_a8, participant_lays_out_clothes_on_living_room_couch, 17, 37722337).

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

