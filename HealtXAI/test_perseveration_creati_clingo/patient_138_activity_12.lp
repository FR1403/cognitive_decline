% ======================================================================
% Paziente 138
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

instance(i_p138_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p138_a13, participant_moves_to_the_hallway_closet, 1, 38492005).
raw_performed(i_p138_a13, participant_locates_the_laundry_basket, 2, 38493885).
raw_performed(i_p138_a13, participant_locates_the_laundry_basket, 3, 38497097).
raw_performed(i_p138_a13, participant_locates_the_laundry_basket, 4, 38498270).
raw_performed(i_p138_a13, participant_moves_to_the_couch, 5, 38499071).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 6, 38499097).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 7, 38501037).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 8, 38503028).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 9, 38514041).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 10, 38517622).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 11, 38526632).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 12, 38529073).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 13, 38536028).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 14, 38539033).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 15, 38544829).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 16, 38553520).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 17, 38566008).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 18, 38574440).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 19, 38579333).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 20, 38586189).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 21, 38587192).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 22, 38597007).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 23, 38608000).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 24, 38610029).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 25, 38614379).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 26, 38626014).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 27, 38629023).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 28, 38633054).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 29, 38645273).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 30, 38656342).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 31, 38657772).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 32, 38666065).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 33, 38669074).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 34, 38673024).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 35, 38673058).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 36, 38683111).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 37, 38687952).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 38, 38694505).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 39, 38697390).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 40, 38698439).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 41, 38700451).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 42, 38705071).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 43, 38705860).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 44, 38707150).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 45, 38715563).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 46, 38724270).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 47, 38728015).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 48, 38733694).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 49, 38738083).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 50, 38756082).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 51, 38760044).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 52, 38768086).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 53, 38769016).
raw_performed(i_p138_a13, participant_moves_to_the_hallway_closet, 54, 38771902).
raw_performed(i_p138_a13, participant_locates_the_laundry_basket, 55, 38772053).
raw_performed(i_p138_a13, participant_locates_the_laundry_basket, 56, 38775093).
raw_performed(i_p138_a13, participant_locates_the_laundry_basket, 57, 38778386).
raw_performed(i_p138_a13, participant_moves_to_the_couch, 58, 38780041).
raw_performed(i_p138_a13, participant_sortsfolds_the_laundry, 59, 38780067).

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

