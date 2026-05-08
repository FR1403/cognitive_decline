% ======================================================================
% Paziente 192
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

instance(i_p192_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p192_a13, participant_moves_to_the_hallway_closet, 1, 36837658).
raw_performed(i_p192_a13, participant_locates_the_laundry_basket, 2, 36839580).
raw_performed(i_p192_a13, participant_locates_the_laundry_basket, 3, 36845165).
raw_performed(i_p192_a13, participant_moves_to_the_couch, 4, 36846646).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 5, 36846904).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 6, 36848786).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 7, 36849263).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 8, 36851476).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 9, 36852149).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 10, 36855372).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 11, 36856528).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 12, 36860381).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 13, 36864892).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 14, 36865077).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 15, 36870765).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 16, 36872238).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 17, 36873659).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 18, 36876643).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 19, 36876964).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 20, 36877927).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 21, 36879250).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 22, 36888090).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 23, 36888913).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 24, 36893862).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 25, 36902650).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 26, 36904553).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 27, 36906563).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 28, 36909607).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 29, 36911827).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 30, 36914139).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 31, 36919743).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 32, 36920038).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 33, 36924193).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 34, 36930673).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 35, 36933183).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 36, 36943283).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 37, 36944288).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 38, 36946106).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 39, 36950443).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 40, 36952553).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 41, 36952824).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 42, 36954702).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 43, 36954951).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 44, 36957895).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 45, 36959071).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 46, 36961331).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 47, 36961609).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 48, 36965072).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 49, 36966998).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 50, 36967267).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 51, 36969783).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 52, 36970450).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 53, 36977476).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 54, 36978436).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 55, 36987826).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 56, 36998003).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 57, 37001240).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 58, 37001497).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 59, 37003511).
raw_performed(i_p192_a13, participant_sortsfolds_the_laundry, 60, 37008657).
raw_performed(i_p192_a13, participant_moves_to_the_hallway_closet, 61, 37010417).

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

