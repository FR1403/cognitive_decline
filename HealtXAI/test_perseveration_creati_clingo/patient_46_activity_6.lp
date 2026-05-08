% ======================================================================
% Paziente 46
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

instance(i_p46_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p46_a7, participant_retrieves_materials_from_cupboard_a, 1, 54295759).
raw_performed(i_p46_a7, participant_retrieves_materials_from_cupboard_a, 2, 54303138).
raw_performed(i_p46_a7, participant_boils_water_in_microwave, 3, 54320816).
raw_performed(i_p46_a7, participant_boils_water_in_microwave, 4, 54329495).
raw_performed(i_p46_a7, participant_retrieves_materials_from_cupboard_a, 5, 54357759).
raw_performed(i_p46_a7, participant_retrieves_materials_from_cupboard_a, 6, 54358836).
raw_performed(i_p46_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 54364831).
raw_performed(i_p46_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 54365391).
raw_performed(i_p46_a7, participant_pours_glass_of_water, 9, 54365816).
raw_performed(i_p46_a7, participant_pours_glass_of_water, 10, 54372226).
raw_performed(i_p46_a7, participant_returns_pitcher_of_water, 11, 54382891).
raw_performed(i_p46_a7, participant_returns_pitcher_of_water, 12, 54389387).
raw_performed(i_p46_a7, participant_returns_pitcher_of_water, 13, 54390006).
raw_performed(i_p46_a7, participant_boils_water_in_microwave, 14, 54511835).
raw_performed(i_p46_a7, participant_boils_water_in_microwave, 15, 54519430).
raw_performed(i_p46_a7, participant_pours_water_into_cup_of_noodles, 16, 54521840).
raw_performed(i_p46_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 17, 54541604).
raw_performed(i_p46_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 54562340).
raw_performed(i_p46_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 54569402).
raw_performed(i_p46_a7, participant_retrieves_materials_from_cupboard_a, 20, 54578435).
raw_performed(i_p46_a7, participant_retrieves_materials_from_cupboard_a, 21, 54583375).
raw_performed(i_p46_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 54584404).
raw_performed(i_p46_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 54594546).
raw_performed(i_p46_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 54610866).
raw_performed(i_p46_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 54638396).

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

