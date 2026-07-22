% ======================================================================
% Paziente 241
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

action_type(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 7).
action_type(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 5).
action_type(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 7).
action_type(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 8).
action_type(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 5).

expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 1).
expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 1).
expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 1).
expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 1).
expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 1).

action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 58997).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 98761).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 108552).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 62051).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 145184).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p241_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p241_a15, participant_moves_to_the_living_room, 1, 38802127).
raw_performed(i_p241_a15, participant_gathers_statements_from_bookshelf, 2, 38804192).
raw_performed(i_p241_a15, participant_gathers_statements_from_bookshelf, 3, 38820968).
raw_performed(i_p241_a15, participant_gathers_statements_from_bookshelf, 4, 38829127).
raw_performed(i_p241_a15, participant_gathers_statements_from_bookshelf, 5, 38831366).
raw_performed(i_p241_a15, participant_gathers_statements_from_bookshelf, 6, 38834771).
raw_performed(i_p241_a15, participant_gathers_statements_from_bookshelf, 7, 38836653).
raw_performed(i_p241_a15, participant_gathers_statements_from_bookshelf, 8, 38838323).
raw_performed(i_p241_a15, participant_moves_to_the_dining_room_table, 9, 38846044).
raw_performed(i_p241_a15, participant_sits_down_at_the_dining_room_table, 10, 38848483).
raw_performed(i_p241_a15, participant_sorts_pile_of_statements_into_the_organizer, 11, 38864048).
raw_performed(i_p241_a15, participant_sorts_pile_of_statements_into_the_organizer, 12, 38869695).
raw_performed(i_p241_a15, participant_sorts_pile_of_statements_into_the_organizer, 13, 38942493).
raw_performed(i_p241_a15, participant_sorts_pile_of_statements_into_the_organizer, 14, 38952715).

prev_same(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    T1 < T2,
    not between_same_time(I,X,T1,T2).

between_same_time(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    raw_performed(I,X,_,Tm),
    T1 < Tm,
    Tm < T2.

episode_start(I,X,T) :-
    raw_performed(I,X,_,T),
    not prev_same(I,X,_,T).

episode_start(I,X,T2) :-
    prev_same(I,X,T1,T2),
    instance(I,A),
    action_gap(A,X,G),
    T2 - T1 > G.

performed(I,X,Tstart) :-
    episode_start(I,X,Tstart).


% ===========================
% Level C - Anomaly detection
% ===========================


performed_count(I,X,M) :-
    instance(I,_),
    action(X),
    M = #count { T : performed(I,X,T) }.

perseveration(I,X) :-
    instance(I,A),
    expected_count(A,X,N),
    performed_count(I,X,M),
    M > N.

#show perseveration/2.

