% ======================================================================
% Paziente 375
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

instance(i_p375_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p375_a15, participant_moves_to_the_living_room, 1, 54042378).
raw_performed(i_p375_a15, participant_gathers_statements_from_bookshelf, 2, 54048586).
raw_performed(i_p375_a15, participant_moves_to_the_dining_room_table, 3, 54059158).
raw_performed(i_p375_a15, participant_sits_down_at_the_dining_room_table, 4, 54070891).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 5, 54084246).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 6, 54100208).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 7, 54105024).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 8, 54110129).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 9, 54112635).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 10, 54142042).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 11, 54147526).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 12, 54159021).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 13, 54167349).
raw_performed(i_p375_a15, participant_sorts_pile_of_statements_into_the_organizer, 14, 54174154).

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

