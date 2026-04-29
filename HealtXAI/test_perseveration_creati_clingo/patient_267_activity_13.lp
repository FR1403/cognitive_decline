% ======================================================================
% Paziente 267
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

instance(i_p267_a14, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p267_a14, participant_moves_to_the_kitchen, 1, 53301566).
raw_performed(i_p267_a14, participant_removes_materials_from_cupboard, 2, 53312663).
raw_performed(i_p267_a14, participant_removes_materials_from_cupboard, 3, 53323263).
raw_performed(i_p267_a14, participant_fills_pot_with_water, 4, 53327892).
raw_performed(i_p267_a14, participant_fills_pot_with_water, 5, 53330348).
raw_performed(i_p267_a14, participant_fills_pot_with_water, 6, 53332810).
raw_performed(i_p267_a14, participant_fills_pot_with_water, 7, 53335310).
raw_performed(i_p267_a14, participant_fills_pot_with_water, 8, 53337777).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 9, 53360860).
raw_performed(i_p267_a14, participant_turns_on_stove, 10, 53364817).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 11, 53366346).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 12, 53380745).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 13, 53389745).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 14, 53393983).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 15, 53411084).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 16, 53416570).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 17, 53453387).
raw_performed(i_p267_a14, participant_puts_oatmeal_into_pot, 18, 53511516).
raw_performed(i_p267_a14, participant_turns_stove_off, 19, 53542021).
raw_performed(i_p267_a14, participant_puts_sugar_in_oatmeal, 20, 53702478).
raw_performed(i_p267_a14, participant_puts_sugar_in_oatmeal, 21, 53732389).

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

