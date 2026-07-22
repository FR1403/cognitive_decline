% ======================================================================
% Paziente 163
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

instance(i_p163_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p163_a6, participant_answers_the_phone, 1, 53130022).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 2, 53131000).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 3, 53131006).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 4, 53206072).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 5, 53208060).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 6, 53209002).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 7, 53219074).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 8, 53223009).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 9, 53226004).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 10, 53226061).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 11, 53234095).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 12, 53237088).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 13, 53239057).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 14, 53240084).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 15, 53242069).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 16, 53247029).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 17, 53257015).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 18, 53258018).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 19, 53259068).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 20, 53263099).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 21, 53272035).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 22, 53273038).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 23, 53275071).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 24, 53277059).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 25, 53279061).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 26, 53282052).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 27, 53289023).
raw_performed(i_p163_a6, participant_walks_around_during_phone_call, 28, 53295079).
raw_performed(i_p163_a6, participant_hangs_up_the_phone, 29, 53305046).

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

