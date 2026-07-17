% ======================================================================
% Paziente 137
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

expected_pos(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_retrieves_materials_from_cupboard_a, 1).
expected_pos(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_reads_instructions, 2).
expected_pos(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_fills_dispenser_with_medication, 3).

depends_on(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_fills_dispenser_with_medication, participant_reads_instructions).
depends_on(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_fills_dispenser_with_medication, participant_retrieves_materials_from_cupboard_a).
depends_on(obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions, participant_reads_instructions, participant_retrieves_materials_from_cupboard_a).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p137_a2, obtain_a_set_of_medicines_and_a_weekly_medicine_dispenser_fill_as_per_directions).
performed(i_p137_a2, participant_retrieves_materials_from_cupboard_a, 1).
performed(i_p137_a2, participant_reads_instructions, 2).
performed(i_p137_a2, participant_fills_dispenser_with_medication, 3).


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

