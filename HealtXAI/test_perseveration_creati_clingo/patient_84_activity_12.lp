% ======================================================================
% Paziente 84
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

instance(i_p84_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p84_a13, participant_moves_to_the_hallway_closet, 1, 55871708).
raw_performed(i_p84_a13, participant_moves_to_the_hallway_closet, 2, 55872528).
raw_performed(i_p84_a13, participant_moves_to_the_hallway_closet, 3, 55873928).
raw_performed(i_p84_a13, participant_locates_the_laundry_basket, 4, 55879396).
raw_performed(i_p84_a13, participant_locates_the_laundry_basket, 5, 55887259).
raw_performed(i_p84_a13, participant_locates_the_laundry_basket, 6, 55890484).
raw_performed(i_p84_a13, participant_moves_to_the_couch, 7, 55891825).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 8, 55892468).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 9, 55894055).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 10, 55901855).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 11, 55905805).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 12, 55906373).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 13, 55910407).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 14, 55910719).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 15, 55916675).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 16, 55917023).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 17, 55919688).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 18, 55921081).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 19, 55925939).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 20, 55929666).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 21, 55930815).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 22, 55933439).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 23, 55936995).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 24, 55943138).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 25, 55944016).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 26, 55947135).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 27, 55948074).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 28, 55950160).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 29, 55952550).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 30, 55956824).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 31, 55965636).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 32, 55966395).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 33, 55968088).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 34, 55971278).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 35, 55978884).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 36, 55979846).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 37, 55982387).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 38, 55982559).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 39, 55986863).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 40, 55989503).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 41, 55992737).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 42, 55994938).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 43, 56003095).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 44, 56005367).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 45, 56007326).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 46, 56007508).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 47, 56011914).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 48, 56013266).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 49, 56016226).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 50, 56017884).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 51, 56022549).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 52, 56025415).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 53, 56037015).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 54, 56042988).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 55, 56046008).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 56, 56049714).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 57, 56054795).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 58, 56055614).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 59, 56062589).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 60, 56064487).
raw_performed(i_p84_a13, participant_sortsfolds_the_laundry, 61, 56076689).

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

