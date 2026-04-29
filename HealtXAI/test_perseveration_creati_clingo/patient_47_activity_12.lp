% ======================================================================
% Paziente 47
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

instance(i_p47_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p47_a13, participant_moves_to_the_hallway_closet, 1, 39958082).
raw_performed(i_p47_a13, participant_moves_to_the_hallway_closet, 2, 39959045).
raw_performed(i_p47_a13, participant_locates_the_laundry_basket, 3, 39961598).
raw_performed(i_p47_a13, participant_locates_the_laundry_basket, 4, 39970674).
raw_performed(i_p47_a13, participant_locates_the_laundry_basket, 5, 39973460).
raw_performed(i_p47_a13, participant_moves_to_the_couch, 6, 39975675).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 7, 39977605).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 8, 39984490).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 9, 40000487).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 10, 40003240).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 11, 40006636).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 12, 40010467).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 13, 40020801).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 14, 40026796).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 15, 40033794).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 16, 40043968).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 17, 40049660).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 18, 40051934).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 19, 40056903).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 20, 40058483).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 21, 40071832).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 22, 40075190).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 23, 40087919).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 24, 40087944).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 25, 40097988).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 26, 40098360).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 27, 40099822).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 28, 40106197).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 29, 40110824).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 30, 40120995).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 31, 40121373).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 32, 40126117).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 33, 40129018).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 34, 40132082).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 35, 40137911).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 36, 40153163).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 37, 40156487).
raw_performed(i_p47_a13, participant_sortsfolds_the_laundry, 38, 40169098).

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

