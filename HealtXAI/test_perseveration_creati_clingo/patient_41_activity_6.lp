% ======================================================================
% Paziente 41
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

instance(i_p41_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p41_a7, participant_retrieves_materials_from_cupboard_a, 1, 35806032).
raw_performed(i_p41_a7, participant_fills_measuring_cup_with_water, 2, 35832817).
raw_performed(i_p41_a7, participant_fills_measuring_cup_with_water, 3, 35835366).
raw_performed(i_p41_a7, participant_fills_measuring_cup_with_water, 4, 35837725).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 5, 35840221).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 6, 35864777).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 7, 35866056).
raw_performed(i_p41_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 35893441).
raw_performed(i_p41_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 35896305).
raw_performed(i_p41_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 35896900).
raw_performed(i_p41_a7, participant_pours_glass_of_water, 11, 35897267).
raw_performed(i_p41_a7, participant_pours_glass_of_water, 12, 35909074).
raw_performed(i_p41_a7, participant_returns_pitcher_of_water, 13, 35912526).
raw_performed(i_p41_a7, participant_returns_pitcher_of_water, 14, 35915440).
raw_performed(i_p41_a7, participant_returns_pitcher_of_water, 15, 35915965).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 16, 35951727).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 17, 35955320).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 18, 35958478).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 19, 35963503).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 20, 35984179).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 21, 35986684).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 22, 36061498).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 23, 36065101).
raw_performed(i_p41_a7, participant_boils_water_in_microwave, 24, 36067505).
raw_performed(i_p41_a7, participant_pours_water_into_cup_of_noodles, 25, 36076822).
raw_performed(i_p41_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 36087121).
raw_performed(i_p41_a7, participant_brings_all_items_to_dining_room_table, 27, 36094121).
raw_performed(i_p41_a7, participant_brings_all_items_to_dining_room_table, 28, 36094710).
raw_performed(i_p41_a7, participant_brings_all_items_to_dining_room_table, 29, 36095221).
raw_performed(i_p41_a7, participant_brings_all_items_to_dining_room_table, 30, 36096805).

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

