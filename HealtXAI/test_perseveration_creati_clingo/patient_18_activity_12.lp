% ======================================================================
% Paziente 18
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

instance(i_p18_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p18_a13, participant_moves_to_the_hallway_closet, 1, 54887289).
raw_performed(i_p18_a13, participant_moves_to_the_hallway_closet, 2, 54887654).
raw_performed(i_p18_a13, participant_locates_the_laundry_basket, 3, 54894608).
raw_performed(i_p18_a13, participant_locates_the_laundry_basket, 4, 54894989).
raw_performed(i_p18_a13, participant_moves_to_the_couch, 5, 54898042).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 6, 54898073).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 7, 54903199).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 8, 54916345).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 9, 54959338).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 10, 54980324).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 11, 54992213).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 12, 54992594).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 13, 54995044).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 14, 54998963).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 15, 55009070).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 16, 55025500).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 17, 55025516).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 18, 55025537).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 19, 55053408).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 20, 55061456).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 21, 55066595).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 22, 55066957).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 23, 55077662).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 24, 55088640).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 25, 55099372).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 26, 55104564).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 27, 55108772).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 28, 55109270).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 29, 55129725).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 30, 55131876).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 31, 55142348).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 32, 55149998).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 33, 55173969).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 34, 55174793).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 35, 55192666).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 36, 55193361).

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

