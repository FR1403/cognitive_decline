% ======================================================================
% Paziente 151
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

instance(i_p151_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p151_a7, participant_retrieves_materials_from_cupboard_a, 1, 49711244).
raw_performed(i_p151_a7, participant_retrieves_materials_from_cupboard_a, 2, 49718604).
raw_performed(i_p151_a7, participant_retrieves_materials_from_cupboard_a, 3, 49718628).
raw_performed(i_p151_a7, participant_fills_measuring_cup_with_water, 4, 49721971).
raw_performed(i_p151_a7, participant_fills_measuring_cup_with_water, 5, 49721997).
raw_performed(i_p151_a7, participant_boils_water_in_microwave, 6, 49726498).
raw_performed(i_p151_a7, participant_boils_water_in_microwave, 7, 49731779).
raw_performed(i_p151_a7, participant_retrieves_materials_from_cupboard_a, 8, 49740740).
raw_performed(i_p151_a7, participant_retrieves_materials_from_cupboard_a, 9, 49766191).
raw_performed(i_p151_a7, participant_boils_water_in_microwave, 10, 49858761).
raw_performed(i_p151_a7, participant_boils_water_in_microwave, 11, 49863359).
raw_performed(i_p151_a7, participant_pours_water_into_cup_of_noodles, 12, 49864023).
raw_performed(i_p151_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 49899198).
raw_performed(i_p151_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 49903429).
raw_performed(i_p151_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 15, 49905673).
raw_performed(i_p151_a7, participant_pours_glass_of_water, 16, 49906310).
raw_performed(i_p151_a7, participant_returns_pitcher_of_water, 17, 49922033).
raw_performed(i_p151_a7, participant_returns_pitcher_of_water, 18, 49924583).
raw_performed(i_p151_a7, participant_returns_pitcher_of_water, 19, 49925857).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 49930730).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 49930754).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 49930802).
raw_performed(i_p151_a7, participant_retrieves_materials_from_cupboard_a, 23, 49937525).
raw_performed(i_p151_a7, participant_retrieves_materials_from_cupboard_a, 24, 49939746).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 49941999).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 49953498).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 49957182).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 49961431).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 50039172).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 50056070).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 50078638).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 50084008).
raw_performed(i_p151_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 50090952).
raw_performed(i_p151_a7, participant_brings_all_items_to_dining_room_table, 34, 50118085).
raw_performed(i_p151_a7, participant_brings_all_items_to_dining_room_table, 35, 50120180).
raw_performed(i_p151_a7, participant_brings_all_items_to_dining_room_table, 36, 50120225).
raw_performed(i_p151_a7, participant_brings_all_items_to_dining_room_table, 37, 50122541).
raw_performed(i_p151_a7, participant_brings_all_items_to_dining_room_table, 38, 50123168).

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

