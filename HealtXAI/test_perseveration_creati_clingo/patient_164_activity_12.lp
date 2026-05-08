% ======================================================================
% Paziente 164
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

instance(i_p164_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p164_a13, participant_moves_to_the_hallway_closet, 1, 37596084).
raw_performed(i_p164_a13, participant_moves_to_the_hallway_closet, 2, 37598036).
raw_performed(i_p164_a13, participant_locates_the_laundry_basket, 3, 37598039).
raw_performed(i_p164_a13, participant_locates_the_laundry_basket, 4, 37599082).
raw_performed(i_p164_a13, participant_locates_the_laundry_basket, 5, 37608004).
raw_performed(i_p164_a13, participant_moves_to_the_couch, 6, 37610004).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 7, 37610004).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 8, 37610067).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 9, 37611093).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 10, 37624022).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 11, 37633061).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 12, 37649008).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 13, 37651058).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 14, 37655003).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 15, 37674001).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 16, 37674007).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 17, 37679096).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 18, 37699097).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 19, 37706088).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 20, 37710046).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 21, 37714021).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 22, 37718036).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 23, 37721092).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 24, 37726029).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 25, 37733034).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 26, 37742089).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 27, 37745040).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 28, 37750085).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 29, 37760041).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 30, 37768034).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 31, 37776010).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 32, 37776071).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 33, 37784038).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 34, 37785086).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 35, 37788018).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 36, 37788076).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 37, 37801057).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 38, 37807074).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 39, 37814041).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 40, 37815003).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 41, 37827090).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 42, 37836049).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 43, 37847050).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 44, 37853012).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 45, 37854008).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 46, 37859086).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 47, 37862099).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 48, 37868044).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 49, 37868046).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 50, 37874028).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 51, 37877093).

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

