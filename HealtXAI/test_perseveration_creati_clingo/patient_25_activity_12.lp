% ======================================================================
% Paziente 25
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

instance(i_p25_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p25_a13, participant_moves_to_the_hallway_closet, 1, 56756389).
raw_performed(i_p25_a13, participant_moves_to_the_hallway_closet, 2, 56756562).
raw_performed(i_p25_a13, participant_locates_the_laundry_basket, 3, 56759043).
raw_performed(i_p25_a13, participant_locates_the_laundry_basket, 4, 56763682).
raw_performed(i_p25_a13, participant_locates_the_laundry_basket, 5, 56766154).
raw_performed(i_p25_a13, participant_locates_the_laundry_basket, 6, 56766395).
raw_performed(i_p25_a13, participant_locates_the_laundry_basket, 7, 56766815).
raw_performed(i_p25_a13, participant_moves_to_the_couch, 8, 56768418).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 9, 56774918).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 10, 56780895).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 11, 56782672).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 12, 56784565).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 13, 56792048).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 14, 56792887).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 15, 56799409).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 16, 56803772).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 17, 56805935).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 18, 56811150).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 19, 56812008).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 20, 56816078).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 21, 56819086).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 22, 56828074).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 23, 56829794).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 24, 56830200).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 25, 56834245).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 26, 56844532).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 27, 56848382).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 28, 56850061).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 29, 56879397).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 30, 56883357).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 31, 56887090).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 32, 56888431).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 33, 56892072).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 34, 56893292).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 35, 56897043).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 36, 56898668).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 37, 56900724).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 38, 56902527).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 39, 56905296).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 40, 56906973).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 41, 56918037).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 42, 56919925).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 43, 56936317).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 44, 56940834).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 45, 56941473).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 46, 56947029).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 47, 56948238).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 48, 56948691).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 49, 56952038).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 50, 56952174).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 51, 56958077).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 52, 56963167).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 53, 56963317).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 54, 56965758).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 55, 56968845).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 56, 56970624).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 57, 56975513).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 58, 56977431).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 59, 56977838).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 60, 56984877).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 61, 56985367).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 62, 56989895).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 63, 56992758).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 64, 56994509).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 65, 56994634).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 66, 56996317).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 67, 56998479).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 68, 57008913).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 69, 57013744).
raw_performed(i_p25_a13, participant_sortsfolds_the_laundry, 70, 57015159).
raw_performed(i_p25_a13, participant_moves_to_the_hallway_closet, 71, 57017614).

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

