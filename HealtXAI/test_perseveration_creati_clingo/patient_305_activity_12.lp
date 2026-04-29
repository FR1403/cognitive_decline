% ======================================================================
% Paziente 305
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

instance(i_p305_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p305_a13, participant_moves_to_the_hallway_closet, 1, 38470729).
raw_performed(i_p305_a13, participant_locates_the_laundry_basket, 2, 38472345).
raw_performed(i_p305_a13, participant_locates_the_laundry_basket, 3, 38473213).
raw_performed(i_p305_a13, participant_locates_the_laundry_basket, 4, 38475745).
raw_performed(i_p305_a13, participant_locates_the_laundry_basket, 5, 38476940).
raw_performed(i_p305_a13, participant_locates_the_laundry_basket, 6, 38478584).
raw_performed(i_p305_a13, participant_moves_to_the_couch, 7, 38480894).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 8, 38482005).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 9, 38489114).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 10, 38494520).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 11, 38498681).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 12, 38498902).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 13, 38502080).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 14, 38505699).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 15, 38511962).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 16, 38516663).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 17, 38518801).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 18, 38524197).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 19, 38525080).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 20, 38529782).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 21, 38532458).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 22, 38532776).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 23, 38535826).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 24, 38536892).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 25, 38538268).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 26, 38540223).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 27, 38542212).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 28, 38546518).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 29, 38546742).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 30, 38549421).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 31, 38552633).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 32, 38552876).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 33, 38555947).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 34, 38557005).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 35, 38557573).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 36, 38561292).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 37, 38562077).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 38, 38564502).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 39, 38565337).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 40, 38568401).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 41, 38569373).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 42, 38571441).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 43, 38573743).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 44, 38574223).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 45, 38581907).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 46, 38583247).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 47, 38585074).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 48, 38586817).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 49, 38588491).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 50, 38588594).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 51, 38590133).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 52, 38593137).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 53, 38596146).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 54, 38597495).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 55, 38599909).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 56, 38600322).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 57, 38601582).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 58, 38604759).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 59, 38606836).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 60, 38608893).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 61, 38609698).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 62, 38611576).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 63, 38611651).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 64, 38613473).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 65, 38615641).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 66, 38616499).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 67, 38617335).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 68, 38618311).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 69, 38621530).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 70, 38623937).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 71, 38625571).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 72, 38628219).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 73, 38632372).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 74, 38633388).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 75, 38633818).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 76, 38638384).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 77, 38638429).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 78, 38641867).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 79, 38642302).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 80, 38644371).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 81, 38644517).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 82, 38646197).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 83, 38647382).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 84, 38649640).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 85, 38649772).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 86, 38650069).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 87, 38651681).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 88, 38652571).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 89, 38656738).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 90, 38660617).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 91, 38661055).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 92, 38663642).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 93, 38664242).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 94, 38667018).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 95, 38667249).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 96, 38669126).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 97, 38670003).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 98, 38670138).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 99, 38672583).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 100, 38674928).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 101, 38676200).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 102, 38679610).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 103, 38682755).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 104, 38683763).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 105, 38686759).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 106, 38687633).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 107, 38692789).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 108, 38693253).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 109, 38698387).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 110, 38698870).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 111, 38702437).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 112, 38703810).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 113, 38705252).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 114, 38706059).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 115, 38709123).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 116, 38709957).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 117, 38711531).
raw_performed(i_p305_a13, participant_sortsfolds_the_laundry, 118, 38711613).

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

