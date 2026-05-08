% ======================================================================
% Paziente 211
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

instance(i_p211_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 1, 35571635).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 2, 35572669).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 3, 35625866).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 4, 35630237).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 5, 35634395).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 6, 35642270).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 7, 35650393).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 8, 35658245).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 9, 35684956).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 10, 35685550).
raw_performed(i_p211_a7, participant_fills_measuring_cup_with_water, 11, 35688176).
raw_performed(i_p211_a7, participant_boils_water_in_microwave, 12, 35693695).
raw_performed(i_p211_a7, participant_boils_water_in_microwave, 13, 35700072).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 14, 35770161).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 15, 35780315).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 16, 35780340).
raw_performed(i_p211_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 17, 35795870).
raw_performed(i_p211_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 18, 35798908).
raw_performed(i_p211_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 19, 35799481).
raw_performed(i_p211_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 20, 35800442).
raw_performed(i_p211_a7, participant_pours_glass_of_water, 21, 35831397).
raw_performed(i_p211_a7, participant_returns_pitcher_of_water, 22, 35835140).
raw_performed(i_p211_a7, participant_returns_pitcher_of_water, 23, 35836170).
raw_performed(i_p211_a7, participant_returns_pitcher_of_water, 24, 35839051).
raw_performed(i_p211_a7, participant_boils_water_in_microwave, 25, 35840100).
raw_performed(i_p211_a7, participant_boils_water_in_microwave, 26, 35846345).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 27, 35870976).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 28, 35874896).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 29, 35874920).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 30, 35882175).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 31, 35885545).
raw_performed(i_p211_a7, participant_boils_water_in_microwave, 32, 35931747).
raw_performed(i_p211_a7, participant_boils_water_in_microwave, 33, 35937561).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 34, 35967342).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 35, 35970647).
raw_performed(i_p211_a7, participant_pours_water_into_cup_of_noodles, 36, 35974005).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 36032016).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 36035920).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 36047185).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 36049328).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 36066533).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 36067805).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 36077505).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 36092505).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45, 36104195).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46, 36114976).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47, 36122291).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48, 36131752).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 49, 36137158).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 50, 36137210).
raw_performed(i_p211_a7, participant_retrieves_materials_from_cupboard_a, 51, 36141270).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 52, 36147157).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 53, 36159771).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 54, 36171265).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 55, 36184619).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 56, 36189038).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 57, 36197585).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 58, 36208865).
raw_performed(i_p211_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 59, 36209508).
raw_performed(i_p211_a7, participant_brings_all_items_to_dining_room_table, 60, 36217402).
raw_performed(i_p211_a7, participant_brings_all_items_to_dining_room_table, 61, 36218043).
raw_performed(i_p211_a7, participant_brings_all_items_to_dining_room_table, 62, 36220355).
raw_performed(i_p211_a7, participant_brings_all_items_to_dining_room_table, 63, 36222296).

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

