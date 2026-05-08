% ======================================================================
% Paziente 323
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

instance(i_p323_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p323_a13, participant_moves_to_the_hallway_closet, 1, 36151018).
raw_performed(i_p323_a13, participant_moves_to_the_hallway_closet, 2, 36151020).
raw_performed(i_p323_a13, participant_locates_the_laundry_basket, 3, 36152005).
raw_performed(i_p323_a13, participant_moves_to_the_couch, 4, 36158067).
raw_performed(i_p323_a13, participant_moves_to_the_couch, 5, 36159076).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 6, 36160036).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 7, 36160098).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 8, 36179082).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 9, 36193046).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 10, 36201039).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 11, 36207057).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 12, 36218081).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 13, 36238034).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 14, 36252048).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 15, 36258074).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 16, 36272013).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 17, 36273059).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 18, 36282094).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 19, 36285067).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 20, 36290006).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 21, 36291028).
raw_performed(i_p323_a13, participant_sortsfolds_the_laundry, 22, 36291031).

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

