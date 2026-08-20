% ======================================================================
% Paziente 312
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

instance(i_p312_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p312_a13, participant_moves_to_the_hallway_closet, 1, 54619497).
raw_performed(i_p312_a13, participant_locates_the_laundry_basket, 2, 54620353).
raw_performed(i_p312_a13, participant_locates_the_laundry_basket, 3, 54622304).
raw_performed(i_p312_a13, participant_locates_the_laundry_basket, 4, 54638680).
raw_performed(i_p312_a13, participant_moves_to_the_couch, 5, 54640656).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 6, 54642939).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 7, 54644149).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 8, 54658434).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 9, 54666363).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 10, 54673639).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 11, 54676327).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 12, 54681931).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 13, 54690626).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 14, 54694100).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 15, 54703263).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 16, 54704105).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 17, 54710168).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 18, 54716417).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 19, 54720929).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 20, 54726572).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 21, 54734873).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 22, 54737387).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 23, 54742341).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 24, 54748851).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 25, 54748886).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 26, 54753461).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 27, 54753994).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 28, 54761820).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 29, 54773151).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 30, 54783145).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 31, 54790369).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 32, 54797275).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 33, 54802778).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 34, 54808659).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 35, 54812327).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 36, 54832612).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 37, 54833213).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 38, 54847552).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 39, 54858982).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 40, 54875709).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 41, 54879005).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 42, 54879038).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 43, 54883341).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 44, 54888502).
raw_performed(i_p312_a13, participant_sortsfolds_the_laundry, 45, 54889575).

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

