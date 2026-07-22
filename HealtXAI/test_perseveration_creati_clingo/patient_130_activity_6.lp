% ======================================================================
% Paziente 130
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

instance(i_p130_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p130_a6, participant_answers_the_phone, 1, 53570001).
raw_performed(i_p130_a6, participant_walks_around_during_phone_call, 2, 53570004).
raw_performed(i_p130_a6, participant_walks_around_during_phone_call, 3, 53579000).
raw_performed(i_p130_a6, participant_walks_around_during_phone_call, 4, 53583015).
raw_performed(i_p130_a6, participant_walks_around_during_phone_call, 5, 53586028).
raw_performed(i_p130_a6, participant_walks_around_during_phone_call, 6, 53586092).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 7, 53601002).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 8, 53608035).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 9, 53627010).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 10, 53640072).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 11, 53645028).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 12, 53660046).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 13, 53669081).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 14, 53674042).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 15, 53681092).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 16, 53689078).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 17, 53696000).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 18, 53704065).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 19, 53715050).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 20, 53732019).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 21, 53740051).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 22, 53747054).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 23, 53760044).
raw_performed(i_p130_a6, participant_sits_down_during_conversation, 24, 53778031).

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

