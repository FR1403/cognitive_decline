% ======================================================================
% Paziente 394
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

instance(i_p394_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p394_a13, participant_moves_to_the_hallway_closet, 1, 52704530).
raw_performed(i_p394_a13, participant_moves_to_the_hallway_closet, 2, 52704901).
raw_performed(i_p394_a13, participant_locates_the_laundry_basket, 3, 52713817).
raw_performed(i_p394_a13, participant_locates_the_laundry_basket, 4, 52719111).
raw_performed(i_p394_a13, participant_moves_to_the_couch, 5, 52720285).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 6, 52721126).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 7, 52722209).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 8, 52761149).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 9, 52764752).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 10, 52771057).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 11, 52776885).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 12, 52778899).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 13, 52787590).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 14, 52790327).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 15, 52793015).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 16, 52800754).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 17, 52835592).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 18, 52856962).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 19, 52862705).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 20, 52875952).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 21, 52883716).
raw_performed(i_p394_a13, participant_sortsfolds_the_laundry, 22, 52903199).

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

