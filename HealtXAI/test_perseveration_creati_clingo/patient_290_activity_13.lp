% ======================================================================
% Paziente 290
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

instance(i_p290_a14, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p290_a14, participant_moves_to_the_kitchen, 1, 51888165).
raw_performed(i_p290_a14, participant_removes_materials_from_cupboard, 2, 51899501).
raw_performed(i_p290_a14, participant_removes_materials_from_cupboard, 3, 51906599).
raw_performed(i_p290_a14, participant_removes_materials_from_cupboard, 4, 51907237).
raw_performed(i_p290_a14, participant_removes_materials_from_cupboard, 5, 51909775).
raw_performed(i_p290_a14, participant_removes_materials_from_cupboard, 6, 51917650).
raw_performed(i_p290_a14, participant_removes_materials_from_cupboard, 7, 51921825).
raw_performed(i_p290_a14, participant_removes_materials_from_cupboard, 8, 51921842).
raw_performed(i_p290_a14, participant_fills_pot_with_water, 9, 51926776).
raw_performed(i_p290_a14, participant_fills_pot_with_water, 10, 51926790).
raw_performed(i_p290_a14, participant_turns_on_stove, 11, 51957532).
raw_performed(i_p290_a14, participant_turns_stove_off, 12, 51972777).
raw_performed(i_p290_a14, participant_puts_sugar_in_oatmeal, 13, 52158335).
raw_performed(i_p290_a14, participant_puts_raisin_in_oatmeal, 14, 52158335).
raw_performed(i_p290_a14, participant_puts_sugar_in_oatmeal, 15, 52162855).
raw_performed(i_p290_a14, participant_puts_raisin_in_oatmeal, 16, 52162855).
raw_performed(i_p290_a14, participant_throws_raisin_box_in_trashcan, 17, 52165966).

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

