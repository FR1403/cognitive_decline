% ======================================================================
% Paziente 230
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

instance(i_p230_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p230_a13, participant_moves_to_the_hallway_closet, 1, 36775880).
raw_performed(i_p230_a13, participant_locates_the_laundry_basket, 2, 36778446).
raw_performed(i_p230_a13, participant_locates_the_laundry_basket, 3, 36784787).
raw_performed(i_p230_a13, participant_locates_the_laundry_basket, 4, 36785307).
raw_performed(i_p230_a13, participant_moves_to_the_couch, 5, 36787097).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 6, 36788039).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 7, 36788690).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 8, 36792501).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 9, 36795114).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 10, 36799059).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 11, 36800414).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 12, 36801310).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 13, 36804882).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 14, 36811737).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 15, 36812520).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 16, 36816502).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 17, 36828802).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 18, 36842561).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 19, 36848198).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 20, 36850793).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 21, 36851350).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 22, 36852826).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 23, 36855347).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 24, 36860682).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 25, 36862837).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 26, 36866942).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 27, 36869878).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 28, 36875735).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 29, 36879290).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 30, 36884734).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 31, 36888852).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 32, 36889401).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 33, 36896928).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 34, 36897639).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 35, 36899307).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 36, 36899733).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 37, 36902544).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 38, 36905059).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 39, 36910546).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 40, 36910780).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 41, 36912341).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 42, 36916599).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 43, 36918450).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 44, 36919003).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 45, 36929928).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 46, 36937646).
raw_performed(i_p230_a13, participant_sortsfolds_the_laundry, 47, 36957151).

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

