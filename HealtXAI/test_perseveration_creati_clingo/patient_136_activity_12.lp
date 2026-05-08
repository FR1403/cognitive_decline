% ======================================================================
% Paziente 136
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

instance(i_p136_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p136_a13, participant_moves_to_the_hallway_closet, 1, 52483016).
raw_performed(i_p136_a13, participant_locates_the_laundry_basket, 2, 52483077).
raw_performed(i_p136_a13, participant_locates_the_laundry_basket, 3, 52486014).
raw_performed(i_p136_a13, participant_locates_the_laundry_basket, 4, 52493083).
raw_performed(i_p136_a13, participant_moves_to_the_couch, 5, 52497022).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 6, 52497022).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 7, 52508093).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 8, 52517028).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 9, 52521003).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 10, 52523002).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 11, 52533043).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 12, 52548001).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 13, 52557070).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 14, 52574010).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 15, 52576023).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 16, 52603075).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 17, 52608034).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 18, 52610023).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 19, 52622054).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 20, 52629062).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 21, 52654061).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 22, 52656092).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 23, 52663022).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 24, 52663025).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 25, 52690064).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 26, 52717042).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 27, 52719074).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 28, 52726076).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 29, 52734008).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 30, 52743008).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 31, 52750098).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 32, 52761044).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 33, 52766003).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 34, 52766006).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 35, 52778012).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 36, 52790021).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 37, 52811099).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 38, 52819050).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 39, 52825038).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 40, 52847005).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 41, 52850065).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 42, 52853035).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 43, 52856062).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 44, 52858053).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 45, 52875043).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 46, 52886088).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 47, 52893074).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 48, 52895080).
raw_performed(i_p136_a13, participant_sortsfolds_the_laundry, 49, 52896067).

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

