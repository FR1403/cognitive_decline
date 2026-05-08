% ======================================================================
% Paziente 279
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

instance(i_p279_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p279_a7, participant_retrieves_materials_from_cupboard_a, 1, 39274564).
raw_performed(i_p279_a7, participant_retrieves_materials_from_cupboard_a, 2, 39293242).
raw_performed(i_p279_a7, participant_fills_measuring_cup_with_water, 3, 39296383).
raw_performed(i_p279_a7, participant_fills_measuring_cup_with_water, 4, 39300203).
raw_performed(i_p279_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 5, 39473553).
raw_performed(i_p279_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 6, 39474622).
raw_performed(i_p279_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 39477857).
raw_performed(i_p279_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 39477882).
raw_performed(i_p279_a7, participant_pours_glass_of_water, 9, 39488361).
raw_performed(i_p279_a7, participant_pours_glass_of_water, 10, 39509441).
raw_performed(i_p279_a7, participant_pours_glass_of_water, 11, 39520371).
raw_performed(i_p279_a7, participant_pours_glass_of_water, 12, 39531943).
raw_performed(i_p279_a7, participant_pours_glass_of_water, 13, 39535900).
raw_performed(i_p279_a7, participant_returns_pitcher_of_water, 14, 39535924).
raw_performed(i_p279_a7, participant_returns_pitcher_of_water, 15, 39544024).
raw_performed(i_p279_a7, participant_returns_pitcher_of_water, 16, 39544627).
raw_performed(i_p279_a7, participant_pours_water_into_cup_of_noodles, 17, 39556414).
raw_performed(i_p279_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 39577964).
raw_performed(i_p279_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 39597351).
raw_performed(i_p279_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 39644491).
raw_performed(i_p279_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 39740407).
raw_performed(i_p279_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 39753442).
raw_performed(i_p279_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 39764734).
raw_performed(i_p279_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 39781598).
raw_performed(i_p279_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 39827788).
raw_performed(i_p279_a7, participant_brings_all_items_to_dining_room_table, 26, 39832009).
raw_performed(i_p279_a7, participant_brings_all_items_to_dining_room_table, 27, 39834715).
raw_performed(i_p279_a7, participant_brings_all_items_to_dining_room_table, 28, 39834739).
raw_performed(i_p279_a7, participant_brings_all_items_to_dining_room_table, 29, 39835565).

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

