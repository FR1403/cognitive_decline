% ======================================================================
% Paziente 298
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

instance(i_p298_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p298_a13, participant_moves_to_the_hallway_closet, 1, 55145486).
raw_performed(i_p298_a13, participant_moves_to_the_hallway_closet, 2, 55147131).
raw_performed(i_p298_a13, participant_locates_the_laundry_basket, 3, 55149957).
raw_performed(i_p298_a13, participant_locates_the_laundry_basket, 4, 55162878).
raw_performed(i_p298_a13, participant_locates_the_laundry_basket, 5, 55167520).
raw_performed(i_p298_a13, participant_moves_to_the_couch, 6, 55173983).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 7, 55188697).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 8, 55203868).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 9, 55208714).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 10, 55233427).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 11, 55234554).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 12, 55244765).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 13, 55250562).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 14, 55272439).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 15, 55279951).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 16, 55285720).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 17, 55292441).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 18, 55299155).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 19, 55299984).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 20, 55302335).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 21, 55314878).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 22, 55321068).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 23, 55331665).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 24, 55334866).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 25, 55350054).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 26, 55352546).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 27, 55361522).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 28, 55364728).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 29, 55375922).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 30, 55379862).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 31, 55382155).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 32, 55402303).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 33, 55411073).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 34, 55431372).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 35, 55436883).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 36, 55446035).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 37, 55464772).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 38, 55487573).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 39, 55489855).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 40, 55490731).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 41, 55502235).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 42, 55504725).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 43, 55508161).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 44, 55512134).
raw_performed(i_p298_a13, participant_moves_to_the_hallway_closet, 45, 55516739).

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

