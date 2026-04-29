% ======================================================================
% Paziente 93
% Attività: Place a phone call to a recording and write down the recipe heard.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

action(participant_moves_to_the_dining_room_table).
action(participant_sits_at_dining_room_table).
action(participant_locates_the_phone_book).
action(participant_locates_the_phone_number_for_safeway_food_and_drugs).
action(participant_dials_the_number_and_listens_to_the_recording).
action(participant_records_the_recipe).
action(participant_hangs_up_the_phone).

action_type(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_moves_to_the_dining_room_table, 7).
action_type(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_sits_at_dining_room_table, 8).
action_type(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_book, 10).
action_type(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_number_for_safeway_food_and_drugs, 10).
action_type(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_dials_the_number_and_listens_to_the_recording, 5).
action_type(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_records_the_recipe, 5).
action_type(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_hangs_up_the_phone, 12).

expected_count(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_moves_to_the_dining_room_table, 1).
expected_count(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_sits_at_dining_room_table, 1).
expected_count(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_book, 1).
expected_count(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_number_for_safeway_food_and_drugs, 1).
expected_count(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_dials_the_number_and_listens_to_the_recording, 1).
expected_count(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_records_the_recipe, 1).
expected_count(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_hangs_up_the_phone, 1).

action_gap(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_moves_to_the_dining_room_table, 240000).
action_gap(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_sits_at_dining_room_table, 240000).
action_gap(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_book, 18000).
action_gap(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_number_for_safeway_food_and_drugs, 18000).
action_gap(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_dials_the_number_and_listens_to_the_recording, 240000).
action_gap(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_records_the_recipe, 240000).
action_gap(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_hangs_up_the_phone, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p93_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p93_a13, participant_moves_to_the_hallway_closet, 1, 39673000).
raw_performed(i_p93_a13, participant_locates_the_laundry_basket, 2, 39673410).
raw_performed(i_p93_a13, participant_locates_the_laundry_basket, 3, 39681078).
raw_performed(i_p93_a13, participant_locates_the_laundry_basket, 4, 39682006).
raw_performed(i_p93_a13, participant_moves_to_the_couch, 5, 39683015).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 6, 39697053).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 7, 39710004).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 8, 39721095).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 9, 39725007).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 10, 39740543).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 11, 39749526).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 12, 39757048).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 13, 39772054).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 14, 39774038).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 15, 39779881).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 16, 39781520).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 17, 39798011).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 18, 39803127).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 19, 39805691).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 20, 39809825).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 21, 39827167).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 22, 39874356).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 23, 39880611).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 24, 39884903).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 25, 39890054).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 26, 39893071).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 27, 39911044).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 28, 39915049).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 29, 39916670).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 30, 39917931).
raw_performed(i_p93_a13, participant_moves_to_the_hallway_closet, 31, 39964090).
raw_performed(i_p93_a13, participant_locates_the_laundry_basket, 32, 39965136).
raw_performed(i_p93_a13, participant_locates_the_laundry_basket, 33, 39967009).
raw_performed(i_p93_a13, participant_moves_to_the_couch, 34, 39968099).
raw_performed(i_p93_a13, participant_sortsfolds_the_laundry, 35, 39970042).

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

