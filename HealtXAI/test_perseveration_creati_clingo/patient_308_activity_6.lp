% ======================================================================
% Paziente 308
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

instance(i_p308_a7, answer_the_phone_and_respond_to_questions_pertaining_to_the_video_from_task_4).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p308_a7, participant_retrieves_materials_from_cupboard_a, 1, 36641667).
raw_performed(i_p308_a7, participant_fills_measuring_cup_with_water, 2, 36663181).
raw_performed(i_p308_a7, participant_fills_measuring_cup_with_water, 3, 36682014).
raw_performed(i_p308_a7, participant_fills_measuring_cup_with_water, 4, 36691243).
raw_performed(i_p308_a7, participant_fills_measuring_cup_with_water, 5, 36709111).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 6, 36745564).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 7, 36746606).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 8, 36747246).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 9, 36747885).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 10, 36749344).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 11, 36751496).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 12, 36752065).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 13, 36754632).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 14, 36757764).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 15, 36775475).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 16, 36800555).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 17, 36805006).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 18, 36814605).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 19, 36833885).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 20, 36838095).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 21, 36838743).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 22, 36846863).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 23, 36868825).
raw_performed(i_p308_a7, participant_boils_water_in_microwave, 24, 36873201).
raw_performed(i_p308_a7, participant_pours_water_into_cup_of_noodles, 25, 36908474).
raw_performed(i_p308_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 26, 36963644).
raw_performed(i_p308_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 27, 37022013).
raw_performed(i_p308_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 28, 37030433).
raw_performed(i_p308_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 29, 37032312).
raw_performed(i_p308_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 30, 37061201).
raw_performed(i_p308_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 31, 37062665).
raw_performed(i_p308_a7, participant_brings_all_items_to_dining_room_table, 32, 37074599).
raw_performed(i_p308_a7, participant_brings_all_items_to_dining_room_table, 33, 37106022).

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

