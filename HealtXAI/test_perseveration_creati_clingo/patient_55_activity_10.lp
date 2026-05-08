% ======================================================================
% Paziente 55
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

instance(i_p55_a11, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p55_a11, participant_wets_the_sponge, 1, 50327022).
raw_performed(i_p55_a11, participant_wets_the_sponge, 2, 50330860).
raw_performed(i_p55_a11, participant_washes_the_countertops, 3, 50335339).
raw_performed(i_p55_a11, participant_washes_the_countertops, 4, 50344309).
raw_performed(i_p55_a11, participant_washes_the_countertops, 5, 50354344).
raw_performed(i_p55_a11, participant_dries_the_countertops, 6, 50380260).
raw_performed(i_p55_a11, participant_dries_the_countertops, 7, 50391792).
raw_performed(i_p55_a11, participant_dries_the_countertops, 8, 50401582).
raw_performed(i_p55_a11, participant_rinses_out_the_sponge, 9, 50412611).
raw_performed(i_p55_a11, participant_rinses_out_the_sponge, 10, 50416396).
raw_performed(i_p55_a11, participant_rinses_out_the_sponge, 11, 50420204).
raw_performed(i_p55_a11, participant_dries_the_countertops, 12, 50600401).
raw_performed(i_p55_a11, participant_dries_the_countertops, 13, 50608348).
raw_performed(i_p55_a11, participant_dries_the_countertops, 14, 50612168).
raw_performed(i_p55_a11, participant_dries_the_countertops, 15, 50616094).
raw_performed(i_p55_a11, participant_dries_the_countertops, 16, 50641442).

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

