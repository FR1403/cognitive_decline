% ======================================================================
% Paziente 140
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

instance(i_p140_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p140_a13, participant_moves_to_the_hallway_closet, 1, 56636955).
raw_performed(i_p140_a13, participant_moves_to_the_hallway_closet, 2, 56637513).
raw_performed(i_p140_a13, participant_locates_the_laundry_basket, 3, 56638241).
raw_performed(i_p140_a13, participant_locates_the_laundry_basket, 4, 56643825).
raw_performed(i_p140_a13, participant_locates_the_laundry_basket, 5, 56644202).
raw_performed(i_p140_a13, participant_locates_the_laundry_basket, 6, 56648592).
raw_performed(i_p140_a13, participant_locates_the_laundry_basket, 7, 56651570).
raw_performed(i_p140_a13, participant_moves_to_the_couch, 8, 56652962).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 9, 56653576).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 10, 56657481).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 11, 56687001).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 12, 56719789).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 13, 56719810).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 14, 56734981).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 15, 56752850).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 16, 56764090).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 17, 56777976).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 18, 56811949).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 19, 56837605).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 20, 56866821).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 21, 56886984).
raw_performed(i_p140_a13, participant_sortsfolds_the_laundry, 22, 56888282).

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

