% ======================================================================
% Paziente 282
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

instance(i_p282_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p282_a7, participant_retrieves_materials_from_cupboard_a, 1, 53006913).
raw_performed(i_p282_a7, participant_retrieves_materials_from_cupboard_a, 2, 53014552).
raw_performed(i_p282_a7, participant_retrieves_materials_from_cupboard_a, 3, 53015113).
raw_performed(i_p282_a7, participant_fills_measuring_cup_with_water, 4, 53022969).
raw_performed(i_p282_a7, participant_fills_measuring_cup_with_water, 5, 53025978).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 6, 53030472).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 7, 53036747).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 8, 53043744).
raw_performed(i_p282_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 53043744).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 10, 53044185).
raw_performed(i_p282_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 53044185).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 12, 53045220).
raw_performed(i_p282_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 53045220).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 14, 53045531).
raw_performed(i_p282_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 15, 53045531).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 16, 53046819).
raw_performed(i_p282_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 17, 53046819).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 18, 53054545).
raw_performed(i_p282_a7, participant_pours_glass_of_water, 19, 53054545).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 20, 53064314).
raw_performed(i_p282_a7, participant_pours_glass_of_water, 21, 53064314).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 22, 53065727).
raw_performed(i_p282_a7, participant_returns_pitcher_of_water, 23, 53065727).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 24, 53068276).
raw_performed(i_p282_a7, participant_returns_pitcher_of_water, 25, 53068276).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 26, 53068947).
raw_performed(i_p282_a7, participant_returns_pitcher_of_water, 27, 53068947).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 28, 53076344).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 29, 53077984).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 30, 53079579).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 31, 53079880).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 32, 53084046).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 33, 53085527).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 34, 53085937).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 35, 53094541).
raw_performed(i_p282_a7, participant_boils_water_in_microwave, 36, 53209680).
raw_performed(i_p282_a7, participant_brings_all_items_to_dining_room_table, 37, 53221084).

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

