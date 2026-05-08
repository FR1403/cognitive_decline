% ======================================================================
% Paziente 89
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

instance(i_p89_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p89_a13, participant_moves_to_the_hallway_closet, 1, 38453068).
raw_performed(i_p89_a13, participant_moves_to_the_hallway_closet, 2, 38454044).
raw_performed(i_p89_a13, participant_locates_the_laundry_basket, 3, 38455031).
raw_performed(i_p89_a13, participant_locates_the_laundry_basket, 4, 38461022).
raw_performed(i_p89_a13, participant_moves_to_the_couch, 5, 38463028).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 6, 38463031).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 7, 38465073).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 8, 38471059).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 9, 38481004).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 10, 38483002).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 11, 38492037).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 12, 38505081).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 13, 38509079).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 14, 38514059).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 15, 38521069).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 16, 38531007).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 17, 38534087).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 18, 38540000).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 19, 38545052).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 20, 38548082).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 21, 38556078).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 22, 38559049).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 23, 38560039).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 24, 38563011).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 25, 38569007).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 26, 38577037).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 27, 38587036).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 28, 38590047).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 29, 38600049).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 30, 38603020).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 31, 38606094).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 32, 38623037).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 33, 38642011).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 34, 38642074).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 35, 38648042).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 36, 38648045).
raw_performed(i_p89_a13, participant_sortsfolds_the_laundry, 37, 38650070).
raw_performed(i_p89_a13, participant_moves_to_the_hallway_closet, 38, 38651076).
raw_performed(i_p89_a13, participant_moves_to_the_hallway_closet, 39, 38652041).

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

