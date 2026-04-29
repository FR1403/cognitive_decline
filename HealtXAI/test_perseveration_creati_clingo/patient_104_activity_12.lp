% ======================================================================
% Paziente 104
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

instance(i_p104_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p104_a13, participant_moves_to_the_hallway_closet, 1, 53798317).
raw_performed(i_p104_a13, participant_locates_the_laundry_basket, 2, 53800589).
raw_performed(i_p104_a13, participant_moves_to_the_couch, 3, 53801951).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 4, 53806268).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 5, 53810706).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 6, 53813087).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 7, 53819078).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 8, 53846428).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 9, 53861034).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 10, 53867601).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 11, 53876080).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 12, 53899682).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 13, 53908477).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 14, 53909530).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 15, 53918542).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 16, 53921221).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 17, 53923949).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 18, 53940591).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 19, 53946011).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 20, 53952112).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 21, 53956218).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 22, 53965146).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 23, 53969306).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 24, 53972898).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 25, 53979430).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 26, 53982772).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 27, 53986887).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 28, 53992466).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 29, 53994876).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 30, 54004427).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 31, 54008654).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 32, 54019562).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 33, 54025537).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 34, 54037933).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 35, 54037949).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 36, 54045769).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 37, 54059756).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 38, 54065966).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 39, 54071492).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 40, 54079614).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 41, 54080000).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 42, 54085359).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 43, 54089179).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 44, 54096982).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 45, 54100634).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 46, 54104246).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 47, 54120431).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 48, 54132920).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 49, 54136372).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 50, 54139354).
raw_performed(i_p104_a13, participant_sortsfolds_the_laundry, 51, 54164934).

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

