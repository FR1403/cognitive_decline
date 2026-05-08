% ======================================================================
% Paziente 194
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

instance(i_p194_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p194_a7, participant_retrieves_materials_from_cupboard_a, 1, 37232037).
raw_performed(i_p194_a7, participant_retrieves_materials_from_cupboard_a, 2, 37247076).
raw_performed(i_p194_a7, participant_retrieves_materials_from_cupboard_a, 3, 37262086).
raw_performed(i_p194_a7, participant_retrieves_materials_from_cupboard_a, 4, 37273976).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 5, 37324005).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 6, 37328095).
raw_performed(i_p194_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 7, 37474037).
raw_performed(i_p194_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 8, 37477058).
raw_performed(i_p194_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 37480150).
raw_performed(i_p194_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 37487050).
raw_performed(i_p194_a7, participant_pours_glass_of_water, 11, 37489048).
raw_performed(i_p194_a7, participant_returns_pitcher_of_water, 12, 37510053).
raw_performed(i_p194_a7, participant_returns_pitcher_of_water, 13, 37515030).
raw_performed(i_p194_a7, participant_returns_pitcher_of_water, 14, 37517449).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 15, 37519098).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 16, 37526445).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 17, 37663091).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 18, 37665035).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 19, 37813327).
raw_performed(i_p194_a7, participant_boils_water_in_microwave, 20, 37819036).
raw_performed(i_p194_a7, participant_pours_water_into_cup_of_noodles, 21, 37819085).
raw_performed(i_p194_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 22, 37835042).
raw_performed(i_p194_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 23, 37873179).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 24, 37879094).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 25, 37882239).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 26, 37882612).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 27, 37883034).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 28, 37888949).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 29, 37889901).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 30, 37892227).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 31, 37898077).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 32, 37900476).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 33, 37901012).
raw_performed(i_p194_a7, participant_brings_all_items_to_dining_room_table, 34, 37902186).

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

