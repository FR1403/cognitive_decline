% ======================================================================
% Paziente 52
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

instance(i_p52_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p52_a13, participant_moves_to_the_hallway_closet, 1, 38657040).
raw_performed(i_p52_a13, participant_locates_the_laundry_basket, 2, 38659167).
raw_performed(i_p52_a13, participant_locates_the_laundry_basket, 3, 38662100).
raw_performed(i_p52_a13, participant_locates_the_laundry_basket, 4, 38663020).
raw_performed(i_p52_a13, participant_locates_the_laundry_basket, 5, 38665062).
raw_performed(i_p52_a13, participant_moves_to_the_couch, 6, 38667716).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 7, 38667971).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 8, 38671065).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 9, 38673063).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 10, 38679047).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 11, 38687036).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 12, 38689008).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 13, 38689071).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 14, 38694015).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 15, 38698444).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 16, 38702223).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 17, 38704769).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 18, 38716436).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 19, 38721024).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 20, 38726711).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 21, 38730012).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 22, 38730030).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 23, 38736003).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 24, 38737413).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 25, 38746033).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 26, 38748046).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 27, 38750097).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 28, 38759028).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 29, 38761359).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 30, 38764084).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 31, 38771758).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 32, 38773421).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 33, 38779068).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 34, 38785073).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 35, 38788034).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 36, 38791064).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 37, 38794470).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 38, 38798068).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 39, 38804687).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 40, 38807095).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 41, 38814026).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 42, 38816492).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 43, 38821547).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 44, 38825021).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 45, 38828374).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 46, 38833077).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 47, 38836042).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 48, 38847035).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 49, 38863629).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 50, 38867014).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 51, 38872063).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 52, 38887091).
raw_performed(i_p52_a13, participant_sortsfolds_the_laundry, 53, 38887552).

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

