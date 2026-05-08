% ======================================================================
% Paziente 222
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

instance(i_p222_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p222_a13, participant_moves_to_the_hallway_closet, 1, 52445994).
raw_performed(i_p222_a13, participant_locates_the_laundry_basket, 2, 52446193).
raw_performed(i_p222_a13, participant_locates_the_laundry_basket, 3, 52452057).
raw_performed(i_p222_a13, participant_locates_the_laundry_basket, 4, 52452384).
raw_performed(i_p222_a13, participant_moves_to_the_couch, 5, 52453892).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 6, 52455894).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 7, 52466708).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 8, 52470768).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 9, 52470842).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 10, 52473282).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 11, 52477777).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 12, 52480399).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 13, 52481857).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 14, 52487152).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 15, 52488846).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 16, 52491087).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 17, 52493919).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 18, 52496899).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 19, 52499340).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 20, 52506460).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 21, 52506942).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 22, 52510012).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 23, 52512271).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 24, 52512540).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 25, 52517744).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 26, 52522192).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 27, 52522835).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 28, 52527268).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 29, 52531021).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 30, 52537014).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 31, 52539298).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 32, 52539736).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 33, 52543212).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 34, 52551828).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 35, 52555545).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 36, 52561389).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 37, 52566271).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 38, 52567287).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 39, 52569285).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 40, 52571129).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 41, 52571289).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 42, 52577882).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 43, 52578727).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 44, 52580505).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 45, 52582389).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 46, 52582829).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 47, 52595478).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 48, 52597392).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 49, 52600938).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 50, 52606013).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 51, 52616109).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 52, 52649342).
raw_performed(i_p222_a13, participant_sortsfolds_the_laundry, 53, 52651667).

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

