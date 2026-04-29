% ======================================================================
% Paziente 123
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

instance(i_p123_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p123_a13, participant_moves_to_the_hallway_closet, 1, 39092786).
raw_performed(i_p123_a13, participant_locates_the_laundry_basket, 2, 39093061).
raw_performed(i_p123_a13, participant_locates_the_laundry_basket, 3, 39095728).
raw_performed(i_p123_a13, participant_locates_the_laundry_basket, 4, 39100286).
raw_performed(i_p123_a13, participant_locates_the_laundry_basket, 5, 39102031).
raw_performed(i_p123_a13, participant_locates_the_laundry_basket, 6, 39102092).
raw_performed(i_p123_a13, participant_moves_to_the_couch, 7, 39105007).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 8, 39105007).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 9, 39106573).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 10, 39115063).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 11, 39120811).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 12, 39131067).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 13, 39138142).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 14, 39167952).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 15, 39171005).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 16, 39178004).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 17, 39185566).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 18, 39191000).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 19, 39192080).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 20, 39206632).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 21, 39218721).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 22, 39223071).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 23, 39223734).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 24, 39225264).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 25, 39228053).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 26, 39235043).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 27, 39237017).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 28, 39238009).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 29, 39242011).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 30, 39244076).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 31, 39246048).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 32, 39251039).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 33, 39264015).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 34, 39265023).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 35, 39269329).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 36, 39272876).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 37, 39286000).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 38, 39295039).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 39, 39296932).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 40, 39306012).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 41, 39317046).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 42, 39321078).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 43, 39344051).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 44, 39345153).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 45, 39354009).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 46, 39359956).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 47, 39365187).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 48, 39414156).
raw_performed(i_p123_a13, participant_sortsfolds_the_laundry, 49, 39417001).

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

