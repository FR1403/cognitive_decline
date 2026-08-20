% ======================================================================
% Paziente 105
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

instance(i_p105_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p105_a13, participant_moves_to_the_hallway_closet, 1, 53496591).
raw_performed(i_p105_a13, participant_locates_the_laundry_basket, 2, 53505248).
raw_performed(i_p105_a13, participant_locates_the_laundry_basket, 3, 53510593).
raw_performed(i_p105_a13, participant_moves_to_the_couch, 4, 53511629).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 5, 53513171).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 6, 53527819).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 7, 53535241).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 8, 53559389).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 9, 53569585).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 10, 53596416).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 11, 53598704).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 12, 53602123).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 13, 53607654).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 14, 53613184).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 15, 53614806).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 16, 53615182).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 17, 53623998).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 18, 53629842).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 19, 53631259).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 20, 53638090).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 21, 53643413).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 22, 53651233).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 23, 53651837).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 24, 53655322).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 25, 53659892).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 26, 53667413).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 27, 53669936).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 28, 53674857).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 29, 53675692).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 30, 53677593).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 31, 53677608).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 32, 53687533).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 33, 53691595).
raw_performed(i_p105_a13, participant_sortsfolds_the_laundry, 34, 53701720).

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

