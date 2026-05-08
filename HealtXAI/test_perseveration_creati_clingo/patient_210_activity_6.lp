% ======================================================================
% Paziente 210
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

instance(i_p210_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p210_a7, participant_retrieves_materials_from_cupboard_a, 1, 33143320).
raw_performed(i_p210_a7, participant_fills_measuring_cup_with_water, 2, 33146545).
raw_performed(i_p210_a7, participant_fills_measuring_cup_with_water, 3, 33146558).
raw_performed(i_p210_a7, participant_fills_measuring_cup_with_water, 4, 33150287).
raw_performed(i_p210_a7, participant_boils_water_in_microwave, 5, 33154408).
raw_performed(i_p210_a7, participant_boils_water_in_microwave, 6, 33156273).
raw_performed(i_p210_a7, participant_retrieves_materials_from_cupboard_a, 7, 33192227).
raw_performed(i_p210_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 33221499).
raw_performed(i_p210_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 33223781).
raw_performed(i_p210_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 33225639).
raw_performed(i_p210_a7, participant_pours_glass_of_water, 11, 33235417).
raw_performed(i_p210_a7, participant_returns_pitcher_of_water, 12, 33236611).
raw_performed(i_p210_a7, participant_returns_pitcher_of_water, 13, 33239126).
raw_performed(i_p210_a7, participant_returns_pitcher_of_water, 14, 33239763).
raw_performed(i_p210_a7, participant_returns_pitcher_of_water, 15, 33240424).
raw_performed(i_p210_a7, participant_boils_water_in_microwave, 16, 33335919).
raw_performed(i_p210_a7, participant_boils_water_in_microwave, 17, 33337759).
raw_performed(i_p210_a7, participant_pours_water_into_cup_of_noodles, 18, 33412739).
raw_performed(i_p210_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 33469976).
raw_performed(i_p210_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 33515036).
raw_performed(i_p210_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 33541764).
raw_performed(i_p210_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 33549556).
raw_performed(i_p210_a7, participant_brings_all_items_to_dining_room_table, 23, 33568060).
raw_performed(i_p210_a7, participant_brings_all_items_to_dining_room_table, 24, 33568073).
raw_performed(i_p210_a7, participant_brings_all_items_to_dining_room_table, 25, 33568478).
raw_performed(i_p210_a7, participant_brings_all_items_to_dining_room_table, 26, 33569738).
raw_performed(i_p210_a7, participant_brings_all_items_to_dining_room_table, 27, 33596360).
raw_performed(i_p210_a7, participant_brings_all_items_to_dining_room_table, 28, 33596373).
raw_performed(i_p210_a7, participant_brings_all_items_to_dining_room_table, 29, 33596768).
raw_performed(i_p210_a7, participant_brings_all_items_to_dining_room_table, 30, 33600242).

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

