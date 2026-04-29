% ======================================================================
% Paziente 4
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

instance(i_p4_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p4_a9, participant_moves_to_the_kitchen, 1, 36264870).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 2, 36265495).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 3, 36271118).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 4, 36278072).
raw_performed(i_p4_a9, participant_moves_to_the_dining_room, 5, 36280386).
raw_performed(i_p4_a9, participant_removes_old_light_bulb, 6, 36282863).
raw_performed(i_p4_a9, participant_checks_wattage, 7, 36303660).
raw_performed(i_p4_a9, participant_checks_wattage, 8, 36307448).
raw_performed(i_p4_a9, participant_checks_wattage, 9, 36313294).
raw_performed(i_p4_a9, participant_moves_to_the_kitchen, 10, 36317231).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 11, 36317895).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 12, 36326405).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 13, 36329547).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 14, 36351735).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 15, 36356009).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 16, 36358015).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 17, 36365223).
raw_performed(i_p4_a9, participant_retrieves_light_bulbs_from_cabinet_b, 18, 36375089).
raw_performed(i_p4_a9, participant_moves_to_the_dining_room, 19, 36376137).
raw_performed(i_p4_a9, participant_replaces_the_bulb, 20, 36378273).
raw_performed(i_p4_a9, participant_throws_away_old_light_bulb, 21, 36385609).

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

