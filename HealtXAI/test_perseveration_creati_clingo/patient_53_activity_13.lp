% ======================================================================
% Paziente 53
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

instance(i_p53_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p53_a13, participant_moves_to_the_hallway_closet, 1, 57744071).
raw_performed(i_p53_a13, participant_locates_the_laundry_basket, 2, 57745258).
raw_performed(i_p53_a13, participant_locates_the_laundry_basket, 3, 57752055).
raw_performed(i_p53_a13, participant_locates_the_laundry_basket, 4, 57761750).
raw_performed(i_p53_a13, participant_moves_to_the_couch, 5, 57762815).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 6, 57764508).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 7, 57764820).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 8, 57766678).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 9, 57773440).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 10, 57786055).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 11, 57791072).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 12, 57799120).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 13, 57809037).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 14, 57813330).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 15, 57814733).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 16, 57820074).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 17, 57830130).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 18, 57839015).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 19, 57843628).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 20, 57847088).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 21, 57858678).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 22, 57866138).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 23, 57881009).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 24, 57892882).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 25, 57901056).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 26, 57906443).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 27, 57916294).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 28, 57918578).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 29, 57929007).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 30, 57939337).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 31, 57944238).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 32, 57956192).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 33, 57964172).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 34, 57966603).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 35, 57970931).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 36, 58004277).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 37, 58008030).
raw_performed(i_p53_a13, participant_sortsfolds_the_laundry, 38, 58015082).

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

