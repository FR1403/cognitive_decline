% ======================================================================
% Paziente 206
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

instance(i_p206_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p206_a13, participant_moves_to_the_hallway_closet, 1, 36074067).
raw_performed(i_p206_a13, participant_locates_the_laundry_basket, 2, 36075049).
raw_performed(i_p206_a13, participant_locates_the_laundry_basket, 3, 36076001).
raw_performed(i_p206_a13, participant_locates_the_laundry_basket, 4, 36097021).
raw_performed(i_p206_a13, participant_moves_to_the_couch, 5, 36098000).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 6, 36099006).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 7, 36109073).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 8, 36121024).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 9, 36122031).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 10, 36131076).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 11, 36135074).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 12, 36158078).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 13, 36178009).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 14, 36179003).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 15, 36182043).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 16, 36189096).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 17, 36190060).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 18, 36201048).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 19, 36202011).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 20, 36208015).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 21, 36211053).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 22, 36219048).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 23, 36228032).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 24, 36239008).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 25, 36239089).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 26, 36244069).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 27, 36253003).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 28, 36253066).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 29, 36255076).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 30, 36258008).
raw_performed(i_p206_a13, participant_sortsfolds_the_laundry, 31, 36259092).

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

