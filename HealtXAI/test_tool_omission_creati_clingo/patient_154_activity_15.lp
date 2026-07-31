% ======================================================================
% Paziente 154
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

expected_object(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, book_shelf).
expected_object(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, organizer).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p154_a15, sort_and_file_a_small_collection_of_billing_statements).

performed(i_p154_a15, participant_moves_to_the_living_room, 1).
performed(i_p154_a15, participant_gathers_statements_from_bookshelf, 2).
performed(i_p154_a15, participant_moves_to_the_dining_room_table, 3).
performed(i_p154_a15, participant_sits_down_at_the_dining_room_table, 4).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 5).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 6).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 7).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 8).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 9).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 10).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 11).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 12).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 13).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 14).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 15).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 16).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 17).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 18).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 19).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 20).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 21).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 22).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 23).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 24).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 25).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 26).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 27).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 28).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 29).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 30).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 31).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 32).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 33).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 34).
performed(i_p154_a15, participant_moves_to_the_living_room, 35).
performed(i_p154_a15, participant_gathers_statements_from_bookshelf, 36).
performed(i_p154_a15, participant_moves_to_the_dining_room_table, 37).
performed(i_p154_a15, participant_sits_down_at_the_dining_room_table, 38).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 39).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 40).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 41).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 42).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 43).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 44).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 45).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 46).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 47).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 48).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 49).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 50).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 51).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 52).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 53).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 54).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 55).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 56).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 57).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 58).
performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 59).

observed_object(i_p154_a15,participant_gathers_statements_from_bookshelf,book_shelf).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

