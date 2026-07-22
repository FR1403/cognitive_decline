% ======================================================================
% Paziente 305
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

instance(i_p305_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p305_a6, participant_answers_the_phone, 1, 36493433).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 2, 36494147).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 3, 36495438).
raw_performed(i_p305_a6, participant_stands_in_one_place, 4, 36506891).
raw_performed(i_p305_a6, participant_stands_in_one_place, 5, 36525250).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 6, 36527037).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 7, 36527530).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 8, 36527985).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 9, 36530890).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 10, 36535029).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 11, 36535289).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 12, 36535497).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 13, 36536523).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 14, 36537587).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 15, 36538459).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 16, 36541523).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 17, 36570535).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 18, 36570779).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 19, 36613050).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 20, 36616633).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 21, 36616896).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 22, 36677946).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 23, 36717678).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 24, 36719370).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 25, 36719496).
raw_performed(i_p305_a6, participant_sits_down_during_conversation, 26, 36719526).
raw_performed(i_p305_a6, participant_walks_around_during_phone_call, 27, 36722617).
raw_performed(i_p305_a6, participant_hangs_up_the_phone, 28, 36722757).

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

