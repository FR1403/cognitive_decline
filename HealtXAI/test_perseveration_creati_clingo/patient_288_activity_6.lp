% ======================================================================
% Paziente 288
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

instance(i_p288_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p288_a7, participant_retrieves_materials_from_cupboard_a, 1, 50814562).
raw_performed(i_p288_a7, participant_fills_measuring_cup_with_water, 2, 50827902).
raw_performed(i_p288_a7, participant_fills_measuring_cup_with_water, 3, 50827930).
raw_performed(i_p288_a7, participant_fills_measuring_cup_with_water, 4, 50831953).
raw_performed(i_p288_a7, participant_retrieves_materials_from_cupboard_a, 5, 50833072).
raw_performed(i_p288_a7, participant_fills_measuring_cup_with_water, 6, 50839473).
raw_performed(i_p288_a7, participant_boils_water_in_microwave, 7, 50884396).
raw_performed(i_p288_a7, participant_boils_water_in_microwave, 8, 50890161).
raw_performed(i_p288_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 50907762).
raw_performed(i_p288_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 50909438).
raw_performed(i_p288_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 50911986).
raw_performed(i_p288_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 50912003).
raw_performed(i_p288_a7, participant_pours_glass_of_water, 13, 50915784).
raw_performed(i_p288_a7, participant_returns_pitcher_of_water, 14, 50925222).
raw_performed(i_p288_a7, participant_returns_pitcher_of_water, 15, 50929089).
raw_performed(i_p288_a7, participant_returns_pitcher_of_water, 16, 50929102).
raw_performed(i_p288_a7, participant_brings_all_items_to_dining_room_table, 17, 50934092).
raw_performed(i_p288_a7, participant_brings_all_items_to_dining_room_table, 18, 50936685).
raw_performed(i_p288_a7, participant_brings_all_items_to_dining_room_table, 19, 50936711).
raw_performed(i_p288_a7, participant_brings_all_items_to_dining_room_table, 20, 50937332).
raw_performed(i_p288_a7, participant_boils_water_in_microwave, 21, 51079742).
raw_performed(i_p288_a7, participant_pours_water_into_cup_of_noodles, 22, 51089192).
raw_performed(i_p288_a7, participant_brings_all_items_to_dining_room_table, 23, 51164611).
raw_performed(i_p288_a7, participant_brings_all_items_to_dining_room_table, 24, 51164623).
raw_performed(i_p288_a7, participant_brings_all_items_to_dining_room_table, 25, 51165862).

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

