% =================================================================================================
% Paziente 10
% Attività: Sort and file a small collection of billing statements.
% =================================================================================================


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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, sort_and_file_a_small_collection_of_billing_statements).


performed(i1, participant_moves_to_the_living_room).
performed(i1, participant_gathers_statements_from_bookshelf).
performed(i1, participant_moves_to_the_dining_room_table).
performed(i1, participant_sits_down_at_the_dining_room_table).
performed(i1, participant_sorts_pile_of_statements_into_the_organizer).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
