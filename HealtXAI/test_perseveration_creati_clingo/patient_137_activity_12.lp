% ======================================================================
% Paziente 137
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

instance(i_p137_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p137_a13, participant_moves_to_the_hallway_closet, 1, 53682005).
raw_performed(i_p137_a13, participant_moves_to_the_hallway_closet, 2, 53683001).
raw_performed(i_p137_a13, participant_locates_the_laundry_basket, 3, 53689001).
raw_performed(i_p137_a13, participant_locates_the_laundry_basket, 4, 53696006).
raw_performed(i_p137_a13, participant_moves_to_the_couch, 5, 53698005).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 6, 53698005).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 7, 53699018).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 8, 53700096).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 9, 53705000).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 10, 53728051).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 11, 53748027).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 12, 53753072).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 13, 53755002).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 14, 53776008).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 15, 53778009).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 16, 53783072).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 17, 53800067).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 18, 53817008).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 19, 53828086).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 20, 53829089).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 21, 53845050).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 22, 53852021).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 23, 53857016).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 24, 53860052).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 25, 53863070).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 26, 53865033).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 27, 53868086).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 28, 53869049).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 29, 53873030).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 30, 53885023).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 31, 53894020).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 32, 53904043).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 33, 53910008).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 34, 53923002).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 35, 53929005).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 36, 53933043).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 37, 53941000).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 38, 53960094).
raw_performed(i_p137_a13, participant_sortsfolds_the_laundry, 39, 53961058).

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

