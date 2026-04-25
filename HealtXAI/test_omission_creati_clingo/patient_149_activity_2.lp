% =================================================================================================

                                  % Paziente 149
% Attività: Obtain a set of medicines and a weekly medicine dispenser, fill as per directions.

                                  % =================================================================================================

% ========================
% Level A - Activity model
% ========================

activity(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

action(participant_retrieves_materials_from_cupboard_a).
action(participant_reads_instructions).
action(participant_fills_dispenser_with_medication).

part_of(participant_retrieves_materials_from_cupboard_a, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).
part_of(participant_reads_instructions, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).
part_of(participant_fills_dispenser_with_medication, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).


performed(i1, participant_retrieves_materials_from_cupboard_a).
performed(i1, participant_reads_instructions).
performed(i1, participant_fills_dispenser_with_medication).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
