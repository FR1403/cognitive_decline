% ======================================================================
% Paziente 324
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

instance(i_p324_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p324_a7, participant_retrieves_materials_from_cupboard_a, 1, 36503009).
raw_performed(i_p324_a7, participant_retrieves_materials_from_cupboard_a, 2, 36516972).
raw_performed(i_p324_a7, participant_retrieves_materials_from_cupboard_a, 3, 36520505).
raw_performed(i_p324_a7, participant_retrieves_materials_from_cupboard_a, 4, 36562090).
raw_performed(i_p324_a7, participant_retrieves_materials_from_cupboard_a, 5, 36574492).
raw_performed(i_p324_a7, participant_fills_measuring_cup_with_water, 6, 36673187).
raw_performed(i_p324_a7, participant_fills_measuring_cup_with_water, 7, 36676974).
raw_performed(i_p324_a7, participant_fills_measuring_cup_with_water, 8, 36680785).
raw_performed(i_p324_a7, participant_fills_measuring_cup_with_water, 9, 36692233).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 10, 36694018).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 11, 36698079).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 12, 36707748).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 13, 36712024).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 14, 36812414).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 15, 36818743).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 16, 36897452).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 17, 36898510).
raw_performed(i_p324_a7, participant_pours_water_into_cup_of_noodles, 18, 36901240).
raw_performed(i_p324_a7, participant_fills_measuring_cup_with_water, 19, 36915905).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 20, 36920312).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 21, 36924453).
raw_performed(i_p324_a7, participant_boils_water_in_microwave, 22, 37049859).
raw_performed(i_p324_a7, participant_pours_water_into_cup_of_noodles, 23, 37057452).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 37069741).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 37089499).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 37105572).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 37152035).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 37178593).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 37206957).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 37218619).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 37243294).
raw_performed(i_p324_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 37270791).
raw_performed(i_p324_a7, participant_brings_all_items_to_dining_room_table, 33, 37275640).
raw_performed(i_p324_a7, participant_brings_all_items_to_dining_room_table, 34, 37276278).
raw_performed(i_p324_a7, participant_brings_all_items_to_dining_room_table, 35, 37281166).
raw_performed(i_p324_a7, participant_brings_all_items_to_dining_room_table, 36, 37281262).
raw_performed(i_p324_a7, participant_brings_all_items_to_dining_room_table, 37, 37292749).
raw_performed(i_p324_a7, participant_brings_all_items_to_dining_room_table, 38, 37295663).
raw_performed(i_p324_a7, participant_brings_all_items_to_dining_room_table, 39, 37295690).

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

