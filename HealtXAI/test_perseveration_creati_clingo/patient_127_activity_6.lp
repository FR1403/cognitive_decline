% ======================================================================
% Paziente 127
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

instance(i_p127_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 1, 36708080).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 2, 36716070).
raw_performed(i_p127_a7, participant_fills_measuring_cup_with_water, 3, 36783996).
raw_performed(i_p127_a7, participant_fills_measuring_cup_with_water, 4, 36787014).
raw_performed(i_p127_a7, participant_fills_measuring_cup_with_water, 5, 36788056).
raw_performed(i_p127_a7, participant_fills_measuring_cup_with_water, 6, 36819866).
raw_performed(i_p127_a7, participant_fills_measuring_cup_with_water, 7, 36821094).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 8, 36927086).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 9, 36930127).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 10, 36935123).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 11, 37058609).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 12, 37068004).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 13, 37071071).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 14, 37146017).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 15, 37152003).
raw_performed(i_p127_a7, participant_pours_water_into_cup_of_noodles, 16, 37153039).
raw_performed(i_p127_a7, participant_pours_water_into_cup_of_noodles, 17, 37168034).
raw_performed(i_p127_a7, participant_pours_water_into_cup_of_noodles, 18, 37179058).
raw_performed(i_p127_a7, participant_pours_water_into_cup_of_noodles, 19, 37185059).
raw_performed(i_p127_a7, participant_fills_measuring_cup_with_water, 20, 37186081).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 21, 37194095).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 22, 37197842).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 37206025).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 24, 37246609).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 25, 37251834).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 37258039).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 37264003).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 37289838).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 37306602).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 37314989).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 31, 37336964).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 32, 37341012).
raw_performed(i_p127_a7, participant_boils_water_in_microwave, 33, 37341053).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 37349077).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 37370073).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 37383016).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 37385664).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 37389607).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 37399803).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 37407074).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 37424004).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 37430029).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 37434432).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 37441615).
raw_performed(i_p127_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45, 37450072).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 46, 37455071).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 47, 37457002).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 48, 37477852).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 49, 37489093).
raw_performed(i_p127_a7, participant_retrieves_materials_from_cupboard_a, 50, 37493024).

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

