% ======================================================================
% Paziente 111
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

instance(i_p111_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p111_a6, participant_answers_the_phone, 1, 36186070).
raw_performed(i_p111_a6, participant_stands_in_one_place, 2, 36204040).
raw_performed(i_p111_a6, participant_stands_in_one_place, 3, 36224096).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 4, 36233184).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 5, 36236305).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 6, 36241264).
raw_performed(i_p111_a6, participant_stands_in_one_place, 7, 36242951).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 8, 36259534).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 9, 36272560).
raw_performed(i_p111_a6, participant_stands_in_one_place, 10, 36285300).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 11, 36296306).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 12, 36297995).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 13, 36300933).
raw_performed(i_p111_a6, participant_stands_in_one_place, 14, 36302841).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 15, 36303225).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 16, 36306184).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 17, 36309499).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 18, 36333011).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 19, 36335267).
raw_performed(i_p111_a6, participant_walks_around_during_phone_call, 20, 36349812).
raw_performed(i_p111_a6, participant_hangs_up_the_phone, 21, 36353823).

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

