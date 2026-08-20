% ======================================================================
% Paziente 169
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

part_of(participant_answers_the_phone, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_answers_questions_over_the_phone, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_sits_down_during_conversation, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_stands_in_one_place, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_walks_around_during_phone_call, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
part_of(participant_hangs_up_the_phone, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

expected_pos(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_the_phone, 1).
expected_pos(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_questions_over_the_phone, 2).
expected_pos(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_sits_down_during_conversation, 3).
expected_pos(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_stands_in_one_place, 4).
expected_pos(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_walks_around_during_phone_call, 5).
expected_pos(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, 6).

depends_on(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_questions_over_the_phone, participant_answers_the_phone).
depends_on(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, participant_answers_questions_over_the_phone).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p169_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).
performed(i_p169_a6, participant_sits_down_during_conversation, 1).
performed(i_p169_a6, participant_walks_around_during_phone_call, 2).
performed(i_p169_a6, participant_hangs_up_the_phone, 3).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.

