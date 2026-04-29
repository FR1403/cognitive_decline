% ======================================================================
% Paziente 233
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

instance(i_p233_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p233_a7, participant_retrieves_materials_from_cupboard_a, 1, 34402633).
raw_performed(i_p233_a7, participant_fills_measuring_cup_with_water, 2, 34482359).
raw_performed(i_p233_a7, participant_boils_water_in_microwave, 3, 34521881).
raw_performed(i_p233_a7, participant_boils_water_in_microwave, 4, 34525553).
raw_performed(i_p233_a7, participant_boils_water_in_microwave, 5, 34553144).
raw_performed(i_p233_a7, participant_boils_water_in_microwave, 6, 34569522).
raw_performed(i_p233_a7, participant_boils_water_in_microwave, 7, 34576806).
raw_performed(i_p233_a7, participant_boils_water_in_microwave, 8, 34587870).
raw_performed(i_p233_a7, participant_pours_water_into_cup_of_noodles, 9, 34791512).
raw_performed(i_p233_a7, participant_pours_water_into_cup_of_noodles, 10, 34800939).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 11, 34804684).
raw_performed(i_p233_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 34843899).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 13, 34843899).
raw_performed(i_p233_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 34849908).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 15, 34849908).
raw_performed(i_p233_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 34850340).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 17, 34850340).
raw_performed(i_p233_a7, participant_pours_glass_of_water, 18, 34864829).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 34864829).
raw_performed(i_p233_a7, participant_pours_glass_of_water, 20, 34869728).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 34869728).
raw_performed(i_p233_a7, participant_pours_glass_of_water, 22, 34874389).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 34874389).
raw_performed(i_p233_a7, participant_pours_glass_of_water, 24, 34880759).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 34880759).
raw_performed(i_p233_a7, participant_returns_pitcher_of_water, 26, 34884098).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 34884098).
raw_performed(i_p233_a7, participant_returns_pitcher_of_water, 28, 34888661).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 34888661).
raw_performed(i_p233_a7, participant_returns_pitcher_of_water, 30, 34942258).
raw_performed(i_p233_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 34942258).
raw_performed(i_p233_a7, participant_brings_all_items_to_dining_room_table, 32, 34995380).

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

