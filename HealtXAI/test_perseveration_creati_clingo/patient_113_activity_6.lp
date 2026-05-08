% ======================================================================
% Paziente 113
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

instance(i_p113_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p113_a7, participant_retrieves_materials_from_cupboard_a, 1, 36094832).
raw_performed(i_p113_a7, participant_retrieves_materials_from_cupboard_a, 2, 36106562).
raw_performed(i_p113_a7, participant_fills_measuring_cup_with_water, 3, 36115912).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 4, 36120094).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 5, 36127559).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 6, 36131842).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 7, 36138922).
raw_performed(i_p113_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 36138922).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 9, 36140795).
raw_performed(i_p113_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 36140795).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 11, 36144569).
raw_performed(i_p113_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 36144569).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 13, 36164384).
raw_performed(i_p113_a7, participant_pours_glass_of_water, 14, 36164384).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 15, 36174882).
raw_performed(i_p113_a7, participant_pours_glass_of_water, 16, 36174882).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 17, 36189876).
raw_performed(i_p113_a7, participant_pours_glass_of_water, 18, 36189876).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 19, 36191168).
raw_performed(i_p113_a7, participant_returns_pitcher_of_water, 20, 36191168).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 21, 36197923).
raw_performed(i_p113_a7, participant_returns_pitcher_of_water, 22, 36197923).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 23, 36197941).
raw_performed(i_p113_a7, participant_returns_pitcher_of_water, 24, 36197941).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 25, 36215632).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 26, 36216485).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 27, 36226132).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 28, 36241853).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 29, 36244765).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 30, 36255988).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 31, 36276354).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 32, 36299802).
raw_performed(i_p113_a7, participant_boils_water_in_microwave, 33, 36311804).
raw_performed(i_p113_a7, participant_pours_water_into_cup_of_noodles, 34, 36334652).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 36338887).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 36339347).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 36346032).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 36362622).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 36379742).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 36401012).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 36456674).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 36466896).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 36507393).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 36518382).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45, 36527532).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 46, 36540209).
raw_performed(i_p113_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 47, 36542812).
raw_performed(i_p113_a7, participant_brings_all_items_to_dining_room_table, 48, 36550516).
raw_performed(i_p113_a7, participant_fills_measuring_cup_with_water, 49, 38406982).

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

