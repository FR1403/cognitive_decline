% ======================================================================
% Paziente 214
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



% ===============================
% Level B - Execution observation
% ===============================

instance(i_p214_a6, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

performed(i_p214_a6, participant_walks_around_during_phone_call, 1).
performed(i_p214_a6, participant_walks_around_during_phone_call, 2).
performed(i_p214_a6, participant_stands_in_one_place, 3).
performed(i_p214_a6, participant_stands_in_one_place, 4).
performed(i_p214_a6, participant_stands_in_one_place, 5).
performed(i_p214_a6, participant_walks_around_during_phone_call, 6).
performed(i_p214_a6, participant_walks_around_during_phone_call, 7).
performed(i_p214_a6, participant_walks_around_during_phone_call, 8).
performed(i_p214_a6, participant_walks_around_during_phone_call, 9).
performed(i_p214_a6, participant_stands_in_one_place, 10).
performed(i_p214_a6, participant_stands_in_one_place, 11).
performed(i_p214_a6, participant_stands_in_one_place, 12).
performed(i_p214_a6, participant_walks_around_during_phone_call, 13).
performed(i_p214_a6, participant_stands_in_one_place, 14).
performed(i_p214_a6, participant_stands_in_one_place, 15).
performed(i_p214_a6, participant_walks_around_during_phone_call, 16).
performed(i_p214_a6, participant_walks_around_during_phone_call, 17).
performed(i_p214_a6, participant_walks_around_during_phone_call, 18).
performed(i_p214_a6, participant_walks_around_during_phone_call, 19).
performed(i_p214_a6, participant_walks_around_during_phone_call, 20).
performed(i_p214_a6, participant_walks_around_during_phone_call, 21).
performed(i_p214_a6, participant_walks_around_during_phone_call, 22).
performed(i_p214_a6, participant_walks_around_during_phone_call, 23).
performed(i_p214_a6, participant_walks_around_during_phone_call, 24).
performed(i_p214_a6, participant_walks_around_during_phone_call, 25).
performed(i_p214_a6, participant_stands_in_one_place, 26).
performed(i_p214_a6, participant_stands_in_one_place, 27).
performed(i_p214_a6, participant_stands_in_one_place, 28).
performed(i_p214_a6, participant_stands_in_one_place, 29).
performed(i_p214_a6, participant_stands_in_one_place, 30).
performed(i_p214_a6, participant_stands_in_one_place, 31).
performed(i_p214_a6, participant_stands_in_one_place, 32).
performed(i_p214_a6, participant_stands_in_one_place, 33).
performed(i_p214_a6, participant_walks_around_during_phone_call, 34).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

