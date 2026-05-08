% ======================================================================
% Paziente 317
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

instance(i_p317_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p317_a13, participant_moves_to_the_hallway_closet, 1, 36936374).
raw_performed(i_p317_a13, participant_moves_to_the_hallway_closet, 2, 36936398).
raw_performed(i_p317_a13, participant_locates_the_laundry_basket, 3, 36936445).
raw_performed(i_p317_a13, participant_locates_the_laundry_basket, 4, 36955138).
raw_performed(i_p317_a13, participant_locates_the_laundry_basket, 5, 36955720).
raw_performed(i_p317_a13, participant_moves_to_the_couch, 6, 36959448).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 7, 36967355).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 8, 36971835).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 9, 36972671).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 10, 36986533).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 11, 36990278).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 12, 36999001).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 13, 36999026).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 14, 37006907).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 15, 37020746).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 16, 37024545).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 17, 37032005).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 18, 37037731).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 19, 37043378).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 20, 37045505).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 21, 37050671).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 22, 37053952).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 23, 37060825).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 24, 37070025).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 25, 37072152).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 26, 37076832).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 27, 37079538).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 28, 37081285).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 29, 37087215).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 30, 37087845).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 31, 37094996).
raw_performed(i_p317_a13, participant_sortsfolds_the_laundry, 32, 37101081).

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

