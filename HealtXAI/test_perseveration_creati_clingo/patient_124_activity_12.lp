% ======================================================================
% Paziente 124
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

instance(i_p124_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p124_a13, participant_moves_to_the_hallway_closet, 1, 36811032).
raw_performed(i_p124_a13, participant_moves_to_the_hallway_closet, 2, 36812060).
raw_performed(i_p124_a13, participant_locates_the_laundry_basket, 3, 36812062).
raw_performed(i_p124_a13, participant_locates_the_laundry_basket, 4, 36817096).
raw_performed(i_p124_a13, participant_moves_to_the_couch, 5, 36818081).
raw_performed(i_p124_a13, participant_moves_to_the_couch, 6, 36819092).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 7, 36819097).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 8, 36821049).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 9, 36830007).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 10, 36831079).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 11, 36836080).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 12, 36843029).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 13, 36847066).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 14, 36849034).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 15, 36856054).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 16, 36864008).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 17, 36865053).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 18, 36870003).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 19, 36873062).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 20, 36875072).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 21, 36891031).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 22, 36899002).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 23, 36902080).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 24, 36906038).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 25, 36916079).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 26, 36917081).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 27, 36924069).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 28, 36938006).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 29, 36944019).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 30, 36944083).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 31, 36953080).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 32, 36956072).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 33, 36961070).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 34, 36963058).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 35, 36965041).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 36, 36970096).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 37, 36975057).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 38, 36979001).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 39, 36983088).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 40, 36984094).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 41, 36989003).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 42, 36991020).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 43, 36994073).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 44, 36999076).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 45, 37004007).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 46, 37005039).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 47, 37018089).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 48, 37023005).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 49, 37026079).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 50, 37032063).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 51, 37035034).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 52, 37035037).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 53, 37040007).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 54, 37045070).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 55, 37049006).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 56, 37054003).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 57, 37057020).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 58, 37061081).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 59, 37062089).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 60, 37065082).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 61, 37080001).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 62, 37088085).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 63, 37102057).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 64, 37121048).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 65, 37129083).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 66, 37133018).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 67, 37136034).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 68, 37139000).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 69, 37144084).
raw_performed(i_p124_a13, participant_sortsfolds_the_laundry, 70, 37152075).

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

