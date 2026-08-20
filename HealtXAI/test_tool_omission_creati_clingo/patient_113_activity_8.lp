% ======================================================================
% Paziente 113
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

expected_object(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, outfit).
expected_object(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, clothes).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p113_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

performed(i_p113_a8, participant_moves_to_hallway_closet, 1).
performed(i_p113_a8, participant_moves_to_hallway_closet, 2).
performed(i_p113_a8, participant_chooses_correct_outfit_from_closet, 3).
performed(i_p113_a8, participant_chooses_correct_outfit_from_closet, 4).
performed(i_p113_a8, participant_chooses_correct_outfit_from_closet, 5).
performed(i_p113_a8, participant_lays_out_clothes_on_living_room_couch, 6).
performed(i_p113_a8, participant_lays_out_clothes_on_living_room_couch, 7).
performed(i_p113_a8, participant_lays_out_clothes_on_living_room_couch, 8).
performed(i_p113_a8, participant_lays_out_clothes_on_living_room_couch, 9).
performed(i_p113_a8, participant_lays_out_clothes_on_living_room_couch, 10).

observed_object(i_p113_a8,participant_chooses_correct_outfit_from_closet,outfit).
observed_object(i_p113_a8,participant_chooses_correct_outfit_from_closet,outfit).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

