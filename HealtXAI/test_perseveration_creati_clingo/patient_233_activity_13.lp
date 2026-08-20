% ======================================================================
% Paziente 233
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

action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 308011).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 214147).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 264661).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 208972).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p233_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p233_a13, participant_moves_to_the_hallway_closet, 1, 36957940).
raw_performed(i_p233_a13, participant_moves_to_the_hallway_closet, 2, 36957953).
raw_performed(i_p233_a13, participant_locates_the_laundry_basket, 3, 36957966).
raw_performed(i_p233_a13, participant_locates_the_laundry_basket, 4, 36961502).
raw_performed(i_p233_a13, participant_moves_to_the_couch, 5, 36961877).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 6, 36965033).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 7, 36971981).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 8, 36975669).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 9, 36979542).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 10, 36979555).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 11, 36986939).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 12, 36995770).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 13, 37009098).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 14, 37013921).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 15, 37017044).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 16, 37017468).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 17, 37025743).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 18, 37029652).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 19, 37044795).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 20, 37049055).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 21, 37053009).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 22, 37063935).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 23, 37063949).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 24, 37071356).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 25, 37072373).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 26, 37076238).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 27, 37089829).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 28, 37103871).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 29, 37107015).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 30, 37108041).
raw_performed(i_p233_a13, participant_sortsfolds_the_laundry, 31, 37118411).

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

