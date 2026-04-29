% ======================================================================
% Paziente 12
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

instance(i_p12_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p12_a7, participant_retrieves_materials_from_cupboard_a, 1, 35491006).
raw_performed(i_p12_a7, participant_retrieves_materials_from_cupboard_a, 2, 35503764).
raw_performed(i_p12_a7, participant_retrieves_materials_from_cupboard_a, 3, 35503788).
raw_performed(i_p12_a7, participant_fills_measuring_cup_with_water, 4, 35514279).
raw_performed(i_p12_a7, participant_fills_measuring_cup_with_water, 5, 35514305).
raw_performed(i_p12_a7, participant_boils_water_in_microwave, 6, 35518761).
raw_performed(i_p12_a7, participant_boils_water_in_microwave, 7, 35525874).
raw_performed(i_p12_a7, participant_boils_water_in_microwave, 8, 35603063).
raw_performed(i_p12_a7, participant_boils_water_in_microwave, 9, 35608597).
raw_performed(i_p12_a7, participant_boils_water_in_microwave, 10, 35611783).
raw_performed(i_p12_a7, participant_pours_water_into_cup_of_noodles, 11, 35614532).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 12, 35624044).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 13, 35628479).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 14, 35639290).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 15, 35659070).
raw_performed(i_p12_a7, participant_retrieves_materials_from_cupboard_a, 16, 35661720).
raw_performed(i_p12_a7, participant_retrieves_materials_from_cupboard_a, 17, 35669832).
raw_performed(i_p12_a7, participant_retrieves_materials_from_cupboard_a, 18, 35673094).
raw_performed(i_p12_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 19, 35681189).
raw_performed(i_p12_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 20, 35682714).
raw_performed(i_p12_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 21, 35686933).
raw_performed(i_p12_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 22, 35686981).
raw_performed(i_p12_a7, participant_pours_glass_of_water, 23, 35695301).
raw_performed(i_p12_a7, participant_returns_pitcher_of_water, 24, 35698265).
raw_performed(i_p12_a7, participant_returns_pitcher_of_water, 25, 35699271).
raw_performed(i_p12_a7, participant_returns_pitcher_of_water, 26, 35702270).
raw_performed(i_p12_a7, participant_brings_all_items_to_dining_room_table, 27, 35706642).
raw_performed(i_p12_a7, participant_brings_all_items_to_dining_room_table, 28, 35707272).
raw_performed(i_p12_a7, participant_brings_all_items_to_dining_room_table, 29, 35709808).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 35714081).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 35714105).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 32, 35728885).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 35744417).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 35760437).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 35768562).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 35788030).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 35807955).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 35838060).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 35842654).
raw_performed(i_p12_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 35846023).
raw_performed(i_p12_a7, participant_brings_all_items_to_dining_room_table, 41, 35863853).
raw_performed(i_p12_a7, participant_brings_all_items_to_dining_room_table, 42, 35863879).
raw_performed(i_p12_a7, participant_brings_all_items_to_dining_room_table, 43, 35864464).
raw_performed(i_p12_a7, participant_brings_all_items_to_dining_room_table, 44, 35865482).

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

