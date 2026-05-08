% ======================================================================
% Paziente 258
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

instance(i_p258_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p258_a13, participant_moves_to_the_hallway_closet, 1, 55689004).
raw_performed(i_p258_a13, participant_locates_the_laundry_basket, 2, 55699494).
raw_performed(i_p258_a13, participant_locates_the_laundry_basket, 3, 55704435).
raw_performed(i_p258_a13, participant_locates_the_laundry_basket, 4, 55706092).
raw_performed(i_p258_a13, participant_moves_to_the_couch, 5, 55709818).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 6, 55713539).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 7, 55727916).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 8, 55730716).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 9, 55736053).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 10, 55737084).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 11, 55740861).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 12, 55744310).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 13, 55751773).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 14, 55756060).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 15, 55759321).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 16, 55765002).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 17, 55770073).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 18, 55771152).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 19, 55774017).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 20, 55777310).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 21, 55793042).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 22, 55800000).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 23, 55802544).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 24, 55813133).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 25, 55819128).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 26, 55831173).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 27, 55834004).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 28, 55834049).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 29, 55850621).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 30, 55856038).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 31, 55880795).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 32, 55880946).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 33, 55888051).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 34, 55891684).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 35, 55895011).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 36, 55895091).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 37, 55898229).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 38, 55902009).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 39, 55918344).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 40, 55923026).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 41, 55927063).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 42, 55931174).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 43, 55933614).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 44, 55946028).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 45, 55951088).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 46, 55960353).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 47, 55963621).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 48, 55964538).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 49, 55969046).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 50, 55974040).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 51, 55978065).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 52, 55993663).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 53, 55995106).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 54, 55996491).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 55, 55999043).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 56, 56001245).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 57, 56003848).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 58, 56004028).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 59, 56006030).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 60, 56014636).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 61, 56021303).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 62, 56025390).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 63, 56026530).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 64, 56029730).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 65, 56038037).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 66, 56038523).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 67, 56041098).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 68, 56041866).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 69, 56057066).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 70, 56058055).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 71, 56066182).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 72, 56108242).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 73, 56111008).
raw_performed(i_p258_a13, participant_sortsfolds_the_laundry, 74, 56111682).

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

