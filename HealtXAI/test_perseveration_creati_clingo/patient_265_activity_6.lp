% ======================================================================
% Paziente 265
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

instance(i_p265_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p265_a7, participant_retrieves_materials_from_cupboard_a, 1, 36190549).
raw_performed(i_p265_a7, participant_retrieves_materials_from_cupboard_a, 2, 36192159).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 3, 36256998).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 4, 36258182).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 5, 36260977).
raw_performed(i_p265_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 6, 36341175).
raw_performed(i_p265_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 36341883).
raw_performed(i_p265_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 36344268).
raw_performed(i_p265_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 36344997).
raw_performed(i_p265_a7, participant_pours_glass_of_water, 10, 36356810).
raw_performed(i_p265_a7, participant_pours_glass_of_water, 11, 36367846).
raw_performed(i_p265_a7, participant_pours_glass_of_water, 12, 36370102).
raw_performed(i_p265_a7, participant_returns_pitcher_of_water, 13, 36371079).
raw_performed(i_p265_a7, participant_returns_pitcher_of_water, 14, 36371587).
raw_performed(i_p265_a7, participant_returns_pitcher_of_water, 15, 36373890).
raw_performed(i_p265_a7, participant_returns_pitcher_of_water, 16, 36373926).
raw_performed(i_p265_a7, participant_returns_pitcher_of_water, 17, 36374176).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 18, 36382072).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 19, 36382874).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 20, 36385165).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 21, 36388018).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 22, 36410389).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 23, 36410877).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 24, 36413465).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 25, 36442867).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 26, 36447928).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 27, 36504649).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 28, 36509600).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 29, 36524002).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 30, 36530036).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 31, 36559648).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 32, 36567682).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 33, 36610667).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 34, 36647587).
raw_performed(i_p265_a7, participant_boils_water_in_microwave, 35, 36648745).
raw_performed(i_p265_a7, participant_pours_water_into_cup_of_noodles, 36, 36650393).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 36657406).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 36670266).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 36673456).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 36676659).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 36712603).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 36718599).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 36721830).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 44, 36725002).
raw_performed(i_p265_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 45, 36731188).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 46, 36733252).
raw_performed(i_p265_a7, participant_brings_all_items_to_dining_room_table, 47, 36735873).

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

