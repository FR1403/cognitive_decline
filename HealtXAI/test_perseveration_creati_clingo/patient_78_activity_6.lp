% ======================================================================
% Paziente 78
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

instance(i_p78_a7, pick_a_complete_outfit_for_an_interview_from_a_selection_of_clothing).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p78_a7, participant_retrieves_materials_from_cupboard_a, 1, 49746985).
raw_performed(i_p78_a7, participant_fills_measuring_cup_with_water, 2, 49772798).
raw_performed(i_p78_a7, participant_fills_measuring_cup_with_water, 3, 49776655).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 4, 49822250).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 5, 49826281).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 6, 49850396).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 7, 49874011).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 8, 49889558).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 9, 49906701).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 10, 49938341).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 11, 49946687).
raw_performed(i_p78_a7, participant_boils_water_in_microwave, 12, 50030297).
raw_performed(i_p78_a7, participant_pours_water_into_cup_of_noodles, 13, 50041839).
raw_performed(i_p78_a7, participant_pours_water_into_cup_of_noodles, 14, 50054825).
raw_performed(i_p78_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 15, 50069924).
raw_performed(i_p78_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 16, 50075186).
raw_performed(i_p78_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 17, 50173205).
raw_performed(i_p78_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 18, 50244000).
raw_performed(i_p78_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 19, 50269388).
raw_performed(i_p78_a7, participant_brings_all_items_to_dining_room_table, 20, 50288910).

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

