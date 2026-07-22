% ======================================================================
% Paziente 100
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

instance(i_p100_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p100_a13, participant_moves_to_the_hallway_closet, 1, 56952060).
raw_performed(i_p100_a13, participant_locates_the_laundry_basket, 2, 56953000).
raw_performed(i_p100_a13, participant_locates_the_laundry_basket, 3, 56958774).
raw_performed(i_p100_a13, participant_locates_the_laundry_basket, 4, 56959294).
raw_performed(i_p100_a13, participant_moves_to_the_couch, 5, 56961099).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 6, 56963959).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 7, 56967073).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 8, 56969682).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 9, 56981004).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 10, 56981062).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 11, 56987050).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 12, 57000047).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 13, 57005085).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 14, 57009020).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 15, 57010248).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 16, 57027092).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 17, 57035814).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 18, 57039007).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 19, 57039851).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 20, 57065605).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 21, 57066035).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 22, 57069075).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 23, 57071083).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 24, 57078098).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 25, 57079035).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 26, 57081053).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 27, 57086854).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 28, 57087256).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 29, 57089005).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 30, 57089924).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 31, 57092448).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 32, 57098366).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 33, 57101322).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 34, 57101470).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 35, 57108284).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 36, 57117010).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 37, 57120430).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 38, 57126071).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 39, 57127037).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 40, 57128077).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 41, 57137843).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 42, 57143046).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 43, 57146065).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 44, 57148019).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 45, 57155518).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 46, 57155885).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 47, 57173499).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 48, 57175009).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 49, 57176918).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 50, 57177910).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 51, 57190025).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 52, 57192081).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 53, 57198652).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 54, 57208822).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 55, 57211731).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 56, 57234049).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 57, 57238818).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 58, 57263005).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 59, 57267547).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 60, 57280170).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 61, 57282650).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 62, 57286982).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 63, 57289554).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 64, 57291491).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 65, 57297412).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 66, 57306363).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 67, 57310076).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 68, 57340264).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 69, 57342498).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 70, 57345004).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 71, 57346003).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 72, 57361124).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 73, 57363048).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 74, 57376009).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 75, 57381050).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 76, 57397039).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 77, 57397757).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 78, 57406578).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 79, 57408028).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 80, 57412005).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 81, 57412151).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 82, 57421070).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 83, 57421087).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 84, 57434242).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 85, 57435545).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 86, 57439011).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 87, 57462023).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 88, 57463098).
raw_performed(i_p100_a13, participant_sortsfolds_the_laundry, 89, 57477042).

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

