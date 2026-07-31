% ======================================================================
% Paziente 143
% Attivita: Wash hands with soap at the kitchen sink.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(wash_hands_with_soap_at_the_kitchen_sink).

action(participant_moves_to_the_kitchen).
action(participant_turns_on_water).
action(participant_uses_hand_soap).
action(participant_washes_hands).
action(participant_dries_hands).

part_of(participant_moves_to_the_kitchen, wash_hands_with_soap_at_the_kitchen_sink).
part_of(participant_turns_on_water, wash_hands_with_soap_at_the_kitchen_sink).
part_of(participant_uses_hand_soap, wash_hands_with_soap_at_the_kitchen_sink).
part_of(participant_washes_hands, wash_hands_with_soap_at_the_kitchen_sink).
part_of(participant_dries_hands, wash_hands_with_soap_at_the_kitchen_sink).

expected_object(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, pitcher).
expected_object(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, hand_soap).
expected_object(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, soap).
expected_object(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, towel).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p143_a10, wash_hands_with_soap_at_the_kitchen_sink).

performed(i_p143_a10, participant_moves_to_the_kitchen, 1).
performed(i_p143_a10, participant_turns_on_water, 2).
performed(i_p143_a10, participant_washes_hands, 3).
performed(i_p143_a10, participant_washes_hands, 4).
performed(i_p143_a10, participant_washes_hands, 5).
performed(i_p143_a10, participant_washes_hands, 6).
performed(i_p143_a10, participant_dries_hands, 7).
performed(i_p143_a10, participant_dries_hands, 8).
performed(i_p143_a10, participant_dries_hands, 9).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

