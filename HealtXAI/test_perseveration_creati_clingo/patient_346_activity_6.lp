% ======================================================================
% Paziente 346
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

instance(i_p346_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p346_a6, participant_answers_the_phone, 1, 52558088).
raw_performed(i_p346_a6, participant_stands_in_one_place, 2, 52565053).
raw_performed(i_p346_a6, participant_stands_in_one_place, 3, 52569072).
raw_performed(i_p346_a6, participant_stands_in_one_place, 4, 52572019).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 5, 52573008).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 6, 52573083).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 7, 52575045).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 8, 52591051).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 9, 52592015).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 10, 52603004).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 11, 52604091).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 12, 52609055).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 13, 52610016).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 14, 52679001).
raw_performed(i_p346_a6, participant_stands_in_one_place, 15, 52682026).
raw_performed(i_p346_a6, participant_stands_in_one_place, 16, 52699087).
raw_performed(i_p346_a6, participant_stands_in_one_place, 17, 52706000).
raw_performed(i_p346_a6, participant_stands_in_one_place, 18, 52708001).
raw_performed(i_p346_a6, participant_stands_in_one_place, 19, 52777061).
raw_performed(i_p346_a6, participant_stands_in_one_place, 20, 52778023).
raw_performed(i_p346_a6, participant_walks_around_during_phone_call, 21, 52779028).
raw_performed(i_p346_a6, participant_hangs_up_the_phone, 22, 52789055).

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

