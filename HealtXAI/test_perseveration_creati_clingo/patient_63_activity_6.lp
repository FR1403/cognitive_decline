% ======================================================================
% Paziente 63
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

instance(i_p63_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p63_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 1, 51866050).
raw_performed(i_p63_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 2, 51866532).
raw_performed(i_p63_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 3, 51871617).
raw_performed(i_p63_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 4, 51871726).
raw_performed(i_p63_a7, participant_pours_glass_of_water, 5, 51875181).
raw_performed(i_p63_a7, participant_pours_glass_of_water, 6, 51880023).
raw_performed(i_p63_a7, participant_pours_glass_of_water, 7, 51883435).
raw_performed(i_p63_a7, participant_pours_glass_of_water, 8, 51886041).
raw_performed(i_p63_a7, participant_pours_glass_of_water, 9, 51887725).
raw_performed(i_p63_a7, participant_pours_glass_of_water, 10, 51892969).
raw_performed(i_p63_a7, participant_returns_pitcher_of_water, 11, 51894194).
raw_performed(i_p63_a7, participant_returns_pitcher_of_water, 12, 51894875).
raw_performed(i_p63_a7, participant_returns_pitcher_of_water, 13, 51895820).
raw_performed(i_p63_a7, participant_returns_pitcher_of_water, 14, 51897477).
raw_performed(i_p63_a7, participant_returns_pitcher_of_water, 15, 51897923).
raw_performed(i_p63_a7, participant_brings_all_items_to_dining_room_table, 16, 52180130).
raw_performed(i_p63_a7, participant_brings_all_items_to_dining_room_table, 17, 52180413).
raw_performed(i_p63_a7, participant_brings_all_items_to_dining_room_table, 18, 52184288).
raw_performed(i_p63_a7, participant_brings_all_items_to_dining_room_table, 19, 52287217).
raw_performed(i_p63_a7, participant_brings_all_items_to_dining_room_table, 20, 52287300).
raw_performed(i_p63_a7, participant_brings_all_items_to_dining_room_table, 21, 52289910).

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

