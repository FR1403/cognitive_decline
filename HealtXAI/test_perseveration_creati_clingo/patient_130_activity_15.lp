% ======================================================================
% Paziente 130
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

instance(i_p130_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p130_a15, participant_moves_to_the_living_room, 1, 58873000).
raw_performed(i_p130_a15, participant_gathers_statements_from_bookshelf, 2, 58886011).
raw_performed(i_p130_a15, participant_gathers_statements_from_bookshelf, 3, 58898026).
raw_performed(i_p130_a15, participant_moves_to_the_dining_room_table, 4, 58901054).
raw_performed(i_p130_a15, participant_sits_down_at_the_dining_room_table, 5, 58903065).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 6, 58915007).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 7, 58921072).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 8, 58942070).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 9, 58955016).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 10, 58958006).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 11, 58968054).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 12, 58982068).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 13, 58986041).
raw_performed(i_p130_a15, participant_moves_to_the_living_room, 14, 58991078).
raw_performed(i_p130_a15, participant_gathers_statements_from_bookshelf, 15, 58994013).
raw_performed(i_p130_a15, participant_gathers_statements_from_bookshelf, 16, 59003000).
raw_performed(i_p130_a15, participant_moves_to_the_dining_room_table, 17, 59015030).
raw_performed(i_p130_a15, participant_sits_down_at_the_dining_room_table, 18, 59029053).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 19, 59037006).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 20, 59049071).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 21, 59055013).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 22, 59062017).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 23, 59075029).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 24, 59088024).
raw_performed(i_p130_a15, participant_sorts_pile_of_statements_into_the_organizer, 25, 59110064).

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

