% ======================================================================
% Paziente 14
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

instance(i_p14_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p14_a13, participant_moves_to_the_hallway_closet, 1, 38520028).
raw_performed(i_p14_a13, participant_locates_the_laundry_basket, 2, 38521040).
raw_performed(i_p14_a13, participant_locates_the_laundry_basket, 3, 38526080).
raw_performed(i_p14_a13, participant_locates_the_laundry_basket, 4, 38528087).
raw_performed(i_p14_a13, participant_moves_to_the_couch, 5, 38530055).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 6, 38530055).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 7, 38531001).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 8, 38532071).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 9, 38544033).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 10, 38554083).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 11, 38560070).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 12, 38571045).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 13, 38578092).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 14, 38592033).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 15, 38602014).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 16, 38602077).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 17, 38607021).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 18, 38620057).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 19, 38629012).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 20, 38629015).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 21, 38651048).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 22, 38652006).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 23, 38658055).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 24, 38665023).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 25, 38668012).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 26, 38681020).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 27, 38686084).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 28, 38691094).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 29, 38693022).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 30, 38697084).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 31, 38703009).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 32, 38705077).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 33, 38710038).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 34, 38713051).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 35, 38719078).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 36, 38720042).
raw_performed(i_p14_a13, participant_locates_the_laundry_basket, 37, 38723004).
raw_performed(i_p14_a13, participant_moves_to_the_hallway_closet, 38, 38723039).
raw_performed(i_p14_a13, participant_moves_to_the_couch, 39, 38733008).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 40, 38733008).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 41, 38735034).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 42, 38739074).
raw_performed(i_p14_a13, participant_sortsfolds_the_laundry, 43, 38748029).

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

