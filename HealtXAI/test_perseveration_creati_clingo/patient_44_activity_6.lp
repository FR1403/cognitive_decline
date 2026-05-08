% ======================================================================
% Paziente 44
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

instance(i_p44_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p44_a7, participant_retrieves_materials_from_cupboard_a, 1, 37304935).
raw_performed(i_p44_a7, participant_retrieves_materials_from_cupboard_a, 2, 37313585).
raw_performed(i_p44_a7, participant_fills_measuring_cup_with_water, 3, 37329457).
raw_performed(i_p44_a7, participant_fills_measuring_cup_with_water, 4, 37329482).
raw_performed(i_p44_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 5, 37334020).
raw_performed(i_p44_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 6, 37335286).
raw_performed(i_p44_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 37343061).
raw_performed(i_p44_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 37343074).
raw_performed(i_p44_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 37346675).
raw_performed(i_p44_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 37354365).
raw_performed(i_p44_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 37354785).
raw_performed(i_p44_a7, participant_retrieves_materials_from_cupboard_a, 12, 37358064).
raw_performed(i_p44_a7, participant_retrieves_materials_from_cupboard_a, 13, 37362017).
raw_performed(i_p44_a7, participant_boils_water_in_microwave, 14, 37433314).
raw_performed(i_p44_a7, participant_boils_water_in_microwave, 15, 37437969).
raw_performed(i_p44_a7, participant_boils_water_in_microwave, 16, 37541625).
raw_performed(i_p44_a7, participant_boils_water_in_microwave, 17, 37549323).
raw_performed(i_p44_a7, participant_returns_pitcher_of_water, 18, 37633673).
raw_performed(i_p44_a7, participant_returns_pitcher_of_water, 19, 37638221).
raw_performed(i_p44_a7, participant_boils_water_in_microwave, 20, 37638238).
raw_performed(i_p44_a7, participant_boils_water_in_microwave, 21, 37645716).
raw_performed(i_p44_a7, participant_pours_water_into_cup_of_noodles, 22, 37649597).
raw_performed(i_p44_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 37666868).
raw_performed(i_p44_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 37691674).
raw_performed(i_p44_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 37706316).
raw_performed(i_p44_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 37713381).
raw_performed(i_p44_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 37723322).
raw_performed(i_p44_a7, participant_brings_all_items_to_dining_room_table, 28, 37900538).
raw_performed(i_p44_a7, participant_brings_all_items_to_dining_room_table, 29, 37903438).
raw_performed(i_p44_a7, participant_brings_all_items_to_dining_room_table, 30, 37903472).

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

