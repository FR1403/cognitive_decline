% ======================================================================
% Paziente 131
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

instance(i_p131_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p131_a7, participant_retrieves_materials_from_cupboard_a, 1, 53513159).
raw_performed(i_p131_a7, participant_retrieves_materials_from_cupboard_a, 2, 53513556).
raw_performed(i_p131_a7, participant_retrieves_materials_from_cupboard_a, 3, 53524085).
raw_performed(i_p131_a7, participant_fills_measuring_cup_with_water, 4, 53529169).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 5, 53613545).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 6, 53615027).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 7, 53617385).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 8, 53643381).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 9, 53649567).
raw_performed(i_p131_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 53649567).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 11, 53650923).
raw_performed(i_p131_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 53650923).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 13, 53653076).
raw_performed(i_p131_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 53653076).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 15, 53653867).
raw_performed(i_p131_a7, participant_pours_glass_of_water, 16, 53653867).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 17, 53662913).
raw_performed(i_p131_a7, participant_pours_glass_of_water, 18, 53662913).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 19, 53667945).
raw_performed(i_p131_a7, participant_returns_pitcher_of_water, 20, 53667945).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 21, 53671052).
raw_performed(i_p131_a7, participant_returns_pitcher_of_water, 22, 53671052).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 23, 53673659).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 24, 53677332).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 25, 53679667).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 26, 53680327).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 27, 53711295).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 28, 53715550).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 29, 53722727).
raw_performed(i_p131_a7, participant_boils_water_in_microwave, 30, 53733799).
raw_performed(i_p131_a7, participant_fills_measuring_cup_with_water, 31, 53748843).
raw_performed(i_p131_a7, participant_pours_water_into_cup_of_noodles, 32, 53801617).
raw_performed(i_p131_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 53817244).
raw_performed(i_p131_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 53829195).
raw_performed(i_p131_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 53834041).
raw_performed(i_p131_a7, participant_brings_all_items_to_dining_room_table, 36, 53842881).

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

