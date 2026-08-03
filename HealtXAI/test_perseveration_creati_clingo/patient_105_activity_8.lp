% ======================================================================
% Paziente 105
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

action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_moves_to_hallway_closet, 133523).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_chooses_correct_outfit_from_closet, 122151).
action_gap(pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing, participant_lays_out_clothes_on_living_room_couch, 216006).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p105_a8, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p105_a8, participant_moves_to_hallway_closet, 1, 50946397).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 2, 50946918).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 3, 50947684).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 4, 50972150).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 5, 50972165).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 6, 50972503).
raw_performed(i_p105_a8, participant_moves_to_hallway_closet, 7, 50974720).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 8, 50974720).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 9, 50992308).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 10, 50997828).
raw_performed(i_p105_a8, participant_moves_to_hallway_closet, 11, 51026869).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 12, 51027588).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 13, 51032881).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 14, 51036752).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 15, 51036773).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 16, 51036789).
raw_performed(i_p105_a8, participant_moves_to_hallway_closet, 17, 51042343).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 18, 51042343).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 19, 51044774).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 20, 51045159).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 21, 51047514).
raw_performed(i_p105_a8, participant_moves_to_hallway_closet, 22, 51049541).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 23, 51050408).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 24, 51055356).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 25, 51056565).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 26, 51057139).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 27, 51057532).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 28, 51067267).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 29, 51067650).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 30, 51071871).
raw_performed(i_p105_a8, participant_moves_to_hallway_closet, 31, 51073800).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 32, 51074319).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 33, 51080937).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 34, 51082292).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 35, 51084484).
raw_performed(i_p105_a8, participant_moves_to_hallway_closet, 36, 51085786).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 37, 51085786).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 38, 51091798).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 39, 51093459).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 40, 51093476).
raw_performed(i_p105_a8, participant_moves_to_hallway_closet, 41, 51100083).
raw_performed(i_p105_a8, participant_chooses_correct_outfit_from_closet, 42, 51100098).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 43, 51100123).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 44, 51102825).
raw_performed(i_p105_a8, participant_lays_out_clothes_on_living_room_couch, 45, 51103202).

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

