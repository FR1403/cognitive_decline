% ======================================================================
% Paziente 229
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

instance(i_p229_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p229_a13, participant_moves_to_the_hallway_closet, 1, 55893674).
raw_performed(i_p229_a13, participant_moves_to_the_hallway_closet, 2, 55893698).
raw_performed(i_p229_a13, participant_moves_to_the_hallway_closet, 3, 55897552).
raw_performed(i_p229_a13, participant_locates_the_laundry_basket, 4, 55904494).
raw_performed(i_p229_a13, participant_locates_the_laundry_basket, 5, 55914362).
raw_performed(i_p229_a13, participant_moves_to_the_couch, 6, 55915143).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 7, 55915167).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 8, 55918087).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 9, 55925683).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 10, 55931060).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 11, 55933310).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 12, 55945127).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 13, 55949978).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 14, 55956239).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 15, 55971697).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 16, 55977083).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 17, 55982073).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 18, 55985359).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 19, 56000383).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 20, 56005178).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 21, 56010104).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 22, 56010142).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 23, 56016346).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 24, 56020266).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 25, 56024715).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 26, 56032784).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 27, 56041156).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 28, 56042193).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 29, 56046583).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 30, 56058071).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 31, 56065603).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 32, 56068271).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 33, 56069953).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 34, 56075974).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 35, 56078137).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 36, 56084551).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 37, 56088422).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 38, 56099457).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 39, 56100478).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 40, 56112871).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 41, 56113509).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 42, 56120641).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 43, 56124561).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 44, 56129616).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 45, 56137080).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 46, 56139837).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 47, 56140480).
raw_performed(i_p229_a13, participant_sortsfolds_the_laundry, 48, 56152242).

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

