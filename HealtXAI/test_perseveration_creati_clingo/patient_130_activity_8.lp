% ======================================================================
% Paziente 130
% Attività: Pick a complete outfit for an interview from a selection of clothing.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

action(participant_moves_to_hallway_closet).
action(participant_chooses_correct_outfit_from_closet).
action(participant_lays_out_clothes_on_living_room_couch).

action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 7).
action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 5).
action_type(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 5).

expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 1).
expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 1).
expected_count(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 1).

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 240000).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 240000).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p130_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p130_a9, participant_removes_old_light_bulb, 1, 56216090).
raw_performed(i_p130_a9, participant_removes_old_light_bulb, 2, 56222015).
raw_performed(i_p130_a9, participant_moves_to_the_kitchen, 3, 56223045).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 56224060).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5, 56263068).
raw_performed(i_p130_a9, participant_moves_to_the_dining_room, 6, 56264029).
raw_performed(i_p130_a9, participant_moves_to_the_dining_room, 7, 56265033).
raw_performed(i_p130_a9, participant_replaces_the_bulb, 8, 56274000).
raw_performed(i_p130_a9, participant_moves_to_the_kitchen, 9, 56317013).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 10, 56317099).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 56329086).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 56333019).
raw_performed(i_p130_a9, participant_moves_to_the_dining_room, 13, 56334065).
raw_performed(i_p130_a9, participant_moves_to_the_dining_room, 14, 56336095).
raw_performed(i_p130_a9, participant_moves_to_the_kitchen, 15, 56357092).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16, 56358079).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 17, 56376085).
raw_performed(i_p130_a9, participant_moves_to_the_dining_room, 18, 56393006).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 19, 56393064).
raw_performed(i_p130_a9, participant_moves_to_the_dining_room, 20, 56394024).
raw_performed(i_p130_a9, participant_moves_to_the_kitchen, 21, 56480033).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 22, 56481039).
raw_performed(i_p130_a9, participant_retrieves_light_bulbs_from_cabinet_b, 23, 56507040).
raw_performed(i_p130_a9, participant_moves_to_the_dining_room, 24, 56508084).
raw_performed(i_p130_a9, participant_moves_to_the_dining_room, 25, 56510007).
raw_performed(i_p130_a9, participant_replaces_the_bulb, 26, 56512017).
raw_performed(i_p130_a9, participant_replaces_the_bulb, 27, 56524006).

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

