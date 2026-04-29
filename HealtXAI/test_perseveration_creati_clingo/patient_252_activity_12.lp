% ======================================================================
% Paziente 252
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

instance(i_p252_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p252_a13, participant_moves_to_the_hallway_closet, 1, 53080736).
raw_performed(i_p252_a13, participant_moves_to_the_hallway_closet, 2, 53081108).
raw_performed(i_p252_a13, participant_moves_to_the_hallway_closet, 3, 53089874).
raw_performed(i_p252_a13, participant_locates_the_laundry_basket, 4, 53095314).
raw_performed(i_p252_a13, participant_locates_the_laundry_basket, 5, 53104286).
raw_performed(i_p252_a13, participant_locates_the_laundry_basket, 6, 53104663).
raw_performed(i_p252_a13, participant_moves_to_the_couch, 7, 53105638).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 8, 53107493).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 9, 53130870).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 10, 53217934).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 11, 53218301).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 12, 53245541).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 13, 53248515).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 14, 53257269).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 15, 53257643).
raw_performed(i_p252_a13, participant_sortsfolds_the_laundry, 16, 53301934).

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

