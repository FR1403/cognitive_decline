% ======================================================================
% Paziente 312
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

instance(i_p312_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p312_a7, participant_retrieves_materials_from_cupboard_a, 1, 51674451).
raw_performed(i_p312_a7, participant_fills_measuring_cup_with_water, 2, 51692087).
raw_performed(i_p312_a7, participant_fills_measuring_cup_with_water, 3, 51692104).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 4, 51701009).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 5, 51709902).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 6, 51721020).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 7, 51728886).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 8, 51752027).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 9, 51765751).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 10, 51787853).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 11, 51837182).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 12, 51844424).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 13, 51852962).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 14, 51873687).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 15, 51883354).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 16, 51895315).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 17, 51898550).
raw_performed(i_p312_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 18, 51898550).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 19, 51903454).
raw_performed(i_p312_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 20, 51903454).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 21, 51904994).
raw_performed(i_p312_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 22, 51904994).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 23, 51908097).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 24, 51911508).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 25, 51916534).
raw_performed(i_p312_a7, participant_boils_water_in_microwave, 26, 51928605).
raw_performed(i_p312_a7, participant_pours_glass_of_water, 27, 51948130).
raw_performed(i_p312_a7, participant_pours_glass_of_water, 28, 51957122).
raw_performed(i_p312_a7, participant_returns_pitcher_of_water, 29, 51959420).
raw_performed(i_p312_a7, participant_returns_pitcher_of_water, 30, 51962540).
raw_performed(i_p312_a7, participant_returns_pitcher_of_water, 31, 51963155).
raw_performed(i_p312_a7, participant_pours_water_into_cup_of_noodles, 32, 51973169).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 33, 51981143).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 34, 51994350).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 35, 52018316).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 52025722).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 52033474).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 38, 52092140).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 39, 52101915).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 40, 52112283).
raw_performed(i_p312_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 41, 52125755).
raw_performed(i_p312_a7, participant_brings_all_items_to_dining_room_table, 42, 52127535).

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

