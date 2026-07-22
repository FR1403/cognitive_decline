% ======================================================================
% Paziente 381
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

instance(i_p381_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p381_a13, participant_moves_to_the_hallway_closet, 1, 54942039).
raw_performed(i_p381_a13, participant_locates_the_laundry_basket, 2, 54943000).
raw_performed(i_p381_a13, participant_locates_the_laundry_basket, 3, 54947065).
raw_performed(i_p381_a13, participant_moves_to_the_couch, 4, 54949001).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 5, 54949001).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 6, 54953032).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 7, 54966030).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 8, 54972092).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 9, 54984007).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 10, 54994075).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 11, 55002065).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 12, 55003027).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 13, 55009007).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 14, 55013000).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 15, 55019084).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 16, 55027032).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 17, 55035001).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 18, 55036020).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 19, 55050055).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 20, 55052006).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 21, 55053024).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 22, 55059034).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 23, 55066086).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 24, 55070019).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 25, 55074035).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 26, 55077089).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 27, 55083088).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 28, 55094064).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 29, 55112033).
raw_performed(i_p381_a13, participant_sortsfolds_the_laundry, 30, 55112036).

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

