% ======================================================================
% Paziente 239
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

instance(i_p239_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p239_a13, participant_moves_to_the_hallway_closet, 1, 55745815).
raw_performed(i_p239_a13, participant_locates_the_laundry_basket, 2, 55746177).
raw_performed(i_p239_a13, participant_moves_to_the_couch, 3, 55753054).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 4, 55753094).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 5, 55756018).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 6, 55763266).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 7, 55772417).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 8, 55780024).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 9, 55781013).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 10, 55800433).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 11, 55803507).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 12, 55840041).
raw_performed(i_p239_a13, participant_moves_to_the_hallway_closet, 13, 55842741).
raw_performed(i_p239_a13, participant_locates_the_laundry_basket, 14, 55842979).
raw_performed(i_p239_a13, participant_moves_to_the_couch, 15, 55843023).
raw_performed(i_p239_a13, participant_moves_to_the_couch, 16, 55858275).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 17, 55858610).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 18, 55863097).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 19, 55869478).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 20, 55870354).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 21, 55907007).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 22, 55910021).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 23, 55914009).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 24, 55942000).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 25, 55957647).
raw_performed(i_p239_a13, participant_sortsfolds_the_laundry, 26, 55966081).
raw_performed(i_p239_a13, participant_moves_to_the_hallway_closet, 27, 55969092).
raw_performed(i_p239_a13, participant_moves_to_the_hallway_closet, 28, 55972570).
raw_performed(i_p239_a13, participant_moves_to_the_hallway_closet, 29, 55973108).
raw_performed(i_p239_a13, participant_moves_to_the_hallway_closet, 30, 55973360).
raw_performed(i_p239_a13, participant_moves_to_the_hallway_closet, 31, 55975034).

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

