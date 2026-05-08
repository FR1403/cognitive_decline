% ======================================================================
% Paziente 316
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

instance(i_p316_a14, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p316_a14, participant_moves_to_the_kitchen, 1, 57913903).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 2, 57925384).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 3, 57925937).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 4, 57934014).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 5, 57934038).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 6, 57941316).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 7, 57949029).
raw_performed(i_p316_a14, participant_fills_pot_with_water, 8, 57959774).
raw_performed(i_p316_a14, participant_fills_pot_with_water, 9, 57963678).
raw_performed(i_p316_a14, participant_fills_pot_with_water, 10, 57967537).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 11, 57997413).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 12, 57998042).
raw_performed(i_p316_a14, participant_turns_on_stove, 13, 58000056).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 14, 58000403).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 15, 58057001).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 16, 58062545).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 17, 58126136).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 18, 58126765).
raw_performed(i_p316_a14, participant_removes_materials_from_cupboard, 19, 58129002).
raw_performed(i_p316_a14, participant_turns_stove_off, 20, 58250113).
raw_performed(i_p316_a14, participant_throws_raisin_box_in_trashcan, 21, 58310837).

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

