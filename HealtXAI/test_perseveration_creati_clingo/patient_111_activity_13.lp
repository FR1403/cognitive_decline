% ======================================================================
% Paziente 111
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

instance(i_p111_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p111_a13, participant_moves_to_the_hallway_closet, 1, 38562521).
raw_performed(i_p111_a13, participant_moves_to_the_hallway_closet, 2, 38564408).
raw_performed(i_p111_a13, participant_moves_to_the_hallway_closet, 3, 38567785).
raw_performed(i_p111_a13, participant_locates_the_laundry_basket, 4, 38591260).
raw_performed(i_p111_a13, participant_locates_the_laundry_basket, 5, 38595365).
raw_performed(i_p111_a13, participant_moves_to_the_couch, 6, 38599246).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 7, 38605679).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 8, 38607720).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 9, 38609788).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 10, 38620075).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 11, 38623665).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 12, 38626105).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 13, 38667183).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 14, 38668847).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 15, 38744405).
raw_performed(i_p111_a13, participant_sortsfolds_the_laundry, 16, 38746044).

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

