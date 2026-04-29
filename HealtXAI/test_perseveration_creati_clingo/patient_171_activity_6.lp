% ======================================================================
% Paziente 171
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

instance(i_p171_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p171_a7, participant_retrieves_materials_from_cupboard_a, 1, 54085923).
raw_performed(i_p171_a7, participant_retrieves_materials_from_cupboard_a, 2, 54091695).
raw_performed(i_p171_a7, participant_retrieves_materials_from_cupboard_a, 3, 54095530).
raw_performed(i_p171_a7, participant_fills_measuring_cup_with_water, 4, 54111277).
raw_performed(i_p171_a7, participant_fills_measuring_cup_with_water, 5, 54115253).
raw_performed(i_p171_a7, participant_fills_measuring_cup_with_water, 6, 54200783).
raw_performed(i_p171_a7, participant_boils_water_in_microwave, 7, 54255714).
raw_performed(i_p171_a7, participant_boils_water_in_microwave, 8, 54259852).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 9, 54322675).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 10, 54323038).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 11, 54323791).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 12, 54325708).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 13, 54341189).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 14, 54341581).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 15, 54342776).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 16, 54344252).
raw_performed(i_p171_a7, participant_boils_water_in_microwave, 17, 54452652).
raw_performed(i_p171_a7, participant_boils_water_in_microwave, 18, 54456793).
raw_performed(i_p171_a7, participant_pours_water_into_cup_of_noodles, 19, 54457875).
raw_performed(i_p171_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 20, 54475801).
raw_performed(i_p171_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 21, 54491954).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 22, 54502494).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 23, 54503228).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 24, 54503814).
raw_performed(i_p171_a7, participant_brings_all_items_to_dining_room_table, 25, 54505643).

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

