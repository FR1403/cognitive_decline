% ======================================================================
% Paziente 251
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

instance(i_p251_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 1, 52906035).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 2, 52953038).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 3, 52960074).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 4, 52966001).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 5, 52969006).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 6, 52975043).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 7, 53083073).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 8, 53087042).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 9, 53217035).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 10, 53220097).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 11, 53228051).
raw_performed(i_p251_a7, participant_retrieves_materials_from_cupboard_a, 12, 53234084).
raw_performed(i_p251_a7, participant_brings_all_items_to_dining_room_table, 13, 53347084).
raw_performed(i_p251_a7, participant_brings_all_items_to_dining_room_table, 14, 53348053).
raw_performed(i_p251_a7, participant_brings_all_items_to_dining_room_table, 15, 53349019).
raw_performed(i_p251_a7, participant_brings_all_items_to_dining_room_table, 16, 53350066).
raw_performed(i_p251_a7, participant_brings_all_items_to_dining_room_table, 17, 53376067).
raw_performed(i_p251_a7, participant_brings_all_items_to_dining_room_table, 18, 53377028).
raw_performed(i_p251_a7, participant_brings_all_items_to_dining_room_table, 19, 53377090).
raw_performed(i_p251_a7, participant_brings_all_items_to_dining_room_table, 20, 53378091).

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

