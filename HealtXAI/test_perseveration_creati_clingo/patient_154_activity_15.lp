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

instance(i_p154_a15, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p154_a15, participant_moves_to_the_living_room, 1, 39417905).
raw_performed(i_p154_a15, participant_gathers_statements_from_bookshelf, 2, 39549361).
raw_performed(i_p154_a15, participant_moves_to_the_dining_room_table, 3, 39566057).
raw_performed(i_p154_a15, participant_sits_down_at_the_dining_room_table, 4, 39572695).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 5, 39577437).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 6, 39590054).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 7, 39595025).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 8, 39623086).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 9, 39626056).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 10, 39642020).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 11, 39655002).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 12, 39660089).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 13, 39662906).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 14, 39665531).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 15, 39668098).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 16, 39670263).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 17, 39699015).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 18, 39701875).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 19, 39708946).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 20, 39719806).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 21, 39720114).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 22, 39743281).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 23, 39744003).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 24, 39749093).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 25, 39749463).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 26, 39751040).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 27, 39760026).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 28, 39762896).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 29, 39770060).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 30, 39773075).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 31, 39780499).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 32, 39782072).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 33, 39801600).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 34, 39801893).
raw_performed(i_p154_a15, participant_moves_to_the_living_room, 35, 39806003).
raw_performed(i_p154_a15, participant_gathers_statements_from_bookshelf, 36, 39807099).
raw_performed(i_p154_a15, participant_moves_to_the_dining_room_table, 37, 39831063).
raw_performed(i_p154_a15, participant_sits_down_at_the_dining_room_table, 38, 39837073).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 39, 39842037).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 40, 39852075).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 41, 39857041).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 42, 39860024).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 43, 39861929).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 44, 39872147).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 45, 39882007).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 46, 39883767).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 47, 39890040).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 48, 39893038).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 49, 39906075).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 50, 39913032).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 51, 39916003).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 52, 39924076).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 53, 39927921).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 54, 39940009).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 55, 39943918).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 56, 39946031).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 57, 39952627).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 58, 39958085).
raw_performed(i_p154_a15, participant_sorts_pile_of_statements_into_the_organizer, 59, 40046028).

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

