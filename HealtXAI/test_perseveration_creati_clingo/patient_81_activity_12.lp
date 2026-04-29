% ======================================================================
% Paziente 81
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

instance(i_p81_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p81_a13, participant_moves_to_the_hallway_closet, 1, 36952076).
raw_performed(i_p81_a13, participant_moves_to_the_hallway_closet, 2, 36953006).
raw_performed(i_p81_a13, participant_locates_the_laundry_basket, 3, 36954036).
raw_performed(i_p81_a13, participant_locates_the_laundry_basket, 4, 36959069).
raw_performed(i_p81_a13, participant_moves_to_the_couch, 5, 36961003).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 6, 36961003).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 7, 36961093).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 8, 36974011).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 9, 36975093).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 10, 36983074).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 11, 36997051).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 12, 37003088).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 13, 37008037).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 14, 37014063).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 15, 37017008).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 16, 37018096).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 17, 37024015).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 18, 37025006).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 19, 37031048).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 20, 37035026).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 21, 37038003).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 22, 37038066).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 23, 37051033).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 24, 37054023).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 25, 37061072).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 26, 37063021).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 27, 37066055).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 28, 37071047).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 29, 37077046).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 30, 37078076).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 31, 37079038).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 32, 37082077).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 33, 37086019).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 34, 37089017).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 35, 37102015).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 36, 37104068).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 37, 37109098).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 38, 37114032).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 39, 37118007).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 40, 37121013).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 41, 37123005).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 42, 37124006).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 43, 37129081).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 44, 37135096).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 45, 37140052).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 46, 37140079).
raw_performed(i_p81_a13, participant_sortsfolds_the_laundry, 47, 37158075).

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

