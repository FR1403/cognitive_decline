% ======================================================================
% Paziente 71
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

instance(i_p71_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p71_a6, participant_answers_the_phone, 1, 36741205).
raw_performed(i_p71_a6, participant_stands_in_one_place, 2, 36745788).
raw_performed(i_p71_a6, participant_stands_in_one_place, 3, 36751122).
raw_performed(i_p71_a6, participant_stands_in_one_place, 4, 36759158).
raw_performed(i_p71_a6, participant_stands_in_one_place, 5, 36762355).
raw_performed(i_p71_a6, participant_stands_in_one_place, 6, 36780110).
raw_performed(i_p71_a6, participant_stands_in_one_place, 7, 36782002).
raw_performed(i_p71_a6, participant_stands_in_one_place, 8, 36782470).
raw_performed(i_p71_a6, participant_stands_in_one_place, 9, 36791147).
raw_performed(i_p71_a6, participant_stands_in_one_place, 10, 36796896).
raw_performed(i_p71_a6, participant_stands_in_one_place, 11, 36806639).
raw_performed(i_p71_a6, participant_stands_in_one_place, 12, 36807006).
raw_performed(i_p71_a6, participant_stands_in_one_place, 13, 36814251).
raw_performed(i_p71_a6, participant_stands_in_one_place, 14, 36818040).
raw_performed(i_p71_a6, participant_stands_in_one_place, 15, 36819757).
raw_performed(i_p71_a6, participant_walks_around_during_phone_call, 16, 36822581).
raw_performed(i_p71_a6, participant_stands_in_one_place, 17, 36827133).
raw_performed(i_p71_a6, participant_stands_in_one_place, 18, 36827754).
raw_performed(i_p71_a6, participant_stands_in_one_place, 19, 36830604).
raw_performed(i_p71_a6, participant_walks_around_during_phone_call, 20, 36839010).
raw_performed(i_p71_a6, participant_walks_around_during_phone_call, 21, 36842897).
raw_performed(i_p71_a6, participant_stands_in_one_place, 22, 36848484).
raw_performed(i_p71_a6, participant_stands_in_one_place, 23, 36853524).
raw_performed(i_p71_a6, participant_stands_in_one_place, 24, 36854360).
raw_performed(i_p71_a6, participant_stands_in_one_place, 25, 36861865).
raw_performed(i_p71_a6, participant_stands_in_one_place, 26, 36863163).
raw_performed(i_p71_a6, participant_walks_around_during_phone_call, 27, 36865876).
raw_performed(i_p71_a6, participant_walks_around_during_phone_call, 28, 36887675).
raw_performed(i_p71_a6, participant_walks_around_during_phone_call, 29, 36891474).
raw_performed(i_p71_a6, participant_stands_in_one_place, 30, 36909913).
raw_performed(i_p71_a6, participant_walks_around_during_phone_call, 31, 36919825).
raw_performed(i_p71_a6, participant_hangs_up_the_phone, 32, 36920434).

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

