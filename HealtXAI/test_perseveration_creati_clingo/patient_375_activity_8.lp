% ======================================================================
% Paziente 375
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

instance(i_p375_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p375_a8, participant_moves_to_hallway_closet, 1, 51533149).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 2, 51533858).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 3, 51538109).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 4, 51546392).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 5, 51553226).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 6, 51559223).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 7, 51559825).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 8, 51569793).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 9, 51576393).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 10, 51584793).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 11, 51594806).
raw_performed(i_p375_a8, participant_lays_out_clothes_on_living_room_couch, 12, 51599860).
raw_performed(i_p375_a8, participant_lays_out_clothes_on_living_room_couch, 13, 51602900).
raw_performed(i_p375_a8, participant_lays_out_clothes_on_living_room_couch, 14, 51604769).
raw_performed(i_p375_a8, participant_moves_to_hallway_closet, 15, 51605617).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 16, 51605993).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 17, 51618612).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 18, 51624942).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 19, 51628280).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 20, 51628843).
raw_performed(i_p375_a8, participant_lays_out_clothes_on_living_room_couch, 21, 51630243).
raw_performed(i_p375_a8, participant_lays_out_clothes_on_living_room_couch, 22, 51632604).
raw_performed(i_p375_a8, participant_lays_out_clothes_on_living_room_couch, 23, 51638824).
raw_performed(i_p375_a8, participant_moves_to_hallway_closet, 24, 51639605).
raw_performed(i_p375_a8, participant_moves_to_hallway_closet, 25, 51640157).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 26, 51655112).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 27, 51668749).
raw_performed(i_p375_a8, participant_chooses_correct_outfit_from_closet, 28, 51669143).
raw_performed(i_p375_a8, participant_lays_out_clothes_on_living_room_couch, 29, 51670771).

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

