% ======================================================================
% Paziente 133
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

instance(i_p133_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p133_a13, participant_moves_to_the_hallway_closet, 1, 55446037).
raw_performed(i_p133_a13, participant_locates_the_laundry_basket, 2, 55446070).
raw_performed(i_p133_a13, participant_locates_the_laundry_basket, 3, 55451068).
raw_performed(i_p133_a13, participant_locates_the_laundry_basket, 4, 55453012).
raw_performed(i_p133_a13, participant_moves_to_the_couch, 5, 55453093).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 6, 55453093).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 7, 55454098).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 8, 55456016).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 9, 55467045).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 10, 55471096).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 11, 55473050).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 12, 55473073).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 13, 55483039).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 14, 55486026).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 15, 55492008).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 16, 55501087).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 17, 55507061).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 18, 55512010).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 19, 55512033).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 20, 55522034).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 21, 55530095).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 22, 55532058).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 23, 55538059).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 24, 55544045).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 25, 55549008).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 26, 55560027).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 27, 55566071).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 28, 55568018).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 29, 55574002).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 30, 55582062).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 31, 55589085).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 32, 55595062).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 33, 55617035).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 34, 55628033).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 35, 55636070).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 36, 55641013).
raw_performed(i_p133_a13, participant_moves_to_the_hallway_closet, 37, 55644085).
raw_performed(i_p133_a13, participant_moves_to_the_couch, 38, 55651068).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 39, 55652067).
raw_performed(i_p133_a13, participant_sortsfolds_the_laundry, 40, 55654053).

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

