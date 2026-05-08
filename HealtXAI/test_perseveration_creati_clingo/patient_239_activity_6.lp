% ======================================================================
% Paziente 239
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

instance(i_p239_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p239_a7, participant_retrieves_materials_from_cupboard_a, 1, 53323055).
raw_performed(i_p239_a7, participant_retrieves_materials_from_cupboard_a, 2, 53323551).
raw_performed(i_p239_a7, participant_retrieves_materials_from_cupboard_a, 3, 53358613).
raw_performed(i_p239_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 4, 53362006).
raw_performed(i_p239_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 5, 53368071).
raw_performed(i_p239_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 6, 53371045).
raw_performed(i_p239_a7, participant_returns_pitcher_of_water, 7, 53400510).
raw_performed(i_p239_a7, participant_returns_pitcher_of_water, 8, 53402067).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 9, 53403032).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 10, 53408941).
raw_performed(i_p239_a7, participant_fills_measuring_cup_with_water, 11, 53504074).
raw_performed(i_p239_a7, participant_fills_measuring_cup_with_water, 12, 53504956).
raw_performed(i_p239_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 53508819).
raw_performed(i_p239_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 53514057).
raw_performed(i_p239_a7, participant_returns_pitcher_of_water, 15, 53520009).
raw_performed(i_p239_a7, participant_returns_pitcher_of_water, 16, 53523642).
raw_performed(i_p239_a7, participant_returns_pitcher_of_water, 17, 53524154).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 18, 53572279).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 19, 53575746).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 20, 53576038).
raw_performed(i_p239_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 21, 53593061).
raw_performed(i_p239_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 22, 53596397).
raw_performed(i_p239_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 23, 53596876).
raw_performed(i_p239_a7, participant_returns_pitcher_of_water, 24, 53607856).
raw_performed(i_p239_a7, participant_returns_pitcher_of_water, 25, 53610758).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 26, 53611922).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 27, 53616692).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 28, 53780003).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 29, 53784036).
raw_performed(i_p239_a7, participant_boils_water_in_microwave, 30, 53784039).
raw_performed(i_p239_a7, participant_pours_water_into_cup_of_noodles, 31, 53827072).
raw_performed(i_p239_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 53830076).
raw_performed(i_p239_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 53836853).
raw_performed(i_p239_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 53838436).
raw_performed(i_p239_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 53840160).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 36, 53845866).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 37, 53846058).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 38, 53849072).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 39, 53874026).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 40, 53875051).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 41, 53879315).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 42, 53886177).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 43, 53914054).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 44, 53914082).
raw_performed(i_p239_a7, participant_brings_all_items_to_dining_room_table, 45, 53917631).

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

