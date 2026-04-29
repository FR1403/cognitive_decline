% =================================================================================================
% Paziente 262
% Attività: Pick a complete outfit for an interview from a selection of clothing.
% =================================================================================================


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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).


performed(i1, participant_moves_to_hallway_closet).
performed(i1, participant_chooses_correct_outfit_from_closet).
performed(i1, participant_lays_out_clothes_on_living_room_couch).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
