% =================================================================================================
% Paziente 4
% Attività: Answer the phone and respond to questions pertaining to the video from task 4.
% =================================================================================================


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

part_of(participant_answers_the_phone, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_answers_questions_over_the_phone, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_sits_down_during_conversation, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_stands_in_one_place, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_walks_around_during_phone_call, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_hangs_up_the_phone, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).


performed(i1, participant_answers_the_phone).
performed(i1, participant_sits_down_during_conversation).
performed(i1, participant_walks_around_during_phone_call).
performed(i1, participant_hangs_up_the_phone).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
