% ======================================================================
% Paziente 239
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

instance(i_p239_a9, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p239_a9, participant_removes_old_light_bulb, 1, 54816460).
raw_performed(i_p239_a9, participant_removes_old_light_bulb, 2, 54824365).
raw_performed(i_p239_a9, participant_removes_old_light_bulb, 3, 54824740).
raw_performed(i_p239_a9, participant_moves_to_the_kitchen, 4, 54825061).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 5, 54826021).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 6, 54835561).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 7, 54837945).
raw_performed(i_p239_a9, participant_throws_away_old_light_bulb, 8, 54839062).
raw_performed(i_p239_a9, participant_throws_away_old_light_bulb, 9, 54839098).
raw_performed(i_p239_a9, participant_throws_away_old_light_bulb, 10, 54843712).
raw_performed(i_p239_a9, participant_throws_away_old_light_bulb, 11, 54844043).
raw_performed(i_p239_a9, participant_moves_to_the_dining_room, 12, 54846799).
raw_performed(i_p239_a9, participant_replaces_the_bulb, 13, 54846799).
raw_performed(i_p239_a9, participant_replaces_the_bulb, 14, 54851073).
raw_performed(i_p239_a9, participant_removes_old_light_bulb, 15, 54885011).
raw_performed(i_p239_a9, participant_removes_old_light_bulb, 16, 54893088).
raw_performed(i_p239_a9, participant_moves_to_the_kitchen, 17, 54895061).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 18, 54895061).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 19, 54895075).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 20, 54909010).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 21, 54914275).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 22, 54917831).
raw_performed(i_p239_a9, participant_moves_to_the_dining_room, 23, 54925066).
raw_performed(i_p239_a9, participant_retrieves_light_bulbs_from_cabinet_b, 24, 54925503).
raw_performed(i_p239_a9, participant_replaces_the_bulb, 25, 54925967).
raw_performed(i_p239_a9, participant_replaces_the_bulb, 26, 54935027).
raw_performed(i_p239_a9, participant_replaces_the_bulb, 27, 54938012).

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

