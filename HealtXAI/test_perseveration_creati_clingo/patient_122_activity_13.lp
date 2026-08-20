% ======================================================================
% Paziente 122
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

instance(i_p122_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p122_a13, participant_moves_to_the_hallway_closet, 1, 38441084).
raw_performed(i_p122_a13, participant_moves_to_the_hallway_closet, 2, 38442011).
raw_performed(i_p122_a13, participant_locates_the_laundry_basket, 3, 38449011).
raw_performed(i_p122_a13, participant_locates_the_laundry_basket, 4, 38450062).
raw_performed(i_p122_a13, participant_locates_the_laundry_basket, 5, 38453026).
raw_performed(i_p122_a13, participant_locates_the_laundry_basket, 6, 38455099).
raw_performed(i_p122_a13, participant_moves_to_the_couch, 7, 38456027).
raw_performed(i_p122_a13, participant_locates_the_laundry_basket, 8, 38456040).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 9, 38457000).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 10, 38458017).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 11, 38460017).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 12, 38466000).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 13, 38469075).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 14, 38476099).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 15, 38477019).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 16, 38479095).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 17, 38487053).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 18, 38490064).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 19, 38490096).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 20, 38494000).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 21, 38495092).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 22, 38516000).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 23, 38524006).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 24, 38551073).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 25, 38559077).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 26, 38563039).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 27, 38565048).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 28, 38591006).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 29, 38597000).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 30, 38597020).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 31, 38603083).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 32, 38611031).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 33, 38613097).
raw_performed(i_p122_a13, participant_sortsfolds_the_laundry, 34, 38624091).

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

