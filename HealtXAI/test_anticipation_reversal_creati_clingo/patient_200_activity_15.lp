% ======================================================================
% Paziente 200
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

expected_pos(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 1).
expected_pos(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 2).
expected_pos(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 3).
expected_pos(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 4).
expected_pos(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 5).

depends_on(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, participant_moves_to_the_living_room).
depends_on(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, participant_gathers_statements_from_bookshelf).
depends_on(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, participant_moves_to_the_dining_room_table).
depends_on(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, participant_sits_down_at_the_dining_room_table).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p200_a15, sort_and_file_a_small_collection_of_billing_statements).
performed(i_p200_a15, participant_moves_to_the_living_room, 1).
performed(i_p200_a15, participant_gathers_statements_from_bookshelf, 2).
performed(i_p200_a15, participant_moves_to_the_dining_room_table, 3).
performed(i_p200_a15, participant_sits_down_at_the_dining_room_table, 4).
performed(i_p200_a15, participant_sorts_pile_of_statements_into_the_organizer, 5).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.

