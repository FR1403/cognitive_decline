% ======================================================================
% Paziente 24
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

action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 297539).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 260783).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 302470).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 253088).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p24_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p24_a13, participant_moves_to_the_hallway_closet, 1, 53607230).
raw_performed(i_p24_a13, participant_moves_to_the_hallway_closet, 2, 53608236).
raw_performed(i_p24_a13, participant_locates_the_laundry_basket, 3, 53610527).
raw_performed(i_p24_a13, participant_locates_the_laundry_basket, 4, 53617260).
raw_performed(i_p24_a13, participant_locates_the_laundry_basket, 5, 53617635).
raw_performed(i_p24_a13, participant_moves_to_the_couch, 6, 53618476).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 7, 53619859).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 8, 53627042).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 9, 53629704).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 10, 53655803).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 11, 53660683).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 12, 53665228).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 13, 53676187).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 14, 53689075).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 15, 53700905).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 16, 53705769).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 17, 53710101).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 18, 53726899).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 19, 53768632).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 20, 53782127).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 21, 53805942).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 22, 53823599).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 23, 53836778).
raw_performed(i_p24_a13, participant_sortsfolds_the_laundry, 24, 53851113).

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

