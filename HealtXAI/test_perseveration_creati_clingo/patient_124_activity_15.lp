% ======================================================================
% Paziente 124
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

instance(i_p124_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p124_a15, participant_moves_to_the_living_room, 1, 37743068).
raw_performed(i_p124_a15, participant_gathers_statements_from_bookshelf, 2, 37745018).
raw_performed(i_p124_a15, participant_moves_to_the_dining_room_table, 3, 37750083).
raw_performed(i_p124_a15, participant_sits_down_at_the_dining_room_table, 4, 37753001).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 5, 37774075).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 6, 37793082).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 7, 37805068).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 8, 37824052).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 9, 37829053).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 10, 37838003).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 11, 37851004).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 12, 37856005).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 13, 37861088).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 14, 37875036).
raw_performed(i_p124_a15, participant_sorts_pile_of_statements_into_the_organizer, 15, 37880060).

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

