% ======================================================================
% Paziente 33
% Attivita: Answer the phone and respond to questions pertaining to the video from task 4.
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

action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_the_phone, 10).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_questions_over_the_phone, 10).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_sits_down_during_conversation, 256050).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_stands_in_one_place, 211149).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_walks_around_during_phone_call, 255139).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, 3342).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p33_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p33_a6, participant_answers_the_phone, 1, 37473330).
raw_performed(i_p33_a6, participant_stands_in_one_place, 2, 37477185).
raw_performed(i_p33_a6, participant_stands_in_one_place, 3, 37483691).
raw_performed(i_p33_a6, participant_stands_in_one_place, 4, 37517354).
raw_performed(i_p33_a6, participant_stands_in_one_place, 5, 37519334).
raw_performed(i_p33_a6, participant_stands_in_one_place, 6, 37524451).
raw_performed(i_p33_a6, participant_stands_in_one_place, 7, 37534778).
raw_performed(i_p33_a6, participant_stands_in_one_place, 8, 37541879).
raw_performed(i_p33_a6, participant_stands_in_one_place, 9, 37546456).
raw_performed(i_p33_a6, participant_stands_in_one_place, 10, 37557855).
raw_performed(i_p33_a6, participant_stands_in_one_place, 11, 37563094).
raw_performed(i_p33_a6, participant_stands_in_one_place, 12, 37573343).
raw_performed(i_p33_a6, participant_stands_in_one_place, 13, 37613160).
raw_performed(i_p33_a6, participant_stands_in_one_place, 14, 37632865).
raw_performed(i_p33_a6, participant_stands_in_one_place, 15, 37649900).
raw_performed(i_p33_a6, participant_stands_in_one_place, 16, 37656358).
raw_performed(i_p33_a6, participant_stands_in_one_place, 17, 37693228).
raw_performed(i_p33_a6, participant_stands_in_one_place, 18, 37697829).
raw_performed(i_p33_a6, participant_stands_in_one_place, 19, 37706022).
raw_performed(i_p33_a6, participant_stands_in_one_place, 20, 37712548).
raw_performed(i_p33_a6, participant_stands_in_one_place, 21, 37718001).
raw_performed(i_p33_a6, participant_stands_in_one_place, 22, 37726650).
raw_performed(i_p33_a6, participant_hangs_up_the_phone, 23, 37735427).

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

