% ======================================================================
% Paziente 197
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

instance(i_p197_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p197_a13, participant_moves_to_the_hallway_closet, 1, 50959015).
raw_performed(i_p197_a13, participant_moves_to_the_hallway_closet, 2, 50960077).
raw_performed(i_p197_a13, participant_locates_the_laundry_basket, 3, 50960080).
raw_performed(i_p197_a13, participant_locates_the_laundry_basket, 4, 50969009).
raw_performed(i_p197_a13, participant_moves_to_the_couch, 5, 50970078).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 6, 50970078).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 7, 50972093).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 8, 50979075).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 9, 50987091).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 10, 51003031).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 11, 51015004).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 12, 51018075).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 13, 51022012).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 14, 51027053).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 15, 51033060).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 16, 51039033).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 17, 51046026).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 18, 51066070).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 19, 51073083).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 20, 51081075).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 21, 51131091).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 22, 51139080).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 23, 51162006).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 24, 51187075).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 25, 51192033).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 26, 51232031).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 27, 51238033).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 28, 51252097).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 29, 51256009).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 30, 51261079).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 31, 51261082).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 32, 51270034).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 33, 51270097).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 34, 51272085).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 35, 51281063).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 36, 51287088).
raw_performed(i_p197_a13, participant_sortsfolds_the_laundry, 37, 51303028).

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

