% ======================================================================
% Paziente 311
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

instance(i_p311_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p311_a7, participant_retrieves_materials_from_cupboard_a, 1, 36716459).
raw_performed(i_p311_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 2, 36731123).
raw_performed(i_p311_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 3, 36738460).
raw_performed(i_p311_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 4, 36738475).
raw_performed(i_p311_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 5, 36738830).
raw_performed(i_p311_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 6, 36747407).
raw_performed(i_p311_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 36752237).
raw_performed(i_p311_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 36752251).
raw_performed(i_p311_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 36752585).
raw_performed(i_p311_a7, participant_fills_measuring_cup_with_water, 10, 36765659).
raw_performed(i_p311_a7, participant_fills_measuring_cup_with_water, 11, 36777185).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 12, 36922894).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 13, 36924724).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 14, 36929726).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 15, 36936081).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 16, 36948887).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 17, 36951588).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 18, 36971193).
raw_performed(i_p311_a7, participant_retrieves_materials_from_cupboard_a, 19, 36982675).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 20, 36985489).
raw_performed(i_p311_a7, participant_retrieves_materials_from_cupboard_a, 21, 36985863).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 22, 36990191).
raw_performed(i_p311_a7, participant_pours_glass_of_water, 23, 36990191).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 24, 36998575).
raw_performed(i_p311_a7, participant_pours_glass_of_water, 25, 36998575).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 26, 36999180).
raw_performed(i_p311_a7, participant_returns_pitcher_of_water, 27, 36999180).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 28, 37000096).
raw_performed(i_p311_a7, participant_returns_pitcher_of_water, 29, 37000096).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 30, 37002624).
raw_performed(i_p311_a7, participant_returns_pitcher_of_water, 31, 37002624).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 32, 37022909).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 33, 37024654).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 34, 37028778).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 35, 37046718).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 36, 37048482).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 37, 37055215).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 38, 37056427).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 39, 37085310).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 40, 37088167).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 41, 37097861).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 42, 37099840).
raw_performed(i_p311_a7, participant_boils_water_in_microwave, 43, 37127595).
raw_performed(i_p311_a7, participant_pours_water_into_cup_of_noodles, 44, 37153081).
raw_performed(i_p311_a7, participant_pours_water_into_cup_of_noodles, 45, 37171406).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46, 37183497).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47, 37191957).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48, 37220427).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 49, 37233435).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 50, 37238550).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 51, 37248138).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 52, 37253057).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 53, 37255993).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 54, 37276246).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 55, 37316602).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 56, 37328651).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 57, 37329839).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 58, 37332596).
raw_performed(i_p311_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 59, 37350203).
raw_performed(i_p311_a7, participant_brings_all_items_to_dining_room_table, 60, 37354246).

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

