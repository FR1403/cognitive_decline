% ======================================================================
% Paziente 108
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

instance(i_p108_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p108_a13, participant_moves_to_the_hallway_closet, 1, 37323663).
raw_performed(i_p108_a13, participant_moves_to_the_hallway_closet, 2, 37324191).
raw_performed(i_p108_a13, participant_locates_the_laundry_basket, 3, 37329146).
raw_performed(i_p108_a13, participant_locates_the_laundry_basket, 4, 37329916).
raw_performed(i_p108_a13, participant_moves_to_the_couch, 5, 37330910).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 6, 37330932).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 7, 37332337).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 8, 37340430).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 9, 37353437).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 10, 37364364).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 11, 37375395).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 12, 37393286).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 13, 37412799).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 14, 37418913).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 15, 37422861).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 16, 37447809).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 17, 37453474).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 18, 37468237).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 19, 37474943).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 20, 37486091).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 21, 37501351).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 22, 37502188).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 23, 37502805).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 24, 37511077).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 25, 37524867).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 26, 37529712).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 27, 37531062).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 28, 37532145).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 29, 37545879).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 30, 37556360).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 31, 37564034).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 32, 37575064).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 33, 37654265).

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

