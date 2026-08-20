% ======================================================================
% Paziente 200
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
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_sits_down_during_conversation, 200981).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_stands_in_one_place, 191094).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_walks_around_during_phone_call, 191354).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, 3301).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p200_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p200_a6, participant_stands_in_one_place, 1, 52131038).
raw_performed(i_p200_a6, participant_stands_in_one_place, 2, 52135009).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 3, 52143031).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 4, 52146083).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 5, 52147066).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 6, 52149013).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 7, 52169084).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 8, 52174004).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 9, 52184047).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 10, 52187056).
raw_performed(i_p200_a6, participant_sits_down_during_conversation, 11, 52211016).
raw_performed(i_p200_a6, participant_sits_down_during_conversation, 12, 52221019).
raw_performed(i_p200_a6, participant_sits_down_during_conversation, 13, 52225042).
raw_performed(i_p200_a6, participant_sits_down_during_conversation, 14, 52233082).
raw_performed(i_p200_a6, participant_sits_down_during_conversation, 15, 52237077).
raw_performed(i_p200_a6, participant_sits_down_during_conversation, 16, 52251022).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 17, 52266004).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 18, 52304059).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 19, 52305020).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 20, 52308020).
raw_performed(i_p200_a6, participant_walks_around_during_phone_call, 21, 52309002).

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

