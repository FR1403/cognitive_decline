% ======================================================================
% Paziente 11
% Attivita: Sort and file a small collection of billing statements.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(sort_and_file_a_small_collection_of_billing_statements).

action(participant_moves_to_the_living_room).
action(participant_gathers_statements_from_bookshelf).
action(participant_moves_to_the_dining_room_table).
action(participant_sits_down_at_the_dining_room_table).
action(participant_sorts_pile_of_statements_into_the_organizer).

part_of(participant_moves_to_the_living_room, sort_and_file_a_small_collection_of_billing_statements).
part_of(participant_gathers_statements_from_bookshelf, sort_and_file_a_small_collection_of_billing_statements).
part_of(participant_moves_to_the_dining_room_table, sort_and_file_a_small_collection_of_billing_statements).
part_of(participant_sits_down_at_the_dining_room_table, sort_and_file_a_small_collection_of_billing_statements).
part_of(participant_sorts_pile_of_statements_into_the_organizer, sort_and_file_a_small_collection_of_billing_statements).

expected_object(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, statements).
expected_object(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, organizer).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p11_a15, sort_and_file_a_small_collection_of_billing_statements).

performed(i_p11_a15, participant_moves_to_the_living_room, 1).
performed(i_p11_a15, participant_gathers_statements_from_bookshelf, 2).
performed(i_p11_a15, participant_moves_to_the_dining_room_table, 3).
performed(i_p11_a15, participant_sits_down_at_the_dining_room_table, 4).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 5).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 6).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 7).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 8).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 9).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 10).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 11).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 12).
performed(i_p11_a15, participant_sorts_pile_of_statements_into_the_organizer, 13).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

