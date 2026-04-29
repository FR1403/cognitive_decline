% ======================================================================
% Paziente 269
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

instance(i_p269_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p269_a13, participant_moves_to_the_hallway_closet, 1, 53714098).
raw_performed(i_p269_a13, participant_locates_the_laundry_basket, 2, 53716002).
raw_performed(i_p269_a13, participant_locates_the_laundry_basket, 3, 53721079).
raw_performed(i_p269_a13, participant_moves_to_the_couch, 4, 53723026).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 5, 53723029).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 6, 53735099).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 7, 53741061).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 8, 53748068).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 9, 53761007).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 10, 53773081).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 11, 53778017).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 12, 53782001).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 13, 53782013).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 14, 53785061).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 15, 53790016).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 16, 53793001).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 17, 53801086).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 18, 53809017).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 19, 53816083).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 20, 53823037).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 21, 53825004).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 22, 53830064).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 23, 53833077).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 24, 53833080).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 25, 53837047).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 26, 53837050).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 27, 53842031).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 28, 53843080).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 29, 53848042).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 30, 53858009).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 31, 53864017).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 32, 53866002).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 33, 53872011).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 34, 53877018).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 35, 53877074).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 36, 53881050).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 37, 53884071).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 38, 53890098).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 39, 53891001).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 40, 53892066).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 41, 53896090).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 42, 53905069).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 43, 53909005).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 44, 53914043).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 45, 53918000).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 46, 53918006).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 47, 53922055).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 48, 53922057).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 49, 53925022).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 50, 53931030).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 51, 53939001).
raw_performed(i_p269_a13, participant_sortsfolds_the_laundry, 52, 53944084).
raw_performed(i_p269_a13, participant_moves_to_the_hallway_closet, 53, 53957027).
raw_performed(i_p269_a13, participant_moves_to_the_couch, 54, 53965036).

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

