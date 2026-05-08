% ======================================================================
% Paziente 26
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

instance(i_p26_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p26_a6, participant_answers_the_phone, 1, 50081297).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 2, 50081851).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 3, 50082355).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 4, 50088031).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 5, 50090052).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 6, 50090651).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 7, 50092657).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 8, 50093654).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 9, 50095120).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 10, 50098117).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 11, 50099926).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 12, 50104239).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 13, 50107705).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 14, 50108774).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 15, 50117340).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 16, 50117943).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 17, 50120332).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 18, 50124637).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 19, 50125011).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 20, 50126042).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 21, 50129257).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 22, 50132679).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 23, 50135102).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 24, 50140703).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 25, 50143683).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 26, 50147593).
raw_performed(i_p26_a6, participant_walks_around_during_phone_call, 27, 50148001).
raw_performed(i_p26_a6, participant_hangs_up_the_phone, 28, 50151409).

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

