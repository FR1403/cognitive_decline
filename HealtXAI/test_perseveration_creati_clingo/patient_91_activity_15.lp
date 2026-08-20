% ======================================================================
% Paziente 91
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

instance(i_p91_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p91_a15, participant_moves_to_the_living_room, 1, 58256006).
raw_performed(i_p91_a15, participant_gathers_statements_from_bookshelf, 2, 58280090).
raw_performed(i_p91_a15, participant_moves_to_the_dining_room_table, 3, 58286029).
raw_performed(i_p91_a15, participant_moves_to_the_dining_room_table, 4, 58288039).
raw_performed(i_p91_a15, participant_sits_down_at_the_dining_room_table, 5, 58290092).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 6, 58309009).
raw_performed(i_p91_a15, participant_moves_to_the_living_room, 7, 58313009).
raw_performed(i_p91_a15, participant_gathers_statements_from_bookshelf, 8, 58313072).
raw_performed(i_p91_a15, participant_moves_to_the_dining_room_table, 9, 58322034).
raw_performed(i_p91_a15, participant_moves_to_the_dining_room_table, 10, 58323038).
raw_performed(i_p91_a15, participant_moves_to_the_living_room, 11, 58330024).
raw_performed(i_p91_a15, participant_gathers_statements_from_bookshelf, 12, 58331035).
raw_performed(i_p91_a15, participant_moves_to_the_dining_room_table, 13, 58334001).
raw_performed(i_p91_a15, participant_moves_to_the_dining_room_table, 14, 58335007).
raw_performed(i_p91_a15, participant_sits_down_at_the_dining_room_table, 15, 58336056).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 16, 58345046).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 17, 58357015).
raw_performed(i_p91_a15, participant_moves_to_the_living_room, 18, 58362082).
raw_performed(i_p91_a15, participant_gathers_statements_from_bookshelf, 19, 58364073).
raw_performed(i_p91_a15, participant_moves_to_the_dining_room_table, 20, 58374015).
raw_performed(i_p91_a15, participant_sits_down_at_the_dining_room_table, 21, 58376068).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 22, 58389079).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 23, 58391045).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 24, 58396004).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 25, 58408090).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 26, 58414035).
raw_performed(i_p91_a15, participant_sorts_pile_of_statements_into_the_organizer, 27, 58434007).

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

