% ======================================================================
% Paziente 6
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

instance(i_p6_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p6_a13, participant_moves_to_the_hallway_closet, 1, 38382049).
raw_performed(i_p6_a13, participant_moves_to_the_hallway_closet, 2, 38384041).
raw_performed(i_p6_a13, participant_locates_the_laundry_basket, 3, 38384058).
raw_performed(i_p6_a13, participant_moves_to_the_couch, 4, 38393005).
raw_performed(i_p6_a13, participant_moves_to_the_couch, 5, 38393082).
raw_performed(i_p6_a13, participant_moves_to_the_couch, 6, 38394014).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 7, 38408072).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 8, 38425003).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 9, 38425036).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 10, 38436064).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 11, 38438027).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 12, 38443081).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 13, 38454004).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 14, 38458075).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 15, 38464005).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 16, 38466006).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 17, 38473035).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 18, 38478023).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 19, 38512087).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 20, 38520075).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 21, 38537094).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 22, 38538014).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 23, 38544009).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 24, 38562087).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 25, 38564061).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 26, 38579068).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 27, 38587099).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 28, 38607028).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 29, 38618060).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 30, 38631060).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 31, 38633016).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 32, 38643099).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 33, 38648097).
raw_performed(i_p6_a13, participant_sortsfolds_the_laundry, 34, 38654062).

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

