% ======================================================================
% Paziente 325
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

instance(i_p325_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p325_a13, participant_moves_to_the_hallway_closet, 1, 36661015).
raw_performed(i_p325_a13, participant_moves_to_the_hallway_closet, 2, 36662045).
raw_performed(i_p325_a13, participant_locates_the_laundry_basket, 3, 36671014).
raw_performed(i_p325_a13, participant_moves_to_the_couch, 4, 36672007).
raw_performed(i_p325_a13, participant_moves_to_the_couch, 5, 36673038).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 6, 36674093).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 7, 36686002).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 8, 36687010).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 9, 36689016).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 10, 36698099).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 11, 36706030).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 12, 36708074).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 13, 36717061).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 14, 36729003).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 15, 36741032).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 16, 36747086).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 17, 36756012).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 18, 36760094).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 19, 36764090).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 20, 36768088).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 21, 36772024).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 22, 36775012).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 23, 36783069).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 24, 36793044).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 25, 36797016).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 26, 36807011).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 27, 36809097).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 28, 36812085).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 29, 36815050).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 30, 36822066).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 31, 36827080).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 32, 36832045).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 33, 36843068).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 34, 36847097).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 35, 36848002).
raw_performed(i_p325_a13, participant_sortsfolds_the_laundry, 36, 36850031).

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

