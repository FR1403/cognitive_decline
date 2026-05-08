% ======================================================================
% Paziente 215
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

instance(i_p215_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p215_a7, participant_retrieves_materials_from_cupboard_a, 1, 50484616).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 2, 50704644).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 3, 50704807).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 4, 50750176).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 5, 50752012).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 6, 50754635).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 7, 50756701).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 8, 50758209).
raw_performed(i_p215_a7, participant_retrieves_materials_from_cupboard_a, 9, 50874954).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 50887685).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 50888798).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 50891676).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 50891864).
raw_performed(i_p215_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 50891955).
raw_performed(i_p215_a7, participant_pours_glass_of_water, 15, 50900774).
raw_performed(i_p215_a7, participant_pours_glass_of_water, 16, 50910816).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 17, 50914496).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 18, 50915445).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 19, 50918302).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 20, 50918333).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 21, 50924554).
raw_performed(i_p215_a7, participant_returns_pitcher_of_water, 22, 50926476).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 23, 50993607).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 24, 50994608).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 25, 50998348).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 26, 51010329).
raw_performed(i_p215_a7, participant_boils_water_in_microwave, 27, 51015754).
raw_performed(i_p215_a7, participant_pours_water_into_cup_of_noodles, 28, 51022918).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 29, 51037625).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 30, 51038206).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 31, 51041377).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 32, 51068967).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 33, 51069533).
raw_performed(i_p215_a7, participant_brings_all_items_to_dining_room_table, 34, 51073057).

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

