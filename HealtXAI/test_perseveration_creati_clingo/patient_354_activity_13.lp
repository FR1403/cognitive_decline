% ======================================================================
% Paziente 354
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

instance(i_p354_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p354_a13, participant_moves_to_the_hallway_closet, 1, 39141349).
raw_performed(i_p354_a13, participant_locates_the_laundry_basket, 2, 39143020).
raw_performed(i_p354_a13, participant_locates_the_laundry_basket, 3, 39146497).
raw_performed(i_p354_a13, participant_locates_the_laundry_basket, 4, 39148380).
raw_performed(i_p354_a13, participant_moves_to_the_couch, 5, 39150153).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 6, 39151562).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 7, 39159430).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 8, 39166553).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 9, 39179945).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 10, 39184898).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 11, 39188462).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 12, 39192860).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 13, 39195599).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 14, 39205181).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 15, 39210041).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 16, 39216411).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 17, 39220260).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 18, 39223229).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 19, 39229350).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 20, 39235528).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 21, 39237283).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 22, 39247522).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 23, 39253628).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 24, 39260286).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 25, 39267342).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 26, 39268378).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 27, 39273215).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 28, 39285792).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 29, 39291988).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 30, 39299283).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 31, 39301716).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 32, 39305459).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 33, 39309237).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 34, 39317089).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 35, 39320833).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 36, 39323670).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 37, 39327578).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 38, 39332256).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 39, 39340569).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 40, 39343148).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 41, 39360777).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 42, 39363004).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 43, 39367327).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 44, 39367429).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 45, 39369126).
raw_performed(i_p354_a13, participant_sortsfolds_the_laundry, 46, 39369849).
raw_performed(i_p354_a13, participant_moves_to_the_hallway_closet, 47, 39371846).

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

