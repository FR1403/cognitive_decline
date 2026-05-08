% ======================================================================
% Paziente 60
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

instance(i_p60_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p60_a7, participant_retrieves_materials_from_cupboard_a, 1, 50369682).
raw_performed(i_p60_a7, participant_fills_measuring_cup_with_water, 2, 50387776).
raw_performed(i_p60_a7, participant_fills_measuring_cup_with_water, 3, 50390271).
raw_performed(i_p60_a7, participant_fills_measuring_cup_with_water, 4, 50392747).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 5, 50398944).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 6, 50403285).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 7, 50421145).
raw_performed(i_p60_a7, participant_retrieves_materials_from_cupboard_a, 8, 50424934).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 9, 50424934).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 10, 50428855).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 11, 50431732).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 12, 50441694).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 13, 50466879).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 14, 50482238).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 15, 50499758).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 16, 50504632).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 17, 50505252).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 18, 50524621).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 19, 50532743).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 20, 50536234).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 21, 50543561).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 22, 50581809).
raw_performed(i_p60_a7, participant_boils_water_in_microwave, 23, 50593154).
raw_performed(i_p60_a7, participant_pours_water_into_cup_of_noodles, 24, 50612342).
raw_performed(i_p60_a7, participant_pours_water_into_cup_of_noodles, 25, 50620555).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 50633137).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 50712311).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 50735619).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 50738346).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 50762079).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 50785714).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 50791817).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 50805130).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 50814390).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 50818285).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 50843252).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 50855812).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 50874755).
raw_performed(i_p60_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 50876444).
raw_performed(i_p60_a7, participant_brings_all_items_to_dining_room_table, 40, 50883587).
raw_performed(i_p60_a7, participant_brings_all_items_to_dining_room_table, 41, 50903371).

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

