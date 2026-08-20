% ======================================================================
% Paziente 288
% Attivita: Pick a complete outfit for an interview from a selection of clothing.
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

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 128883).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 125588).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 178354).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p288_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p288_a8, participant_moves_to_hallway_closet, 1, 51250885).
raw_performed(i_p288_a8, participant_moves_to_hallway_closet, 2, 51250903).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 3, 51250915).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 4, 51274154).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 5, 51276712).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 6, 51276739).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 7, 51280663).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 8, 51281072).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 9, 51292742).
raw_performed(i_p288_a8, participant_moves_to_hallway_closet, 10, 51293582).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 11, 51295712).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 12, 51320144).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 13, 51335032).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 14, 51353843).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 15, 51354445).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 16, 51354882).
raw_performed(i_p288_a8, participant_moves_to_hallway_closet, 17, 51365306).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 18, 51365324).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 19, 51409929).
raw_performed(i_p288_a8, participant_moves_to_hallway_closet, 20, 51447468).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 21, 51447826).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 22, 51449272).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 23, 51479074).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 24, 51489043).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 25, 51533369).
raw_performed(i_p288_a8, participant_chooses_correct_outfit_from_closet, 26, 51552272).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 27, 51553054).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 28, 51560442).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 29, 51560849).
raw_performed(i_p288_a8, participant_lays_out_clothes_on_living_room_couch, 30, 51567220).

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

