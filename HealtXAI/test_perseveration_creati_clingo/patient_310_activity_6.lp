% ======================================================================
% Paziente 310
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

instance(i_p310_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p310_a7, participant_retrieves_materials_from_cupboard_a, 1, 43683033).
raw_performed(i_p310_a7, participant_fills_measuring_cup_with_water, 2, 43751872).
raw_performed(i_p310_a7, participant_fills_measuring_cup_with_water, 3, 43753067).
raw_performed(i_p310_a7, participant_fills_measuring_cup_with_water, 4, 43754085).
raw_performed(i_p310_a7, participant_fills_measuring_cup_with_water, 5, 43757078).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 6, 43763065).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 7, 43768078).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 8, 43770041).
raw_performed(i_p310_a7, participant_retrieves_materials_from_cupboard_a, 9, 43873268).
raw_performed(i_p310_a7, participant_retrieves_materials_from_cupboard_a, 10, 43885298).
raw_performed(i_p310_a7, participant_retrieves_materials_from_cupboard_a, 11, 43897057).
raw_performed(i_p310_a7, participant_retrieves_materials_from_cupboard_a, 12, 43902054).
raw_performed(i_p310_a7, participant_retrieves_materials_from_cupboard_a, 13, 43914638).
raw_performed(i_p310_a7, participant_pours_glass_of_water, 14, 43925745).
raw_performed(i_p310_a7, participant_pours_glass_of_water, 15, 43928086).
raw_performed(i_p310_a7, participant_pours_glass_of_water, 16, 43931086).
raw_performed(i_p310_a7, participant_pours_glass_of_water, 17, 43932036).
raw_performed(i_p310_a7, participant_pours_glass_of_water, 18, 43934096).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 19, 43957731).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 20, 43969024).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 21, 43977035).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 22, 43999086).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 23, 44007339).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 24, 44014087).
raw_performed(i_p310_a7, participant_boils_water_in_microwave, 25, 44024319).
raw_performed(i_p310_a7, participant_brings_all_items_to_dining_room_table, 26, 44050661).
raw_performed(i_p310_a7, participant_brings_all_items_to_dining_room_table, 27, 44051044).
raw_performed(i_p310_a7, participant_brings_all_items_to_dining_room_table, 28, 44053465).
raw_performed(i_p310_a7, participant_brings_all_items_to_dining_room_table, 29, 44053857).

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

