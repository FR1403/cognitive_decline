% ======================================================================
% Paziente 389
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

instance(i_p389_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p389_a13, participant_moves_to_the_hallway_closet, 1, 55408548).
raw_performed(i_p389_a13, participant_moves_to_the_hallway_closet, 2, 55411725).
raw_performed(i_p389_a13, participant_locates_the_laundry_basket, 3, 55411742).
raw_performed(i_p389_a13, participant_locates_the_laundry_basket, 4, 55421146).
raw_performed(i_p389_a13, participant_locates_the_laundry_basket, 5, 55421558).
raw_performed(i_p389_a13, participant_locates_the_laundry_basket, 6, 55427714).
raw_performed(i_p389_a13, participant_locates_the_laundry_basket, 7, 55431716).
raw_performed(i_p389_a13, participant_moves_to_the_couch, 8, 55435476).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 9, 55447889).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 10, 55453915).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 11, 55455348).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 12, 55461526).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 13, 55465111).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 14, 55472774).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 15, 55472787).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 16, 55481726).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 17, 55489290).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 18, 55497611).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 19, 55522820).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 20, 55530603).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 21, 55538075).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 22, 55545747).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 23, 55559579).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 24, 55566378).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 25, 55590743).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 26, 55592773).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 27, 55615379).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 28, 55619077).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 29, 55645620).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 30, 55650538).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 31, 55664339).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 32, 55668690).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 33, 55672169).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 34, 55676869).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 35, 55688852).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 36, 55707176).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 37, 55726035).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 38, 55733249).
raw_performed(i_p389_a13, participant_sortsfolds_the_laundry, 39, 55751413).

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

