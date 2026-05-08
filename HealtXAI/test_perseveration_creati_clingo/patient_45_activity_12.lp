% ======================================================================
% Paziente 45
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

instance(i_p45_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p45_a13, participant_moves_to_the_hallway_closet, 1, 53891001).
raw_performed(i_p45_a13, participant_locates_the_laundry_basket, 2, 53907935).
raw_performed(i_p45_a13, participant_moves_to_the_couch, 3, 53911709).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 4, 53911722).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 5, 53915829).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 6, 53915842).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 7, 53917120).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 8, 53917544).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 9, 53923534).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 10, 53924377).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 11, 53924795).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 12, 53935499).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 13, 53935512).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 14, 53936165).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 15, 53937275).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 16, 53943429).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 17, 53960673).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 18, 53967974).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 19, 53973437).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 20, 53983955).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 21, 53991327).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 22, 53995907).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 23, 54002896).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 24, 54008595).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 25, 54010755).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 26, 54018345).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 27, 54028095).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 28, 54028745).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 29, 54033394).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 30, 54039469).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 31, 54048847).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 32, 54048881).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 33, 54055005).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 34, 54064030).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 35, 54080202).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 36, 54084931).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 37, 54092755).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 38, 54099826).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 39, 54114331).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 40, 54118147).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 41, 54123544).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 42, 54130359).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 43, 54133943).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 44, 54143724).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 45, 54147947).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 46, 54152673).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 47, 54156125).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 48, 54156143).
raw_performed(i_p45_a13, participant_sortsfolds_the_laundry, 49, 54156155).

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

