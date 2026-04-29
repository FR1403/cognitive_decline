% ======================================================================
% Paziente 255
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

instance(i_p255_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p255_a13, participant_moves_to_the_hallway_closet, 1, 55519310).
raw_performed(i_p255_a13, participant_locates_the_laundry_basket, 2, 55522583).
raw_performed(i_p255_a13, participant_locates_the_laundry_basket, 3, 55524640).
raw_performed(i_p255_a13, participant_locates_the_laundry_basket, 4, 55526607).
raw_performed(i_p255_a13, participant_locates_the_laundry_basket, 5, 55528238).
raw_performed(i_p255_a13, participant_moves_to_the_couch, 6, 55531206).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 7, 55532595).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 8, 55533650).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 9, 55537255).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 10, 55551519).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 11, 55554755).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 12, 55556570).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 13, 55560737).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 14, 55561651).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 15, 55565936).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 16, 55572329).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 17, 55573781).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 18, 55575660).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 19, 55576034).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 20, 55579400).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 21, 55580520).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 22, 55587627).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 23, 55589693).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 24, 55590228).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 25, 55597475).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 26, 55617861).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 27, 55622955).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 28, 55627606).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 29, 55633076).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 30, 55638058).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 31, 55653512).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 32, 55659131).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 33, 55661753).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 34, 55665326).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 35, 55667555).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 36, 55670010).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 37, 55677708).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 38, 55693982).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 39, 55723064).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 40, 55727756).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 41, 55734575).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 42, 55739298).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 43, 55742924).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 44, 55744628).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 45, 55746640).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 46, 55751578).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 47, 55756826).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 48, 55770897).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 49, 55800987).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 50, 55804066).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 51, 55806822).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 52, 55808006).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 53, 55818857).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 54, 55822252).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 55, 55824060).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 56, 55828055).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 57, 55831968).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 58, 55835555).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 59, 55838186).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 60, 55838865).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 61, 55844755).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 62, 55848651).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 63, 55855036).
raw_performed(i_p255_a13, participant_sortsfolds_the_laundry, 64, 55856846).

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

