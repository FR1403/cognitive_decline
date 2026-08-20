% ======================================================================
% Paziente 215
% Attivita: Obtain a set of medicines and a weekly medicine dispenser, fill as per directions.
% ======================================================================


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

expected_object(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_fills_dispenser_with_medication, medication).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p215_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).

performed(i_p215_a2, participant_reads_instructions, 1).
performed(i_p215_a2, participant_reads_instructions, 2).
performed(i_p215_a2, participant_retrieves_materials_from_cupboard_a, 3).
performed(i_p215_a2, participant_reads_instructions, 4).
performed(i_p215_a2, participant_reads_instructions, 5).
performed(i_p215_a2, participant_reads_instructions, 6).
performed(i_p215_a2, participant_retrieves_materials_from_cupboard_a, 7).
performed(i_p215_a2, participant_reads_instructions, 8).
performed(i_p215_a2, participant_reads_instructions, 9).
performed(i_p215_a2, participant_reads_instructions, 10).
performed(i_p215_a2, participant_reads_instructions, 11).
performed(i_p215_a2, participant_reads_instructions, 12).
performed(i_p215_a2, participant_reads_instructions, 13).
performed(i_p215_a2, participant_reads_instructions, 14).
performed(i_p215_a2, participant_reads_instructions, 15).
performed(i_p215_a2, participant_reads_instructions, 16).
performed(i_p215_a2, participant_reads_instructions, 17).
performed(i_p215_a2, participant_reads_instructions, 18).
performed(i_p215_a2, participant_reads_instructions, 19).
performed(i_p215_a2, participant_reads_instructions, 20).
performed(i_p215_a2, participant_reads_instructions, 21).
performed(i_p215_a2, participant_reads_instructions, 22).
performed(i_p215_a2, participant_reads_instructions, 23).
performed(i_p215_a2, participant_reads_instructions, 24).
performed(i_p215_a2, participant_reads_instructions, 25).
performed(i_p215_a2, participant_reads_instructions, 26).
performed(i_p215_a2, participant_reads_instructions, 27).
performed(i_p215_a2, participant_reads_instructions, 28).
performed(i_p215_a2, participant_reads_instructions, 29).
performed(i_p215_a2, participant_reads_instructions, 30).
performed(i_p215_a2, participant_reads_instructions, 31).
performed(i_p215_a2, participant_fills_dispenser_with_medication, 32).
performed(i_p215_a2, participant_fills_dispenser_with_medication, 33).
performed(i_p215_a2, participant_fills_dispenser_with_medication, 34).
performed(i_p215_a2, participant_fills_dispenser_with_medication, 35).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

