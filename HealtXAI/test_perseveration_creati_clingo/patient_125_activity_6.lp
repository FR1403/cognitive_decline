% ======================================================================
% Paziente 125
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

instance(i_p125_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p125_a7, participant_retrieves_materials_from_cupboard_a, 1, 57389046).
raw_performed(i_p125_a7, participant_fills_measuring_cup_with_water, 2, 57414245).
raw_performed(i_p125_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 3, 57427706).
raw_performed(i_p125_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 4, 57428717).
raw_performed(i_p125_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 5, 57432040).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 6, 57473511).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 7, 57477358).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 8, 57481255).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 9, 57503416).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 10, 57505921).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 11, 57505945).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 12, 57513988).
raw_performed(i_p125_a7, participant_pours_glass_of_water, 13, 57513988).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 14, 57517101).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 15, 57517125).
raw_performed(i_p125_a7, participant_returns_pitcher_of_water, 16, 57520890).
raw_performed(i_p125_a7, participant_returns_pitcher_of_water, 17, 57525924).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 18, 57528327).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 19, 57536397).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 20, 57536421).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 21, 57536445).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 22, 57537015).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 23, 57543934).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 24, 57543982).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 25, 57549580).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 26, 57549652).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 27, 57550192).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 28, 57566547).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 29, 57566574).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 30, 57571147).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 31, 57586115).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 32, 57590271).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 33, 57597356).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 34, 57609158).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 35, 57621901).
raw_performed(i_p125_a7, participant_boils_water_in_microwave, 36, 57652705).
raw_performed(i_p125_a7, participant_pours_water_into_cup_of_noodles, 37, 57670698).
raw_performed(i_p125_a7, participant_brings_all_items_to_dining_room_table, 38, 57736843).

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

