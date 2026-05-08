% ======================================================================
% Paziente 138
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

instance(i_p138_a14, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p138_a14, participant_moves_to_the_kitchen, 1, 38840784).
raw_performed(i_p138_a14, participant_locates_pot, 2, 38843577).
raw_performed(i_p138_a14, participant_removes_materials_from_cupboard, 3, 38847062).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 4, 38855132).
raw_performed(i_p138_a14, participant_turns_on_stove, 5, 38857005).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 6, 38857725).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 7, 38858199).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 8, 38860008).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 9, 38861004).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 10, 38864190).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 11, 38866099).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 12, 38867056).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 13, 38869076).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 14, 38869097).
raw_performed(i_p138_a14, participant_fills_pot_with_water, 15, 38870045).
raw_performed(i_p138_a14, participant_puts_sugar_in_oatmeal, 16, 38974083).
raw_performed(i_p138_a14, participant_puts_raisin_in_oatmeal, 17, 38977035).
raw_performed(i_p138_a14, participant_puts_sugar_in_oatmeal, 18, 38982093).
raw_performed(i_p138_a14, participant_puts_raisin_in_oatmeal, 19, 38982093).
raw_performed(i_p138_a14, participant_puts_sugar_in_oatmeal, 20, 38989789).
raw_performed(i_p138_a14, participant_puts_raisin_in_oatmeal, 21, 38989789).
raw_performed(i_p138_a14, participant_turns_stove_off, 22, 39153936).

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

