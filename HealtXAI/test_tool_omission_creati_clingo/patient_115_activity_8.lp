% ======================================================================
% Paziente 115
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

expected_object(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, closet_or_hanger).
expected_object(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, couch).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p115_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

performed(i_p115_a8, participant_moves_to_hallway_closet, 1).
performed(i_p115_a8, participant_moves_to_hallway_closet, 2).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 3).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 4).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 5).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 6).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 7).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 8).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 9).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 10).
performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 11).
performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 12).
performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 13).
performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 14).
performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 15).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 16).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 17).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 18).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 19).
performed(i_p115_a8, participant_chooses_correct_outfit_from_closet, 20).
performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 21).
performed(i_p115_a8, participant_lays_out_clothes_on_living_room_couch, 22).

observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).
observed_object(i_p115_a8,participant_chooses_correct_outfit_from_closet,closet_or_hanger).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

