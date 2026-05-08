% ======================================================================
% Paziente 99
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

instance(i_p99_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p99_a13, participant_moves_to_the_hallway_closet, 1, 58128079).
raw_performed(i_p99_a13, participant_moves_to_the_hallway_closet, 2, 58129000).
raw_performed(i_p99_a13, participant_locates_the_laundry_basket, 3, 58130045).
raw_performed(i_p99_a13, participant_moves_to_the_couch, 4, 58137015).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 5, 58138083).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 6, 58138086).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 7, 58140050).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 8, 58147082).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 9, 58153025).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 10, 58158068).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 11, 58163023).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 12, 58168022).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 13, 58177095).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 14, 58202000).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 15, 58209026).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 16, 58218086).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 17, 58225013).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 18, 58227063).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 19, 58230010).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 20, 58233009).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 21, 58247020).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 22, 58254069).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 23, 58258028).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 24, 58258030).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 25, 58260018).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 26, 58271045).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 27, 58276003).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 28, 58281006).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 29, 58286046).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 30, 58291022).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 31, 58293051).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 32, 58304050).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 33, 58305013).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 34, 58307042).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 35, 58311019).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 36, 58318038).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 37, 58328037).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 38, 58331008).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 39, 58338040).
raw_performed(i_p99_a13, participant_sortsfolds_the_laundry, 40, 58339088).

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

