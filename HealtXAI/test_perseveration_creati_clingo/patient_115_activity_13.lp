% ======================================================================
% Paziente 115
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

instance(i_p115_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p115_a13, participant_moves_to_the_hallway_closet, 1, 37381188).
raw_performed(i_p115_a13, participant_moves_to_the_hallway_closet, 2, 37381214).
raw_performed(i_p115_a13, participant_locates_the_laundry_basket, 3, 37382015).
raw_performed(i_p115_a13, participant_locates_the_laundry_basket, 4, 37382802).
raw_performed(i_p115_a13, participant_locates_the_laundry_basket, 5, 37388022).
raw_performed(i_p115_a13, participant_moves_to_the_couch, 6, 37391113).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 7, 37395888).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 8, 37399273).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 9, 37414839).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 10, 37426133).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 11, 37439312).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 12, 37445548).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 13, 37449330).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 14, 37454740).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 15, 37457270).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 16, 37473344).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 17, 37477098).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 18, 37480461).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 19, 37494206).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 20, 37497279).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 21, 37504140).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 22, 37516840).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 23, 37526476).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 24, 37527102).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 25, 37542111).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 26, 37555239).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 27, 37555867).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 28, 37558385).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 29, 37569634).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 30, 37572601).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 31, 37581077).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 32, 37581718).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 33, 37598725).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 34, 37601249).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 35, 37605541).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 36, 37608040).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 37, 37616024).
raw_performed(i_p115_a13, participant_sortsfolds_the_laundry, 38, 37617853).

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

