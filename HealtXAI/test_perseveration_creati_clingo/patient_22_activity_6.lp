% ======================================================================
% Paziente 22
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
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_sits_down_during_conversation, 235952).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_stands_in_one_place, 211008).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_walks_around_during_phone_call, 255139).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, 3343).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p22_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p22_a6, participant_answers_the_phone, 1, 55722063).
raw_performed(i_p22_a6, participant_stands_in_one_place, 2, 55726091).
raw_performed(i_p22_a6, participant_stands_in_one_place, 3, 55734049).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 4, 55735002).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 5, 55736062).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 6, 55739007).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 7, 55748002).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 8, 55760044).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 9, 55775038).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 10, 55793044).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 11, 55799008).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 12, 55799082).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 13, 55804089).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 14, 55806044).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 15, 55811025).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 16, 55813064).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 17, 55814087).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 18, 55820089).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 19, 55824093).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 20, 55830029).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 21, 55836062).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 22, 55845049).
raw_performed(i_p22_a6, participant_sits_down_during_conversation, 23, 55847003).
raw_performed(i_p22_a6, participant_hangs_up_the_phone, 24, 55847083).

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

