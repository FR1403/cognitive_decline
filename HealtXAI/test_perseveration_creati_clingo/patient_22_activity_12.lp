% ======================================================================
% Paziente 22
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

instance(i_p22_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p22_a13, participant_moves_to_the_hallway_closet, 1, 58256030).
raw_performed(i_p22_a13, participant_locates_the_laundry_basket, 2, 58256049).
raw_performed(i_p22_a13, participant_locates_the_laundry_basket, 3, 58257009).
raw_performed(i_p22_a13, participant_locates_the_laundry_basket, 4, 58262021).
raw_performed(i_p22_a13, participant_moves_to_the_couch, 5, 58262097).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 6, 58263037).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 7, 58265042).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 8, 58277002).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 9, 58309059).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 10, 58315039).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 11, 58318004).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 12, 58318087).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 13, 58320005).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 14, 58325059).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 15, 58339061).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 16, 58356044).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 17, 58369001).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 18, 58387000).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 19, 58389025).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 20, 58394003).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 21, 58396061).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 22, 58410004).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 23, 58411006).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 24, 58423001).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 25, 58434000).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 26, 58444025).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 27, 58445086).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 28, 58447080).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 29, 58453025).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 30, 58465023).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 31, 58468033).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 32, 58469086).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 33, 58472092).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 34, 58478054).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 35, 58483047).
raw_performed(i_p22_a13, participant_sortsfolds_the_laundry, 36, 58483088).
raw_performed(i_p22_a13, participant_moves_to_the_hallway_closet, 37, 58490075).
raw_performed(i_p22_a13, participant_moves_to_the_hallway_closet, 38, 58491001).
raw_performed(i_p22_a13, participant_moves_to_the_hallway_closet, 39, 58497032).

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

