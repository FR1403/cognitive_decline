% ======================================================================
% Paziente 47
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

instance(i_p47_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p47_a7, participant_retrieves_materials_from_cupboard_a, 1, 37468298).
raw_performed(i_p47_a7, participant_fills_measuring_cup_with_water, 2, 37480809).
raw_performed(i_p47_a7, participant_fills_measuring_cup_with_water, 3, 37480823).
raw_performed(i_p47_a7, participant_fills_measuring_cup_with_water, 4, 37483286).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 5, 37491033).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 6, 37497996).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 7, 37517181).
raw_performed(i_p47_a7, participant_retrieves_materials_from_cupboard_a, 8, 37624726).
raw_performed(i_p47_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 37635858).
raw_performed(i_p47_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 37637228).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 11, 37639290).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 12, 37641047).
raw_performed(i_p47_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 37641047).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 14, 37649723).
raw_performed(i_p47_a7, participant_pours_glass_of_water, 15, 37649723).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 16, 37657365).
raw_performed(i_p47_a7, participant_pours_glass_of_water, 17, 37657365).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 18, 37664051).
raw_performed(i_p47_a7, participant_pours_glass_of_water, 19, 37664051).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 20, 37664065).
raw_performed(i_p47_a7, participant_returns_pitcher_of_water, 21, 37664065).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 22, 37666597).
raw_performed(i_p47_a7, participant_returns_pitcher_of_water, 23, 37666597).
raw_performed(i_p47_a7, participant_boils_water_in_microwave, 24, 37701503).
raw_performed(i_p47_a7, participant_pours_water_into_cup_of_noodles, 25, 37713869).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 37724460).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 37747296).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 37765857).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 37768225).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 37787654).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 37791068).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 37803592).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 37810358).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 37812337).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 37841628).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 37853631).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 37872976).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 37900448).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 37918110).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 37918469).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 37923283).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 37934000).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 37969068).
raw_performed(i_p47_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 37973267).
raw_performed(i_p47_a7, participant_brings_all_items_to_dining_room_table, 45, 37974562).

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

