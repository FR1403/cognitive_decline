% ======================================================================
% Paziente 107
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

instance(i_p107_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p107_a7, participant_retrieves_materials_from_cupboard_a, 1, 41881463).
raw_performed(i_p107_a7, participant_retrieves_materials_from_cupboard_a, 2, 41885434).
raw_performed(i_p107_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 3, 41885483).
raw_performed(i_p107_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 4, 41886688).
raw_performed(i_p107_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 5, 41886733).
raw_performed(i_p107_a7, participant_fills_measuring_cup_with_water, 6, 41892274).
raw_performed(i_p107_a7, participant_boils_water_in_microwave, 7, 41909501).
raw_performed(i_p107_a7, participant_boils_water_in_microwave, 8, 41914831).
raw_performed(i_p107_a7, participant_pours_glass_of_water, 9, 42010239).
raw_performed(i_p107_a7, participant_boils_water_in_microwave, 10, 42111354).
raw_performed(i_p107_a7, participant_boils_water_in_microwave, 11, 42134712).
raw_performed(i_p107_a7, participant_boils_water_in_microwave, 12, 42248723).
raw_performed(i_p107_a7, participant_boils_water_in_microwave, 13, 42256508).
raw_performed(i_p107_a7, participant_boils_water_in_microwave, 14, 42287268).
raw_performed(i_p107_a7, participant_boils_water_in_microwave, 15, 42287292).
raw_performed(i_p107_a7, participant_pours_water_into_cup_of_noodles, 16, 42380172).
raw_performed(i_p107_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 17, 42399612).
raw_performed(i_p107_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 42428307).
raw_performed(i_p107_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 42435138).
raw_performed(i_p107_a7, participant_returns_pitcher_of_water, 20, 42435162).
raw_performed(i_p107_a7, participant_returns_pitcher_of_water, 21, 42438697).
raw_performed(i_p107_a7, participant_brings_all_items_to_dining_room_table, 22, 42493268).
raw_performed(i_p107_a7, participant_brings_all_items_to_dining_room_table, 23, 42493904).
raw_performed(i_p107_a7, participant_brings_all_items_to_dining_room_table, 24, 42494528).
raw_performed(i_p107_a7, participant_brings_all_items_to_dining_room_table, 25, 42495161).

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

