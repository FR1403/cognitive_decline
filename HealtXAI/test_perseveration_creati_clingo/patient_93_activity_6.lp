% ======================================================================
% Paziente 93
% Attività: Answer the phone and respond to questions pertaining to the video from task 4.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

action(participant_answers_the_phone).
action(participant_answers_questions_over_the_phone).
action(participant_sits_down_during_conversation).
action(participant_stands_in_one_place).
action(participant_walks_around_during_phone_call).
action(participant_hangs_up_the_phone).

action_type(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_the_phone, 11).
action_type(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_questions_over_the_phone, 11).
action_type(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_sits_down_during_conversation, 8).
action_type(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_stands_in_one_place, 7).
action_type(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_walks_around_during_phone_call, 7).
action_type(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, 12).

expected_count(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_the_phone, 1).
expected_count(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_questions_over_the_phone, 1).
expected_count(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_sits_down_during_conversation, 1).
expected_count(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_stands_in_one_place, 1).
expected_count(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_walks_around_during_phone_call, 1).
expected_count(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, 1).

action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_the_phone, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_questions_over_the_phone, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_sits_down_during_conversation, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_stands_in_one_place, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_walks_around_during_phone_call, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p93_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p93_a7, participant_retrieves_materials_from_cupboard_a, 1, 37648932).
raw_performed(i_p93_a7, participant_retrieves_materials_from_cupboard_a, 2, 37650633).
raw_performed(i_p93_a7, participant_retrieves_materials_from_cupboard_a, 3, 37655000).
raw_performed(i_p93_a7, participant_retrieves_materials_from_cupboard_a, 4, 37663081).
raw_performed(i_p93_a7, participant_retrieves_materials_from_cupboard_a, 5, 37665435).
raw_performed(i_p93_a7, participant_fills_measuring_cup_with_water, 6, 37691913).
raw_performed(i_p93_a7, participant_boils_water_in_microwave, 7, 37709435).
raw_performed(i_p93_a7, participant_boils_water_in_microwave, 8, 37716091).
raw_performed(i_p93_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 37726483).
raw_performed(i_p93_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 37731852).
raw_performed(i_p93_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 37734084).
raw_performed(i_p93_a7, participant_pours_glass_of_water, 12, 37743072).
raw_performed(i_p93_a7, participant_returns_pitcher_of_water, 13, 37744004).
raw_performed(i_p93_a7, participant_returns_pitcher_of_water, 14, 37749049).
raw_performed(i_p93_a7, participant_returns_pitcher_of_water, 15, 37751160).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 16, 37757036).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 17, 37762006).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 18, 37763252).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 19, 37763390).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 20, 37764070).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 21, 37774075).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 22, 37780028).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 23, 37782409).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 24, 37848098).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 25, 37848723).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 26, 37851834).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 27, 37853004).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 28, 37855139).
raw_performed(i_p93_a7, participant_boils_water_in_microwave, 29, 37903681).
raw_performed(i_p93_a7, participant_boils_water_in_microwave, 30, 37911019).
raw_performed(i_p93_a7, participant_pours_water_into_cup_of_noodles, 31, 37912765).
raw_performed(i_p93_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 37945536).
raw_performed(i_p93_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 37957383).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 34, 37971435).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 35, 37972653).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 36, 37973037).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 37, 37976096).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 38, 37978036).
raw_performed(i_p93_a7, participant_brings_all_items_to_dining_room_table, 39, 37978081).

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

