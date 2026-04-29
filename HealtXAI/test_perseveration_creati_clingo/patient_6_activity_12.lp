% ======================================================================
% Paziente 6
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

instance(i_p6_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p6_a13, participant_moves_to_the_hallway_closet, 1, 38382049).
raw_performed(i_p6_a13, participant_moves_to_the_hallway_closet, 2, 38384041).
raw_performed(i_p6_a13, participant_locates_the_laundry_basket, 3, 38384058).
raw_performed(i_p6_a13, participant_moves_to_the_couch, 4, 38393005).
raw_performed(i_p6_a13, participant_moves_to_the_couch, 5, 38393082).
raw_performed(i_p6_a13, participant_moves_to_the_couch, 6, 38394014).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 7, 38408072).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 8, 38425003).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 9, 38425036).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 10, 38436064).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 11, 38438027).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 12, 38443081).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 13, 38454004).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 14, 38458075).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 15, 38464005).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 16, 38466006).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 17, 38473035).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 18, 38478023).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 19, 38512087).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 20, 38520075).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 21, 38537094).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 22, 38538014).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 23, 38544009).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 24, 38562087).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 25, 38564061).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 26, 38579068).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 27, 38587099).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 28, 38607028).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 29, 38618060).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 30, 38631060).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 31, 38633016).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 32, 38643099).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 33, 38648097).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 34, 38654062).

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

