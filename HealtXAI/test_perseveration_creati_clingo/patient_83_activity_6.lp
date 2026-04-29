% ======================================================================
% Paziente 83
% Attività: Answer the phone and respond to questions pertaining to the video from task 4.
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

action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_the_phone, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_answers_questions_over_the_phone, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_sits_down_during_conversation, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_stands_in_one_place, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_walks_around_during_phone_call, 240000).
action_gap(answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4, participant_hangs_up_the_phone, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p83_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p83_a7, participant_retrieves_materials_from_cupboard_a, 1, 35892475).
raw_performed(i_p83_a7, participant_fills_measuring_cup_with_water, 2, 35937162).
raw_performed(i_p83_a7, participant_fills_measuring_cup_with_water, 3, 35939617).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 4, 35944766).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 5, 35948550).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 6, 35976662).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 7, 35982207).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 8, 35984476).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 9, 36003522).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 10, 36012004).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 11, 36035010).
raw_performed(i_p83_a7, participant_retrieves_materials_from_cupboard_a, 12, 36051101).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 13, 36058253).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 14, 36060543).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 15, 36065546).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 16, 36066611).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 17, 36071212).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 18, 36076989).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 19, 36079390).
raw_performed(i_p83_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 20, 36079390).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 21, 36080372).
raw_performed(i_p83_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 22, 36080372).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 23, 36083608).
raw_performed(i_p83_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 24, 36083608).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 25, 36084438).
raw_performed(i_p83_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 26, 36084438).
raw_performed(i_p83_a7, participant_boils_water_in_microwave, 27, 36084818).
raw_performed(i_p83_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 28, 36084818).
raw_performed(i_p83_a7, participant_pours_glass_of_water, 29, 36097046).
raw_performed(i_p83_a7, participant_returns_pitcher_of_water, 30, 36110163).
raw_performed(i_p83_a7, participant_returns_pitcher_of_water, 31, 36110987).
raw_performed(i_p83_a7, participant_returns_pitcher_of_water, 32, 36114224).
raw_performed(i_p83_a7, participant_returns_pitcher_of_water, 33, 36114822).
raw_performed(i_p83_a7, participant_returns_pitcher_of_water, 34, 36115656).
raw_performed(i_p83_a7, participant_brings_all_items_to_dining_room_table, 35, 36461087).

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

