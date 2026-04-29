% ======================================================================
% Paziente 106
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

instance(i_p106_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p106_a7, participant_retrieves_materials_from_cupboard_a, 1, 49676871).
raw_performed(i_p106_a7, participant_retrieves_materials_from_cupboard_a, 2, 49684115).
raw_performed(i_p106_a7, participant_retrieves_materials_from_cupboard_a, 3, 49687520).
raw_performed(i_p106_a7, participant_fills_measuring_cup_with_water, 4, 49694737).
raw_performed(i_p106_a7, participant_fills_measuring_cup_with_water, 5, 49698605).
raw_performed(i_p106_a7, participant_boils_water_in_microwave, 6, 49702725).
raw_performed(i_p106_a7, participant_boils_water_in_microwave, 7, 49707475).
raw_performed(i_p106_a7, participant_boils_water_in_microwave, 8, 49707499).
raw_performed(i_p106_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 49714326).
raw_performed(i_p106_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 49715365).
raw_performed(i_p106_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 49722160).
raw_performed(i_p106_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 49723162).
raw_performed(i_p106_a7, participant_pours_glass_of_water, 13, 49732130).
raw_performed(i_p106_a7, participant_pours_glass_of_water, 14, 49746828).
raw_performed(i_p106_a7, participant_returns_pitcher_of_water, 15, 49750056).
raw_performed(i_p106_a7, participant_returns_pitcher_of_water, 16, 49753772).
raw_performed(i_p106_a7, participant_returns_pitcher_of_water, 17, 49754404).
raw_performed(i_p106_a7, participant_brings_all_items_to_dining_room_table, 18, 49832320).
raw_performed(i_p106_a7, participant_brings_all_items_to_dining_room_table, 19, 49832344).
raw_performed(i_p106_a7, participant_brings_all_items_to_dining_room_table, 20, 49834965).
raw_performed(i_p106_a7, participant_brings_all_items_to_dining_room_table, 21, 49834989).
raw_performed(i_p106_a7, participant_boils_water_in_microwave, 22, 49893793).
raw_performed(i_p106_a7, participant_boils_water_in_microwave, 23, 49897269).
raw_performed(i_p106_a7, participant_boils_water_in_microwave, 24, 49898306).
raw_performed(i_p106_a7, participant_pours_water_into_cup_of_noodles, 25, 49932468).
raw_performed(i_p106_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 50072147).
raw_performed(i_p106_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 50072766).
raw_performed(i_p106_a7, participant_brings_all_items_to_dining_room_table, 28, 50083902).
raw_performed(i_p106_a7, participant_brings_all_items_to_dining_room_table, 29, 50083926).
raw_performed(i_p106_a7, participant_brings_all_items_to_dining_room_table, 30, 50085315).

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

