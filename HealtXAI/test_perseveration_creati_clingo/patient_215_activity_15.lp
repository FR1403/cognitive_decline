% ======================================================================
% Paziente 215
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

instance(i_p215_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p215_a15, participant_moves_to_the_living_room, 1, 54628012).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 2, 54632793).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 3, 54642153).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 4, 54645159).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 5, 54653197).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 6, 54656618).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 7, 54664481).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 8, 54677748).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 9, 54679458).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 10, 54685399).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 11, 54688727).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 12, 54695216).
raw_performed(i_p215_a15, participant_gathers_statements_from_bookshelf, 13, 54696990).
raw_performed(i_p215_a15, participant_moves_to_the_dining_room_table, 14, 54711357).
raw_performed(i_p215_a15, participant_sits_down_at_the_dining_room_table, 15, 54711357).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 16, 54721041).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 17, 54729700).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 18, 54733995).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 19, 54748788).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 20, 54756274).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 21, 54778952).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 22, 54779158).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 23, 54795475).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 24, 54797992).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 25, 54820772).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 26, 54847969).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 27, 54875369).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 28, 54904470).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 29, 54906635).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 30, 54912658).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 31, 54915094).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 32, 54915266).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 33, 54919937).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 34, 54922196).
raw_performed(i_p215_a15, participant_sorts_pile_of_statements_into_the_organizer, 35, 54938348).

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

