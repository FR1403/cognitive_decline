% ======================================================================
% Paziente 238
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

instance(i_p238_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p238_a7, participant_retrieves_materials_from_cupboard_a, 1, 50608227).
raw_performed(i_p238_a7, participant_fills_measuring_cup_with_water, 2, 50625070).
raw_performed(i_p238_a7, participant_fills_measuring_cup_with_water, 3, 50628861).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 4, 50682308).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 5, 50685272).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 6, 50695861).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 7, 50699871).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 8, 50717871).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 9, 50728425).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 10, 50736012).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 11, 50744755).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 12, 50752284).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 13, 50794694).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 14, 50807001).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 15, 50824736).
raw_performed(i_p238_a7, participant_boils_water_in_microwave, 16, 50853008).
raw_performed(i_p238_a7, participant_pours_water_into_cup_of_noodles, 17, 50860508).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 50869442).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 50897135).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 50921204).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 50925932).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 50940409).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 50972004).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 50975722).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 50994793).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 51021087).
raw_performed(i_p238_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 51026248).
raw_performed(i_p238_a7, participant_brings_all_items_to_dining_room_table, 28, 51069572).

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

