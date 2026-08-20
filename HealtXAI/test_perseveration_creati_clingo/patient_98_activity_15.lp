% ======================================================================
% Paziente 98
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

action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 57002).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 82301).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 90611).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 48262).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 118523).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p98_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p98_a15, participant_moves_to_the_living_room, 1, 52818453).
raw_performed(i_p98_a15, participant_gathers_statements_from_bookshelf, 2, 52820124).
raw_performed(i_p98_a15, participant_gathers_statements_from_bookshelf, 3, 52844038).
raw_performed(i_p98_a15, participant_gathers_statements_from_bookshelf, 4, 52846223).
raw_performed(i_p98_a15, participant_gathers_statements_from_bookshelf, 5, 52855013).
raw_performed(i_p98_a15, participant_moves_to_the_dining_room_table, 6, 52856731).
raw_performed(i_p98_a15, participant_sits_down_at_the_dining_room_table, 7, 52860662).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 8, 52863591).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 9, 52864561).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 10, 52872130).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 11, 52875245).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 12, 52894448).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 13, 52896635).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 14, 52939228).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 15, 52944067).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 16, 52947077).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 17, 52967119).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 18, 52971453).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 19, 52984370).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 20, 52990934).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 21, 53000066).
raw_performed(i_p98_a15, participant_sorts_pile_of_statements_into_the_organizer, 22, 53002044).

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

