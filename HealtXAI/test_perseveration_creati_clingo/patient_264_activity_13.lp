% ======================================================================
% Paziente 264
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

instance(i_p264_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p264_a13, participant_moves_to_the_hallway_closet, 1, 35178077).
raw_performed(i_p264_a13, participant_moves_to_the_hallway_closet, 2, 35179039).
raw_performed(i_p264_a13, participant_locates_the_laundry_basket, 3, 35180003).
raw_performed(i_p264_a13, participant_moves_to_the_couch, 4, 35186002).
raw_performed(i_p264_a13, participant_moves_to_the_couch, 5, 35186005).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 6, 35186067).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 7, 35188056).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 8, 35261085).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 9, 35267024).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 10, 35309001).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 11, 35347038).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 12, 35390066).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 13, 35424036).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 14, 35429003).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 15, 35429096).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 16, 35461057).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 17, 35475072).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 18, 35504090).
raw_performed(i_p264_a13, participant_sortsfolds_the_laundry, 19, 35522007).

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

