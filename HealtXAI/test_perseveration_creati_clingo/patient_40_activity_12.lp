% ======================================================================
% Paziente 40
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

instance(i_p40_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p40_a13, participant_moves_to_the_hallway_closet, 1, 55196029).
raw_performed(i_p40_a13, participant_locates_the_laundry_basket, 2, 55197033).
raw_performed(i_p40_a13, participant_locates_the_laundry_basket, 3, 55205025).
raw_performed(i_p40_a13, participant_locates_the_laundry_basket, 4, 55208024).
raw_performed(i_p40_a13, participant_moves_to_the_couch, 5, 55209066).
raw_performed(i_p40_a13, participant_moves_to_the_couch, 6, 55210090).
raw_performed(i_p40_a13, participant_moves_to_the_couch, 7, 55211051).
raw_performed(i_p40_a13, participant_moves_to_the_couch, 8, 55212036).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 9, 55213018).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 10, 55219023).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 11, 55224090).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 12, 55227085).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 13, 55229072).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 14, 55237005).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 15, 55239074).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 16, 55243073).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 17, 55246069).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 18, 55247003).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 19, 55255085).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 20, 55262098).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 21, 55275029).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 22, 55277097).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 23, 55298036).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 24, 55309084).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 25, 55314079).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 26, 55322009).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 27, 55330058).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 28, 55336000).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 29, 55341078).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 30, 55345035).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 31, 55359015).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 32, 55364099).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 33, 55367070).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 34, 55370099).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 35, 55381019).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 36, 55388074).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 37, 55390021).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 38, 55394003).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 39, 55398051).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 40, 55416094).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 41, 55419002).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 42, 55426000).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 43, 55430093).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 44, 55440029).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 45, 55440032).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 46, 55451000).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 47, 55452046).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 48, 55455065).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 49, 55461052).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 50, 55464020).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 51, 55478051).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 52, 55483059).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 53, 55486034).
raw_performed(i_p40_a13, participant_sortsfolds_the_laundry, 54, 55491058).

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

