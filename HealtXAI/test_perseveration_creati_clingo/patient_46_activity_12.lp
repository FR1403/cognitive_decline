% ======================================================================
% Paziente 46
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

instance(i_p46_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p46_a13, participant_moves_to_the_hallway_closet, 1, 56413773).
raw_performed(i_p46_a13, participant_moves_to_the_hallway_closet, 2, 56414526).
raw_performed(i_p46_a13, participant_locates_the_laundry_basket, 3, 56415295).
raw_performed(i_p46_a13, participant_locates_the_laundry_basket, 4, 56423873).
raw_performed(i_p46_a13, participant_locates_the_laundry_basket, 5, 56425199).
raw_performed(i_p46_a13, participant_moves_to_the_couch, 6, 56427556).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 7, 56430052).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 8, 56432476).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 9, 56433489).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 10, 56437017).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 11, 56437215).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 12, 56440356).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 13, 56441950).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 14, 56449828).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 15, 56453861).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 16, 56460370).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 17, 56460752).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 18, 56464964).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 19, 56472081).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 20, 56473526).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 21, 56477136).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 22, 56477751).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 23, 56484160).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 24, 56484583).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 25, 56487417).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 26, 56492740).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 27, 56495056).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 28, 56501886).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 29, 56504431).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 30, 56506099).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 31, 56516247).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 32, 56520465).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 33, 56522012).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 34, 56523715).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 35, 56524510).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 36, 56528829).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 37, 56532121).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 38, 56536277).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 39, 56537503).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 40, 56538534).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 41, 56547565).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 42, 56549629).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 43, 56556720).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 44, 56557386).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 45, 56559390).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 46, 56563249).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 47, 56565842).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 48, 56567496).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 49, 56573501).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 50, 56573947).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 51, 56589182).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 52, 56590611).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 53, 56590783).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 54, 56593825).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 55, 56599718).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 56, 56601285).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 57, 56604704).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 58, 56606484).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 59, 56607537).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 60, 56609367).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 61, 56623583).
raw_performed(i_p46_a13, participant_sortsfolds_the_laundry, 62, 56633100).

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

