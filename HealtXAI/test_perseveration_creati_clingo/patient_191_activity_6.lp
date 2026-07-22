% ======================================================================
% Paziente 191
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

instance(i_p191_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p191_a6, participant_answers_the_phone, 1, 37352775).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 2, 37353375).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 3, 37379227).
raw_performed(i_p191_a6, participant_stands_in_one_place, 4, 37395269).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 5, 37402212).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 6, 37403522).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 7, 37405192).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 8, 37407873).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 9, 37412173).
raw_performed(i_p191_a6, participant_stands_in_one_place, 10, 37423113).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 11, 37426444).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 12, 37427186).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 13, 37428872).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 14, 37430554).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 15, 37431201).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 16, 37433698).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 17, 37434592).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 18, 37436637).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 19, 37437002).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 20, 37438280).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 21, 37439033).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 22, 37441381).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 23, 37445601).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 24, 37449188).
raw_performed(i_p191_a6, participant_stands_in_one_place, 25, 37453353).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 26, 37459788).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 27, 37466824).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 28, 37468632).
raw_performed(i_p191_a6, participant_sits_down_during_conversation, 29, 37470526).
raw_performed(i_p191_a6, participant_sits_down_during_conversation, 30, 37489040).
raw_performed(i_p191_a6, participant_sits_down_during_conversation, 31, 37523489).
raw_performed(i_p191_a6, participant_sits_down_during_conversation, 32, 37538483).
raw_performed(i_p191_a6, participant_sits_down_during_conversation, 33, 37553062).
raw_performed(i_p191_a6, participant_sits_down_during_conversation, 34, 37622976).
raw_performed(i_p191_a6, participant_walks_around_during_phone_call, 35, 37624413).
raw_performed(i_p191_a6, participant_hangs_up_the_phone, 36, 37628352).

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

