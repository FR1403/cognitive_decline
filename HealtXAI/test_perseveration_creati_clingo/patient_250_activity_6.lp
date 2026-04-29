% ======================================================================
% Paziente 250
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

instance(i_p250_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 1, 37321017).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 2, 37327060).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 3, 37330073).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 4, 37336051).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 5, 37352071).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 6, 37397095).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 7, 37401069).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 8, 37447039).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 9, 37454087).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 10, 37461023).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 11, 37601068).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 12, 37602030).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 13, 37602095).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 14, 37607010).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 15, 37607013).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 16, 37638091).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 17, 37639054).
raw_performed(i_p250_a7, participant_retrieves_materials_from_cupboard_a, 18, 37641041).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 19, 37786072).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 20, 37787035).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 21, 37787097).
raw_performed(i_p250_a7, participant_brings_all_items_to_dining_room_table, 22, 37789086).

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

