% =================================================================================================

                                  % Paziente 206
% Attività: Wash hands with soap at the kitchen sink.

                                  % =================================================================================================

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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, wash_hands_with_soap_at_the_kitchen_sink).


performed(i1, participant_moves_to_the_kitchen).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
