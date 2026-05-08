% ======================================================================
% Paziente 293
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

instance(i_p293_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p293_a13, participant_moves_to_the_hallway_closet, 1, 38735872).
raw_performed(i_p293_a13, participant_locates_the_laundry_basket, 2, 38741090).
raw_performed(i_p293_a13, participant_locates_the_laundry_basket, 3, 38747612).
raw_performed(i_p293_a13, participant_moves_to_the_couch, 4, 38750241).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 5, 38751578).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 6, 38753508).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 7, 38758995).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 8, 38759452).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 9, 38765692).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 10, 38772027).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 11, 38778150).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 12, 38786076).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 13, 38789066).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 14, 38791328).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 15, 38796422).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 16, 38807649).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 17, 38815693).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 18, 38824975).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 19, 38825251).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 20, 38826948).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 21, 38828160).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 22, 38830871).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 23, 38833213).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 24, 38833311).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 25, 38836004).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 26, 38841427).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 27, 38844203).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 28, 38846359).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 29, 38846429).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 30, 38856386).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 31, 38858539).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 32, 38864075).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 33, 38865662).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 34, 38873722).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 35, 38874192).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 36, 38876808).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 37, 38882094).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 38, 38884322).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 39, 38886563).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 40, 38887028).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 41, 38888659).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 42, 38894297).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 43, 38896361).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 44, 38900044).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 45, 38902685).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 46, 38907734).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 47, 38910903).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 48, 38913862).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 49, 38921631).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 50, 38927055).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 51, 38931724).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 52, 38936250).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 53, 38940777).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 54, 38946045).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 55, 38947683).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 56, 38949245).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 57, 38951053).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 58, 38952736).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 59, 38957230).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 60, 38959485).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 61, 38967181).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 62, 38967996).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 63, 38970392).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 64, 38974193).
raw_performed(i_p293_a13, participant_sortsfolds_the_laundry, 65, 38975481).
raw_performed(i_p293_a13, participant_moves_to_the_hallway_closet, 66, 38977466).
raw_performed(i_p293_a13, participant_moves_to_the_hallway_closet, 67, 38978028).

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

