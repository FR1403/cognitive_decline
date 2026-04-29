% ======================================================================
% Paziente 20
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

instance(i_p20_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p20_a7, participant_retrieves_materials_from_cupboard_a, 1, 35843019).
raw_performed(i_p20_a7, participant_retrieves_materials_from_cupboard_a, 2, 35850000).
raw_performed(i_p20_a7, participant_fills_measuring_cup_with_water, 3, 35850081).
raw_performed(i_p20_a7, participant_boils_water_in_microwave, 4, 35857005).
raw_performed(i_p20_a7, participant_boils_water_in_microwave, 5, 35861098).
raw_performed(i_p20_a7, participant_retrieves_materials_from_cupboard_a, 6, 35908026).
raw_performed(i_p20_a7, participant_retrieves_materials_from_cupboard_a, 7, 35911041).
raw_performed(i_p20_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 35912006).
raw_performed(i_p20_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 35913090).
raw_performed(i_p20_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 35915023).
raw_performed(i_p20_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 35915051).
raw_performed(i_p20_a7, participant_pours_glass_of_water, 12, 35930083).
raw_performed(i_p20_a7, participant_pours_glass_of_water, 13, 35943029).
raw_performed(i_p20_a7, participant_returns_pitcher_of_water, 14, 35950027).
raw_performed(i_p20_a7, participant_returns_pitcher_of_water, 15, 35952003).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 16, 35953077).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 17, 35954011).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 18, 35954052).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 19, 35956064).
raw_performed(i_p20_a7, participant_boils_water_in_microwave, 20, 36049041).
raw_performed(i_p20_a7, participant_pours_water_into_cup_of_noodles, 21, 36050048).
raw_performed(i_p20_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 36053095).
raw_performed(i_p20_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 36067005).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 24, 36089087).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 25, 36090088).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 26, 36091017).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 27, 36092013).
raw_performed(i_p20_a7, participant_brings_all_items_to_dining_room_table, 28, 36094036).

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

