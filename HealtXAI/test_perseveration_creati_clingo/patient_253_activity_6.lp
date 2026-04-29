% ======================================================================
% Paziente 253
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

instance(i_p253_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p253_a7, participant_retrieves_materials_from_cupboard_a, 1, 35544893).
raw_performed(i_p253_a7, participant_retrieves_materials_from_cupboard_a, 2, 35545189).
raw_performed(i_p253_a7, participant_retrieves_materials_from_cupboard_a, 3, 35553929).
raw_performed(i_p253_a7, participant_retrieves_materials_from_cupboard_a, 4, 35555849).
raw_performed(i_p253_a7, participant_fills_measuring_cup_with_water, 5, 35575041).
raw_performed(i_p253_a7, participant_fills_measuring_cup_with_water, 6, 35617714).
raw_performed(i_p253_a7, participant_fills_measuring_cup_with_water, 7, 35683578).
raw_performed(i_p253_a7, participant_fills_measuring_cup_with_water, 8, 35693363).
raw_performed(i_p253_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 35698204).
raw_performed(i_p253_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 35699189).
raw_performed(i_p253_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 35702224).
raw_performed(i_p253_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 35702611).
raw_performed(i_p253_a7, participant_pours_glass_of_water, 13, 35710966).
raw_performed(i_p253_a7, participant_pours_glass_of_water, 14, 35719358).
raw_performed(i_p253_a7, participant_returns_pitcher_of_water, 15, 35719858).
raw_performed(i_p253_a7, participant_returns_pitcher_of_water, 16, 35721356).
raw_performed(i_p253_a7, participant_returns_pitcher_of_water, 17, 35725216).
raw_performed(i_p253_a7, participant_pours_water_into_cup_of_noodles, 18, 35778888).
raw_performed(i_p253_a7, participant_brings_all_items_to_dining_room_table, 19, 35781944).
raw_performed(i_p253_a7, participant_brings_all_items_to_dining_room_table, 20, 35782203).
raw_performed(i_p253_a7, participant_brings_all_items_to_dining_room_table, 21, 35782376).
raw_performed(i_p253_a7, participant_brings_all_items_to_dining_room_table, 22, 35783924).

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

