% ======================================================================
% Paziente 277
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

instance(i_p277_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p277_a7, participant_retrieves_materials_from_cupboard_a, 1, 55357390).
raw_performed(i_p277_a7, participant_retrieves_materials_from_cupboard_a, 2, 55361383).
raw_performed(i_p277_a7, participant_boils_water_in_microwave, 3, 55372740).
raw_performed(i_p277_a7, participant_boils_water_in_microwave, 4, 55376099).
raw_performed(i_p277_a7, participant_retrieves_materials_from_cupboard_a, 5, 55383804).
raw_performed(i_p277_a7, participant_retrieves_materials_from_cupboard_a, 6, 55385505).
raw_performed(i_p277_a7, participant_retrieves_materials_from_cupboard_a, 7, 55400965).
raw_performed(i_p277_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 55500512).
raw_performed(i_p277_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 55506501).
raw_performed(i_p277_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 55506849).
raw_performed(i_p277_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 55509587).
raw_performed(i_p277_a7, participant_pours_glass_of_water, 12, 55525001).
raw_performed(i_p277_a7, participant_pours_glass_of_water, 13, 55534535).
raw_performed(i_p277_a7, participant_pours_glass_of_water, 14, 55541715).
raw_performed(i_p277_a7, participant_returns_pitcher_of_water, 15, 55543931).
raw_performed(i_p277_a7, participant_returns_pitcher_of_water, 16, 55547346).
raw_performed(i_p277_a7, participant_returns_pitcher_of_water, 17, 55547982).
raw_performed(i_p277_a7, participant_returns_pitcher_of_water, 18, 55548906).
raw_performed(i_p277_a7, participant_boils_water_in_microwave, 19, 55572443).
raw_performed(i_p277_a7, participant_boils_water_in_microwave, 20, 55579472).
raw_performed(i_p277_a7, participant_boils_water_in_microwave, 21, 55579808).
raw_performed(i_p277_a7, participant_pours_water_into_cup_of_noodles, 22, 55593945).
raw_performed(i_p277_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 55599263).
raw_performed(i_p277_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 55608947).
raw_performed(i_p277_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 55611228).
raw_performed(i_p277_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 55619490).
raw_performed(i_p277_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 55625660).
raw_performed(i_p277_a7, participant_brings_all_items_to_dining_room_table, 28, 55815406).
raw_performed(i_p277_a7, participant_brings_all_items_to_dining_room_table, 29, 55815737).
raw_performed(i_p277_a7, participant_brings_all_items_to_dining_room_table, 30, 55816503).
raw_performed(i_p277_a7, participant_brings_all_items_to_dining_room_table, 31, 55820416).

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

