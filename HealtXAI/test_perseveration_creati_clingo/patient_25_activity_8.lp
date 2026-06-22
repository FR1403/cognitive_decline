% ======================================================================
% Paziente 25
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

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 133265).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 137222).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 216006).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p25_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p25_a8, participant_moves_to_hallway_closet, 1, 54024318).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 2, 54025965).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 3, 54027941).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 4, 54029178).
raw_performed(i_p25_a8, participant_moves_to_hallway_closet, 5, 54099430).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 6, 54099595).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 7, 54101468).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 8, 54109408).
raw_performed(i_p25_a8, participant_moves_to_hallway_closet, 9, 54110500).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 10, 54110661).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 11, 54115910).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 12, 54148128).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 13, 54151432).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 14, 54151476).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 15, 54162065).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 16, 54162319).
raw_performed(i_p25_a8, participant_moves_to_hallway_closet, 17, 54164288).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 18, 54164447).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 19, 54169177).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 20, 54170961).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 21, 54189197).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 22, 54193562).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 23, 54196037).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 24, 54197767).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 25, 54199503).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 26, 54199944).
raw_performed(i_p25_a8, participant_moves_to_hallway_closet, 27, 54204050).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 28, 54204758).
raw_performed(i_p25_a8, participant_chooses_correct_outfit_from_closet, 29, 54211958).
raw_performed(i_p25_a8, participant_lays_out_clothes_on_living_room_couch, 30, 54214932).

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

