% ======================================================================
% Paziente 299
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

instance(i_p299_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p299_a7, participant_retrieves_materials_from_cupboard_a, 1, 54104008).
raw_performed(i_p299_a7, participant_fills_measuring_cup_with_water, 2, 54143844).
raw_performed(i_p299_a7, participant_fills_measuring_cup_with_water, 3, 54146804).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 4, 54154714).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 5, 54156565).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 6, 54159745).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 7, 54160826).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 8, 54172441).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 9, 54174795).
raw_performed(i_p299_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 54174795).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 11, 54175437).
raw_performed(i_p299_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 54175437).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 13, 54177458).
raw_performed(i_p299_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 54177458).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 15, 54179368).
raw_performed(i_p299_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 54179368).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 17, 54194117).
raw_performed(i_p299_a7, participant_pours_glass_of_water, 18, 54194117).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 19, 54199303).
raw_performed(i_p299_a7, participant_pours_glass_of_water, 20, 54199303).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 21, 54205728).
raw_performed(i_p299_a7, participant_pours_glass_of_water, 22, 54205728).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 23, 54208465).
raw_performed(i_p299_a7, participant_returns_pitcher_of_water, 24, 54208465).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 25, 54211986).
raw_performed(i_p299_a7, participant_returns_pitcher_of_water, 26, 54211986).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 27, 54212295).
raw_performed(i_p299_a7, participant_returns_pitcher_of_water, 28, 54212295).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 29, 54213897).
raw_performed(i_p299_a7, participant_returns_pitcher_of_water, 30, 54213897).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 31, 54222696).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 32, 54226856).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 33, 54241382).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 34, 54252863).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 35, 54261416).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 36, 54262836).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 37, 54267951).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 38, 54273632).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 39, 54286083).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 40, 54295187).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 41, 54300283).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 42, 54303028).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 43, 54341412).
raw_performed(i_p299_a7, participant_boils_water_in_microwave, 44, 54351257).
raw_performed(i_p299_a7, participant_pours_water_into_cup_of_noodles, 45, 54368540).
raw_performed(i_p299_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46, 54376316).
raw_performed(i_p299_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47, 54381967).
raw_performed(i_p299_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 48, 54392546).
raw_performed(i_p299_a7, participant_brings_all_items_to_dining_room_table, 49, 54395861).

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

