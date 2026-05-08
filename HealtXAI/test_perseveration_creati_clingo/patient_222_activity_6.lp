% ======================================================================
% Paziente 222
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

instance(i_p222_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 1, 50552353).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 2, 50552421).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 3, 50555570).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 4, 50563226).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 5, 50695525).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 6, 50721385).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 7, 50730422).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 8, 50731358).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 9, 50811588).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 10, 50813462).
raw_performed(i_p222_a7, participant_retrieves_materials_from_cupboard_a, 11, 50828728).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 12, 50834657).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 13, 50834861).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 14, 50835453).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 15, 50838823).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 16, 50838957).
raw_performed(i_p222_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 17, 50840074).
raw_performed(i_p222_a7, participant_pours_glass_of_water, 18, 50841223).
raw_performed(i_p222_a7, participant_pours_glass_of_water, 19, 50844405).
raw_performed(i_p222_a7, participant_pours_glass_of_water, 20, 50855478).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 21, 50856571).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 22, 50857185).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 23, 50860743).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 24, 50860797).
raw_performed(i_p222_a7, participant_returns_pitcher_of_water, 25, 50861201).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 26, 50862571).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 27, 50863699).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 28, 50864773).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 29, 50866643).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 30, 50903989).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 31, 50906115).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 32, 50930716).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 33, 50937472).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 34, 50959415).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 35, 50964204).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 36, 50970957).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 37, 50973899).
raw_performed(i_p222_a7, participant_boils_water_in_microwave, 38, 50994736).
raw_performed(i_p222_a7, participant_pours_water_into_cup_of_noodles, 39, 51010712).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 40, 51040540).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 41, 51041051).
raw_performed(i_p222_a7, participant_brings_all_items_to_dining_room_table, 42, 51042594).

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

