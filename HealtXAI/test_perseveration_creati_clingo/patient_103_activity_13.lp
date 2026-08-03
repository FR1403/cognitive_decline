% ======================================================================
% Paziente 103
% Attivita: Sort and fold a basketful of clothing containing men's, women's and children's articles.
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

action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 284602).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 260783).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 302470).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 253947).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p103_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p103_a13, participant_moves_to_the_hallway_closet, 1, 51415854).
raw_performed(i_p103_a13, participant_moves_to_the_hallway_closet, 2, 51416472).
raw_performed(i_p103_a13, participant_locates_the_laundry_basket, 3, 51418581).
raw_performed(i_p103_a13, participant_locates_the_laundry_basket, 4, 51422764).
raw_performed(i_p103_a13, participant_moves_to_the_couch, 5, 51426082).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 6, 51427283).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 7, 51439071).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 8, 51445740).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 9, 51463122).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 10, 51466984).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 11, 51467032).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 12, 51468001).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 13, 51472185).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 14, 51489953).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 15, 51520375).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 16, 51560133).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 17, 51575083).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 18, 51588730).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 19, 51589779).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 20, 51630665).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 21, 51646930).
raw_performed(i_p103_a13, participant_sortsfolds_the_laundry, 22, 51670459).

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

