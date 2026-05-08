% ======================================================================
% Paziente 153
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

instance(i_p153_a11, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p153_a11, participant_wets_the_sponge, 1, 39517975).
raw_performed(i_p153_a11, participant_washes_the_countertops, 2, 39525837).
raw_performed(i_p153_a11, participant_wets_the_sponge, 3, 39529288).
raw_performed(i_p153_a11, participant_washes_the_countertops, 4, 39557724).
raw_performed(i_p153_a11, participant_washes_the_countertops, 5, 39562320).
raw_performed(i_p153_a11, participant_washes_the_countertops, 6, 39569011).
raw_performed(i_p153_a11, participant_washes_the_countertops, 7, 39570464).
raw_performed(i_p153_a11, participant_washes_the_countertops, 8, 39577233).
raw_performed(i_p153_a11, participant_washes_the_countertops, 9, 39578278).
raw_performed(i_p153_a11, participant_washes_the_countertops, 10, 39581493).
raw_performed(i_p153_a11, participant_washes_the_countertops, 11, 39588153).
raw_performed(i_p153_a11, participant_washes_the_countertops, 12, 39592110).
raw_performed(i_p153_a11, participant_wets_the_sponge, 13, 39595325).
raw_performed(i_p153_a11, participant_washes_the_countertops, 14, 39600306).
raw_performed(i_p153_a11, participant_rinses_out_the_sponge, 15, 39626340).
raw_performed(i_p153_a11, participant_rinses_out_the_sponge, 16, 39626367).
raw_performed(i_p153_a11, participant_rinses_out_the_sponge, 17, 39630063).
raw_performed(i_p153_a11, participant_dries_the_countertops, 18, 39634743).
raw_performed(i_p153_a11, participant_dries_the_countertops, 19, 39649363).
raw_performed(i_p153_a11, participant_dries_the_countertops, 20, 39657288).
raw_performed(i_p153_a11, participant_dries_the_countertops, 21, 39658077).
raw_performed(i_p153_a11, participant_dries_the_countertops, 22, 39683248).
raw_performed(i_p153_a11, participant_dries_the_countertops, 23, 39690184).
raw_performed(i_p153_a11, participant_dries_the_countertops, 24, 39692914).
raw_performed(i_p153_a11, participant_dries_the_countertops, 25, 39698400).
raw_performed(i_p153_a11, participant_dries_the_countertops, 26, 39702287).
raw_performed(i_p153_a11, participant_dries_the_countertops, 27, 39712202).

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

