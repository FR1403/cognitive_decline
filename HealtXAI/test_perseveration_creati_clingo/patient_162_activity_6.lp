% ======================================================================
% Paziente 162
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

instance(i_p162_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p162_a7, participant_retrieves_materials_from_cupboard_a, 1, 52099568).
raw_performed(i_p162_a7, participant_retrieves_materials_from_cupboard_a, 2, 52103232).
raw_performed(i_p162_a7, participant_fills_measuring_cup_with_water, 3, 52239365).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 4, 52295781).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 5, 52297456).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 6, 52337881).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 7, 52385813).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 8, 52390272).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 9, 52397088).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 10, 52406617).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 11, 52413017).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 12, 52422964).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 13, 52444569).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 14, 52464944).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 15, 52475299).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 16, 52486447).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 17, 52486839).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 18, 52489620).
raw_performed(i_p162_a7, participant_boils_water_in_microwave, 19, 52498692).
raw_performed(i_p162_a7, participant_pours_water_into_cup_of_noodles, 20, 52551043).
raw_performed(i_p162_a7, participant_pours_water_into_cup_of_noodles, 21, 52551941).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 52581845).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 52585242).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 52597658).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 52599723).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 52604909).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 52725936).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 52733634).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 52737360).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 52746791).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 52752659).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 52789600).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 52817469).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 52825904).
raw_performed(i_p162_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 52836643).
raw_performed(i_p162_a7, participant_brings_all_items_to_dining_room_table, 36, 52857062).

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

