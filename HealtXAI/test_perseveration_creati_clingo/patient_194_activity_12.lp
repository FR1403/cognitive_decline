% ======================================================================
% Paziente 194
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

instance(i_p194_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p194_a13, participant_locates_the_laundry_basket, 1, 40035064).
raw_performed(i_p194_a13, participant_moves_to_the_hallway_closet, 2, 40035357).
raw_performed(i_p194_a13, participant_locates_the_laundry_basket, 3, 40044053).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 4, 40046043).
raw_performed(i_p194_a13, participant_moves_to_the_couch, 5, 40046076).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 6, 40048083).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 7, 40055207).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 8, 40057218).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 9, 40067058).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 10, 40068233).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 11, 40071032).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 12, 40081341).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 13, 40089126).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 14, 40093015).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 15, 40099296).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 16, 40101266).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 17, 40104877).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 18, 40129070).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 19, 40131228).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 20, 40133054).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 21, 40134084).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 22, 40136198).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 23, 40147027).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 24, 40156751).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 25, 40162696).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 26, 40165020).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 27, 40165469).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 28, 40168579).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 29, 40173710).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 30, 40173934).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 31, 40188805).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 32, 40189061).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 33, 40195001).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 34, 40201066).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 35, 40213425).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 36, 40215169).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 37, 40217009).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 38, 40219000).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 39, 40223544).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 40, 40244071).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 41, 40246502).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 42, 40248733).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 43, 40256481).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 44, 40271316).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 45, 40273001).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 46, 40287034).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 47, 40288075).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 48, 40288856).
raw_performed(i_p194_a13, participant_sortsfolds_the_laundry, 49, 40291087).
raw_performed(i_p194_a13, participant_moves_to_the_hallway_closet, 50, 40292376).

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

