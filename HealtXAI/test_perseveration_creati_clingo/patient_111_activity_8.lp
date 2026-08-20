% ======================================================================
% Paziente 111
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

instance(i_p111_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p111_a8, participant_moves_to_hallway_closet, 1, 36806231).
raw_performed(i_p111_a8, participant_moves_to_hallway_closet, 2, 36806983).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 3, 36808380).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 4, 36809293).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 5, 36812487).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 6, 36815664).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 7, 36822615).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 8, 36826255).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 9, 36829916).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 10, 36837073).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 11, 36842256).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 12, 36848649).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 13, 36856167).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 14, 36859363).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 15, 36865736).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 16, 36874230).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 17, 36877477).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 18, 36935255).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 19, 36936393).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 20, 36938296).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 21, 36961090).
raw_performed(i_p111_a8, participant_lays_out_clothes_on_living_room_couch, 22, 36967442).
raw_performed(i_p111_a8, participant_moves_to_hallway_closet, 23, 36971391).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 24, 36972379).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 25, 36977049).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 26, 37009299).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 27, 37015447).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 28, 37017153).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 29, 37018340).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 30, 37046082).
raw_performed(i_p111_a8, participant_chooses_correct_outfit_from_closet, 31, 37048258).
raw_performed(i_p111_a8, participant_lays_out_clothes_on_living_room_couch, 32, 37049687).
raw_performed(i_p111_a8, participant_lays_out_clothes_on_living_room_couch, 33, 37053849).

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

