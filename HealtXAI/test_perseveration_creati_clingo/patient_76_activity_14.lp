% ======================================================================
% Paziente 76
% Attività: Sort and file a small collection of billing statements.
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

action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 240000).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 240000).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 240000).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 240000).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p76_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p76_a15, participant_moves_to_the_living_room, 1, 41191027).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 2, 41193004).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 3, 41208034).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 4, 41217008).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 5, 41222030).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 6, 41231004).
raw_performed(i_p76_a15, participant_moves_to_the_dining_room_table, 7, 41240021).
raw_performed(i_p76_a15, participant_moves_to_the_living_room, 8, 41248051).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 9, 41254042).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 10, 41265031).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 11, 41286025).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 12, 41288045).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 13, 41295054).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 14, 41299028).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 15, 41344067).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 16, 41403008).
raw_performed(i_p76_a15, participant_gathers_statements_from_bookshelf, 17, 41420054).
raw_performed(i_p76_a15, participant_moves_to_the_dining_room_table, 18, 41428054).
raw_performed(i_p76_a15, participant_sorts_pile_of_statements_into_the_organizer, 19, 41440038).
raw_performed(i_p76_a15, participant_sorts_pile_of_statements_into_the_organizer, 20, 41446047).
raw_performed(i_p76_a15, participant_sorts_pile_of_statements_into_the_organizer, 21, 41558054).
raw_performed(i_p76_a15, participant_sorts_pile_of_statements_into_the_organizer, 22, 41560064).
raw_performed(i_p76_a15, participant_sorts_pile_of_statements_into_the_organizer, 23, 41584003).
raw_performed(i_p76_a15, participant_sorts_pile_of_statements_into_the_organizer, 24, 41587020).
raw_performed(i_p76_a15, participant_sorts_pile_of_statements_into_the_organizer, 25, 41590041).
raw_performed(i_p76_a15, participant_sorts_pile_of_statements_into_the_organizer, 26, 41598047).

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

