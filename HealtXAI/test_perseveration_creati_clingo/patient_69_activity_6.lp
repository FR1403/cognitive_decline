% ======================================================================
% Paziente 69
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

instance(i_p69_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p69_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 1, 51888991).
raw_performed(i_p69_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 2, 51896748).
raw_performed(i_p69_a7, participant_pours_glass_of_water, 3, 51903540).
raw_performed(i_p69_a7, participant_returns_pitcher_of_water, 4, 51903540).
raw_performed(i_p69_a7, participant_returns_pitcher_of_water, 5, 51906612).
raw_performed(i_p69_a7, participant_returns_pitcher_of_water, 6, 51908072).
raw_performed(i_p69_a7, participant_retrieves_materials_from_cupboard_a, 7, 51919758).
raw_performed(i_p69_a7, participant_retrieves_materials_from_cupboard_a, 8, 51931872).
raw_performed(i_p69_a7, participant_fills_measuring_cup_with_water, 9, 51938360).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 10, 51942483).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 11, 51947291).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 12, 51950832).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 13, 51957572).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 14, 51961513).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 15, 51963481).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 16, 51973786).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 17, 51974672).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 18, 51988131).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 19, 51990764).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 20, 51992241).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 21, 51999282).
raw_performed(i_p69_a7, participant_boils_water_in_microwave, 22, 52002204).
raw_performed(i_p69_a7, participant_brings_all_items_to_dining_room_table, 23, 52011586).
raw_performed(i_p69_a7, participant_brings_all_items_to_dining_room_table, 24, 52011631).
raw_performed(i_p69_a7, participant_brings_all_items_to_dining_room_table, 25, 52014772).
raw_performed(i_p69_a7, participant_pours_water_into_cup_of_noodles, 26, 52139063).
raw_performed(i_p69_a7, participant_brings_all_items_to_dining_room_table, 27, 52161958).
raw_performed(i_p69_a7, participant_brings_all_items_to_dining_room_table, 28, 52161983).
raw_performed(i_p69_a7, participant_brings_all_items_to_dining_room_table, 29, 52163402).
raw_performed(i_p69_a7, participant_brings_all_items_to_dining_room_table, 30, 52168672).

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

