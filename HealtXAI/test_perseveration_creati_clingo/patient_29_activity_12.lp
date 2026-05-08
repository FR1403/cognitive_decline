% ======================================================================
% Paziente 29
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

instance(i_p29_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p29_a13, participant_moves_to_the_hallway_closet, 1, 36502616).
raw_performed(i_p29_a13, participant_moves_to_the_hallway_closet, 2, 36503034).
raw_performed(i_p29_a13, participant_moves_to_the_hallway_closet, 3, 36506278).
raw_performed(i_p29_a13, participant_locates_the_laundry_basket, 4, 36510421).
raw_performed(i_p29_a13, participant_locates_the_laundry_basket, 5, 36516584).
raw_performed(i_p29_a13, participant_locates_the_laundry_basket, 6, 36520613).
raw_performed(i_p29_a13, participant_moves_to_the_couch, 7, 36521047).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 8, 36522095).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 9, 36528208).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 10, 36529503).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 11, 36532436).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 12, 36536701).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 13, 36543727).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 14, 36581938).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 15, 36593001).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 16, 36596784).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 17, 36607116).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 18, 36616684).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 19, 36624235).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 20, 36636185).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 21, 36652062).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 22, 36669806).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 23, 36683903).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 24, 36694894).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 25, 36695325).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 26, 36706011).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 27, 36712090).
raw_performed(i_p29_a13, participant_sortsfolds_the_laundry, 28, 36716117).

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

