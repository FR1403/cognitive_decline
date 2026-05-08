% ======================================================================
% Paziente 188
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

instance(i_p188_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p188_a13, participant_moves_to_the_hallway_closet, 1, 39123078).
raw_performed(i_p188_a13, participant_locates_the_laundry_basket, 2, 39124011).
raw_performed(i_p188_a13, participant_locates_the_laundry_basket, 3, 39126041).
raw_performed(i_p188_a13, participant_locates_the_laundry_basket, 4, 39142078).
raw_performed(i_p188_a13, participant_locates_the_laundry_basket, 5, 39143014).
raw_performed(i_p188_a13, participant_moves_to_the_couch, 6, 39144092).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 7, 39171000).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 8, 39184096).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 9, 39186065).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 10, 39231019).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 11, 39252071).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 12, 39258081).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 13, 39259000).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 14, 39267006).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 15, 39335086).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 16, 39410004).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 17, 39412004).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 18, 39415002).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 19, 39428089).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 20, 39442077).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 21, 39448049).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 22, 39452009).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 23, 39457046).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 24, 39459000).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 25, 39470021).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 26, 39471082).
raw_performed(i_p188_a13, participant_sortsfolds_the_laundry, 27, 39472095).

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

