% ======================================================================
% Paziente 108
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

instance(i_p108_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p108_a13, participant_moves_to_the_hallway_closet, 1, 37323663).
raw_performed(i_p108_a13, participant_moves_to_the_hallway_closet, 2, 37324191).
raw_performed(i_p108_a13, participant_locates_the_laundry_basket, 3, 37329146).
raw_performed(i_p108_a13, participant_locates_the_laundry_basket, 4, 37329916).
raw_performed(i_p108_a13, participant_moves_to_the_couch, 5, 37330910).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 6, 37330932).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 7, 37332337).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 8, 37340430).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 9, 37353437).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 10, 37364364).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 11, 37375395).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 12, 37393286).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 13, 37412799).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 14, 37418913).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 15, 37422861).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 16, 37447809).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 17, 37453474).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 18, 37468237).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 19, 37474943).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 20, 37486091).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 21, 37501351).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 22, 37502188).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 23, 37502805).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 24, 37511077).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 25, 37524867).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 26, 37529712).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 27, 37531062).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 28, 37532145).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 29, 37545879).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 30, 37556360).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 31, 37564034).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 32, 37575064).
raw_performed(i_p108_a13, participant_sortsfolds_the_laundry, 33, 37654265).

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

