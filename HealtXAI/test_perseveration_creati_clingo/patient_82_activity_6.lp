% ======================================================================
% Paziente 82
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

instance(i_p82_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p82_a7, participant_retrieves_materials_from_cupboard_a, 1, 50328032).
raw_performed(i_p82_a7, participant_fills_measuring_cup_with_water, 2, 50351818).
raw_performed(i_p82_a7, participant_fills_measuring_cup_with_water, 3, 50352182).
raw_performed(i_p82_a7, participant_fills_measuring_cup_with_water, 4, 50355472).
raw_performed(i_p82_a7, participant_pours_water_into_cup_of_noodles, 5, 50386438).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 6, 50394271).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 7, 50397777).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 8, 50437781).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 9, 50437805).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 10, 50445071).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 11, 50445984).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 12, 50446583).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 13, 50468370).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 14, 50468393).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 15, 50468951).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 16, 50470035).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 17, 50474597).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 18, 50477907).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 19, 50477932).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 20, 50478552).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 21, 50496738).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 22, 50508108).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 23, 50508132).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 24, 50508936).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 25, 50519380).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 26, 50519406).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 27, 50523252).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 28, 50523892).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 29, 50536180).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 30, 50555775).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 31, 50608097).
raw_performed(i_p82_a7, participant_boils_water_in_microwave, 32, 50611060).
raw_performed(i_p82_a7, participant_brings_all_items_to_dining_room_table, 33, 50623340).

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

