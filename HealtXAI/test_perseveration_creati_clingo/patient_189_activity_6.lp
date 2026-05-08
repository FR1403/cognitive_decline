% ======================================================================
% Paziente 189
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

instance(i_p189_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p189_a7, participant_retrieves_materials_from_cupboard_a, 1, 35946096).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 2, 35962067).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 3, 35968679).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 4, 35979158).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 5, 35979846).
raw_performed(i_p189_a7, participant_retrieves_materials_from_cupboard_a, 6, 35981824).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 7, 35981824).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 8, 35987225).
raw_performed(i_p189_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 35987225).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 10, 35990588).
raw_performed(i_p189_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 35990588).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 12, 35993606).
raw_performed(i_p189_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 35993606).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 14, 36007387).
raw_performed(i_p189_a7, participant_returns_pitcher_of_water, 15, 36007387).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 16, 36008928).
raw_performed(i_p189_a7, participant_returns_pitcher_of_water, 17, 36008928).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 18, 36010647).
raw_performed(i_p189_a7, participant_returns_pitcher_of_water, 19, 36010647).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 20, 36010665).
raw_performed(i_p189_a7, participant_returns_pitcher_of_water, 21, 36010665).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 22, 36011247).
raw_performed(i_p189_a7, participant_returns_pitcher_of_water, 23, 36011247).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 24, 36014659).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 25, 36015036).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 26, 36015866).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 27, 36016970).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 28, 36018562).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 29, 36022579).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 30, 36023064).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 31, 36024740).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 32, 36053013).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 33, 36066329).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 34, 36069108).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 35, 36084604).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 36, 36144467).
raw_performed(i_p189_a7, participant_boils_water_in_microwave, 37, 36157355).
raw_performed(i_p189_a7, participant_pours_water_into_cup_of_noodles, 38, 36177360).
raw_performed(i_p189_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 36195281).
raw_performed(i_p189_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 36204472).
raw_performed(i_p189_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 36232877).
raw_performed(i_p189_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 42, 36234589).
raw_performed(i_p189_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 43, 36251870).
raw_performed(i_p189_a7, participant_brings_all_items_to_dining_room_table, 44, 36283701).

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

