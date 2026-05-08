% ======================================================================
% Paziente 199
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

instance(i_p199_a13, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p199_a13, participant_moves_to_the_hallway_closet, 1, 53628844).
raw_performed(i_p199_a13, participant_locates_the_laundry_basket, 2, 53631321).
raw_performed(i_p199_a13, participant_locates_the_laundry_basket, 3, 53631479).
raw_performed(i_p199_a13, participant_locates_the_laundry_basket, 4, 53633074).
raw_performed(i_p199_a13, participant_moves_to_the_couch, 5, 53639388).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 6, 53640561).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 7, 53661280).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 8, 53668591).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 9, 53680227).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 10, 53681117).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 11, 53683949).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 12, 53684908).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 13, 53688293).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 14, 53689385).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 15, 53692587).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 16, 53692958).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 17, 53694457).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 18, 53696698).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 19, 53699037).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 20, 53699068).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 21, 53700522).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 22, 53701756).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 23, 53702180).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 24, 53713591).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 25, 53718090).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 26, 53720880).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 27, 53723160).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 28, 53724831).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 29, 53726126).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 30, 53728204).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 31, 53730069).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 32, 53734089).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 33, 53736717).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 34, 53752758).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 35, 53754462).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 36, 53761293).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 37, 53767460).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 38, 53768683).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 39, 53777698).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 40, 53779839).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 41, 53782580).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 42, 53787275).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 43, 53790065).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 44, 53792321).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 45, 53802050).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 46, 53806276).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 47, 53809386).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 48, 53811826).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 49, 53812550).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 50, 53813555).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 51, 53814242).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 52, 53816389).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 53, 53816425).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 54, 53817991).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 55, 53820647).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 56, 53824558).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 57, 53830750).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 58, 53839185).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 59, 53845248).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 60, 53852307).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 61, 53854069).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 62, 53857184).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 63, 53861111).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 64, 53864388).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 65, 53865824).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 66, 53868197).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 67, 53874436).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 68, 53877641).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 69, 53879307).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 70, 53881645).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 71, 53882132).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 72, 53885771).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 73, 53886645).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 74, 53888874).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 75, 53892795).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 76, 53898701).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 77, 53901860).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 78, 53904332).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 79, 53905549).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 80, 53907438).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 81, 53909311).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 82, 53910989).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 83, 53911572).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 84, 53915708).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 85, 53918690).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 86, 53920766).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 87, 53920796).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 88, 53926244).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 89, 53926280).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 90, 53935238).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 91, 53940117).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 92, 53943590).
raw_performed(i_p199_a13, participant_sortsfolds_the_laundry, 93, 53946608).
raw_performed(i_p199_a13, participant_moves_to_the_hallway_closet, 94, 53947894).

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

