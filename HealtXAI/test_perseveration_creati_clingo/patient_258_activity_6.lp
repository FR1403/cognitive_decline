% ======================================================================
% Paziente 258
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

instance(i_p258_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p258_a7, participant_retrieves_materials_from_cupboard_a, 1, 53696082).
raw_performed(i_p258_a7, participant_retrieves_materials_from_cupboard_a, 2, 53723759).
raw_performed(i_p258_a7, participant_retrieves_materials_from_cupboard_a, 3, 53734391).
raw_performed(i_p258_a7, participant_fills_measuring_cup_with_water, 4, 53774085).
raw_performed(i_p258_a7, participant_fills_measuring_cup_with_water, 5, 53776098).
raw_performed(i_p258_a7, participant_fills_measuring_cup_with_water, 6, 53777051).
raw_performed(i_p258_a7, participant_boils_water_in_microwave, 7, 53779060).
raw_performed(i_p258_a7, participant_fills_measuring_cup_with_water, 8, 53780028).
raw_performed(i_p258_a7, participant_boils_water_in_microwave, 9, 53784074).
raw_performed(i_p258_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 53810077).
raw_performed(i_p258_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 53811026).
raw_performed(i_p258_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 53813068).
raw_performed(i_p258_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 53814051).
raw_performed(i_p258_a7, participant_pours_glass_of_water, 14, 53825725).
raw_performed(i_p258_a7, participant_pours_glass_of_water, 15, 53828091).
raw_performed(i_p258_a7, participant_returns_pitcher_of_water, 16, 53830489).
raw_performed(i_p258_a7, participant_returns_pitcher_of_water, 17, 53834041).
raw_performed(i_p258_a7, participant_returns_pitcher_of_water, 18, 53834085).
raw_performed(i_p258_a7, participant_brings_all_items_to_dining_room_table, 19, 53838091).
raw_performed(i_p258_a7, participant_brings_all_items_to_dining_room_table, 20, 53844014).
raw_performed(i_p258_a7, participant_brings_all_items_to_dining_room_table, 21, 53844082).
raw_performed(i_p258_a7, participant_boils_water_in_microwave, 22, 53990061).
raw_performed(i_p258_a7, participant_boils_water_in_microwave, 23, 53994934).
raw_performed(i_p258_a7, participant_pours_water_into_cup_of_noodles, 24, 53995213).
raw_performed(i_p258_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 54017348).
raw_performed(i_p258_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 54034006).
raw_performed(i_p258_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 54035487).
raw_performed(i_p258_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 54038658).
raw_performed(i_p258_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 54043028).
raw_performed(i_p258_a7, participant_brings_all_items_to_dining_room_table, 30, 54043091).
raw_performed(i_p258_a7, participant_brings_all_items_to_dining_room_table, 31, 54045008).

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

