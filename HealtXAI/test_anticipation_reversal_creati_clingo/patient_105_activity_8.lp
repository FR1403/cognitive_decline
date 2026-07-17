% ======================================================================
% Paziente 105
% Attivita: Pick a complete outfit for an interview from a selection of clothing.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

action(participant_moves_to_hallway_closet).
action(participant_chooses_correct_outfit_from_closet).
action(participant_lays_out_clothes_on_living_room_couch).

part_of(participant_moves_to_hallway_closet, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).
part_of(participant_chooses_correct_outfit_from_closet, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).
part_of(participant_lays_out_clothes_on_living_room_couch, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

expected_pos(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 1).
expected_pos(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 2).
expected_pos(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 3).

depends_on(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, participant_moves_to_hallway_closet).
depends_on(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, participant_chooses_correct_outfit_from_closet).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p105_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).
performed(i_p105_a8, participant_moves_to_hallway_closet, 1).
performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 2).
performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 3).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

anticipation_omission(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

#show reversal/3.
#show anticipation_omission/3.

