% ======================================================================
% Paziente 203
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

instance(i_p203_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p203_a7, participant_retrieves_materials_from_cupboard_a, 1, 37321179).
raw_performed(i_p203_a7, participant_retrieves_materials_from_cupboard_a, 2, 37327600).
raw_performed(i_p203_a7, participant_retrieves_materials_from_cupboard_a, 3, 37330739).
raw_performed(i_p203_a7, participant_retrieves_materials_from_cupboard_a, 4, 37336518).
raw_performed(i_p203_a7, participant_retrieves_materials_from_cupboard_a, 5, 37352711).
raw_performed(i_p203_a7, participant_fills_measuring_cup_with_water, 6, 37359788).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 7, 37601683).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 8, 37602300).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 9, 37602953).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 10, 37607108).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 11, 37607132).
raw_performed(i_p203_a7, participant_pours_water_into_cup_of_noodles, 12, 37616919).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 13, 37630630).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 14, 37651801).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 15, 37672110).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 16, 37686613).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 17, 37713197).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 37725308).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 37750076).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 37761761).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 37773031).
raw_performed(i_p203_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 37778890).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 23, 37786729).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 24, 37787354).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 25, 37787978).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 26, 37789864).
raw_performed(i_p203_a7, participant_brings_all_items_to_dining_room_table, 27, 37798102).

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

