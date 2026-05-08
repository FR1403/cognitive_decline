% ======================================================================
% Paziente 100
% Attività: Sort and fold a basketful of clothing containing men's, women's and children's articles.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

action(participant_moves_to_the_hallway_closet).
action(participant_locates_the_laundry_basket).
action(participant_moves_to_the_couch).
action(participant_sortsfolds_the_laundry).

action_type(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 7).
action_type(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 10).
action_type(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 7).
action_type(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 5).

expected_count(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 1).
expected_count(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 1).
expected_count(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 1).
expected_count(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 1).

action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 240000).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 18000).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 240000).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p100_a14, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p100_a14, participant_moves_to_the_kitchen, 1, 57524082).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 2, 57534070).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 3, 57542973).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 4, 57548333).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 5, 57555076).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 6, 57558756).
raw_performed(i_p100_a14, participant_turns_on_stove, 7, 57627486).
raw_performed(i_p100_a14, participant_removes_materials_from_cupboard, 8, 57803734).
raw_performed(i_p100_a14, participant_removes_materials_from_cupboard, 9, 57804054).
raw_performed(i_p100_a14, participant_removes_materials_from_cupboard, 10, 57809048).
raw_performed(i_p100_a14, participant_turns_stove_off, 11, 57841475).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 12, 57853696).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 13, 57856554).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 14, 57859071).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 15, 57867462).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 16, 57869421).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 17, 57874737).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 18, 57877496).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 19, 57881413).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 20, 57886056).
raw_performed(i_p100_a14, participant_fills_pot_with_water, 21, 57889065).
raw_performed(i_p100_a14, participant_removes_materials_from_cupboard, 22, 57902069).
raw_performed(i_p100_a14, participant_removes_materials_from_cupboard, 23, 57905029).
raw_performed(i_p100_a14, participant_throws_raisin_box_in_trashcan, 24, 57910005).

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

