% ======================================================================
% Paziente 98
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

instance(i_p98_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p98_a13, participant_moves_to_the_hallway_closet, 1, 52104982).
raw_performed(i_p98_a13, participant_locates_the_laundry_basket, 2, 52106189).
raw_performed(i_p98_a13, participant_locates_the_laundry_basket, 3, 52107502).
raw_performed(i_p98_a13, participant_locates_the_laundry_basket, 4, 52111012).
raw_performed(i_p98_a13, participant_moves_to_the_couch, 5, 52113623).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 6, 52115729).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 7, 52116469).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 8, 52118353).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 9, 52119862).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 10, 52122306).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 11, 52124730).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 12, 52130351).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 13, 52132049).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 14, 52133003).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 15, 52136910).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 16, 52142158).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 17, 52143859).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 18, 52148763).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 19, 52148798).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 20, 52156596).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 21, 52158296).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 22, 52162236).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 23, 52166100).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 24, 52167723).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 25, 52169359).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 26, 52171775).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 27, 52172893).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 28, 52178651).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 29, 52180447).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 30, 52180976).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 31, 52184520).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 32, 52185078).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 33, 52188090).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 34, 52188284).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 35, 52191099).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 36, 52191997).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 37, 52194840).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 38, 52197847).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 39, 52201475).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 40, 52203661).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 41, 52205368).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 42, 52210947).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 43, 52213227).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 44, 52216038).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 45, 52216087).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 46, 52218668).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 47, 52228588).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 48, 52229701).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 49, 52231413).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 50, 52232596).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 51, 52233466).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 52, 52234634).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 53, 52235546).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 54, 52244900).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 55, 52252782).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 56, 52253148).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 57, 52261469).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 58, 52261528).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 59, 52266088).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 60, 52267843).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 61, 52268909).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 62, 52272833).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 63, 52278260).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 64, 52280320).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 65, 52284275).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 66, 52286543).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 67, 52289152).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 68, 52290237).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 69, 52291621).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 70, 52293806).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 71, 52295024).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 72, 52304530).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 73, 52308315).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 74, 52309616).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 75, 52310153).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 76, 52327429).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 77, 52329605).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 78, 52332049).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 79, 52332191).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 80, 52332224).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 81, 52334131).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 82, 52341831).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 83, 52345327).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 84, 52346521).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 85, 52348408).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 86, 52349583).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 87, 52350043).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 88, 52351865).
raw_performed(i_p98_a13, participant_sortsfolds_the_laundry, 89, 52353417).

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

