% ======================================================================
% Paziente 160
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

instance(i_p160_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p160_a6, participant_answers_the_phone, 1, 51424010).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 2, 51424012).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 3, 51426014).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 4, 51429074).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 5, 51434022).
raw_performed(i_p160_a6, participant_stands_in_one_place, 6, 51438016).
raw_performed(i_p160_a6, participant_stands_in_one_place, 7, 51446069).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 8, 51447099).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 9, 51448001).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 10, 51463044).
raw_performed(i_p160_a6, participant_stands_in_one_place, 11, 51470074).
raw_performed(i_p160_a6, participant_stands_in_one_place, 12, 51481033).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 13, 51485001).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 14, 51486095).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 15, 51529004).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 16, 51530008).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 17, 51533002).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 18, 51535097).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 19, 51537002).
raw_performed(i_p160_a6, participant_stands_in_one_place, 20, 51558070).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 21, 51562066).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 22, 51564077).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 23, 51568057).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 24, 51570006).
raw_performed(i_p160_a6, participant_stands_in_one_place, 25, 51656018).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 26, 51658050).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 27, 51667072).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 28, 51669019).
raw_performed(i_p160_a6, participant_walks_around_during_phone_call, 29, 51700093).
raw_performed(i_p160_a6, participant_hangs_up_the_phone, 30, 51724011).

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

