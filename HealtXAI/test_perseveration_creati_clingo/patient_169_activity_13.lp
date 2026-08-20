% ======================================================================
% Paziente 169
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

instance(i_p169_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p169_a13, participant_moves_to_the_hallway_closet, 1, 40002493).
raw_performed(i_p169_a13, participant_locates_the_laundry_basket, 2, 40003099).
raw_performed(i_p169_a13, participant_locates_the_laundry_basket, 3, 40012954).
raw_performed(i_p169_a13, participant_locates_the_laundry_basket, 4, 40032161).
raw_performed(i_p169_a13, participant_moves_to_the_couch, 5, 40032782).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 6, 40035444).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 7, 40052061).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 8, 40052079).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 9, 40059545).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 10, 40059559).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 11, 40063552).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 12, 40067264).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 13, 40071371).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 14, 40072003).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 15, 40087497).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 16, 40087903).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 17, 40097499).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 18, 40098942).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 19, 40102685).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 20, 40106729).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 21, 40114487).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 22, 40135042).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 23, 40155225).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 24, 40162716).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 25, 40169402).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 26, 40174355).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 27, 40183320).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 28, 40216155).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 29, 40219551).
raw_performed(i_p169_a13, participant_sortsfolds_the_laundry, 30, 40219564).
raw_performed(i_p169_a13, participant_moves_to_the_hallway_closet, 31, 40219951).

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

