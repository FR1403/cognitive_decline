% ======================================================================
% Paziente 145
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

instance(i_p145_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p145_a7, participant_retrieves_materials_from_cupboard_a, 1, 36079170).
raw_performed(i_p145_a7, participant_retrieves_materials_from_cupboard_a, 2, 36079196).
raw_performed(i_p145_a7, participant_retrieves_materials_from_cupboard_a, 3, 36090196).
raw_performed(i_p145_a7, participant_fills_measuring_cup_with_water, 4, 36162616).
raw_performed(i_p145_a7, participant_boils_water_in_microwave, 5, 36170479).
raw_performed(i_p145_a7, participant_boils_water_in_microwave, 6, 36174565).
raw_performed(i_p145_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 36200168).
raw_performed(i_p145_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 36202522).
raw_performed(i_p145_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 36206265).
raw_performed(i_p145_a7, participant_pours_glass_of_water, 10, 36218116).
raw_performed(i_p145_a7, participant_returns_pitcher_of_water, 11, 36221772).
raw_performed(i_p145_a7, participant_returns_pitcher_of_water, 12, 36222995).
raw_performed(i_p145_a7, participant_returns_pitcher_of_water, 13, 36225308).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 14, 36292560).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 15, 36292586).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 16, 36293418).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 17, 36295951).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 18, 36312528).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 19, 36318415).
raw_performed(i_p145_a7, participant_boils_water_in_microwave, 20, 36359872).
raw_performed(i_p145_a7, participant_boils_water_in_microwave, 21, 36363555).
raw_performed(i_p145_a7, participant_pours_water_into_cup_of_noodles, 22, 36365867).
raw_performed(i_p145_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 36373971).
raw_performed(i_p145_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 36381119).
raw_performed(i_p145_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 36398293).
raw_performed(i_p145_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 36453068).
raw_performed(i_p145_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 36489851).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 28, 36498262).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 29, 36498288).
raw_performed(i_p145_a7, participant_brings_all_items_to_dining_room_table, 30, 36499113).

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

