% ======================================================================
% Paziente 201
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

instance(i_p201_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p201_a6, participant_answers_the_phone, 1, 34385001).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 2, 34389017).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 3, 34391030).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 4, 34404081).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 5, 34406047).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 6, 34417033).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 7, 34418099).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 8, 34423076).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 9, 34430064).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 10, 34444032).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 11, 34450060).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 12, 34451024).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 13, 34453011).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 14, 34456069).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 15, 34461050).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 16, 34466069).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 17, 34468015).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 18, 34470069).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 19, 34473002).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 20, 34474049).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 21, 34481000).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 22, 34485009).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 23, 34487063).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 24, 34489072).
raw_performed(i_p201_a6, participant_walks_around_during_phone_call, 25, 34490050).
raw_performed(i_p201_a6, participant_hangs_up_the_phone, 26, 34494063).

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

