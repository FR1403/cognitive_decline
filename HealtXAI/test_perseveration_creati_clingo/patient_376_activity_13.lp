% ======================================================================
% Paziente 376
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

instance(i_p376_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p376_a13, participant_moves_to_the_hallway_closet, 1, 54421343).
raw_performed(i_p376_a13, participant_moves_to_the_hallway_closet, 2, 54421876).
raw_performed(i_p376_a13, participant_locates_the_laundry_basket, 3, 54430864).
raw_performed(i_p376_a13, participant_locates_the_laundry_basket, 4, 54431259).
raw_performed(i_p376_a13, participant_moves_to_the_couch, 5, 54432195).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 6, 54479462).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 7, 54510625).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 8, 54570481).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 9, 54580655).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 10, 54587834).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 11, 54603440).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 12, 54603815).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 13, 54622315).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 14, 54624307).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 15, 54636988).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 16, 54637588).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 17, 54641858).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 18, 54645642).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 19, 54653436).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 20, 54670399).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 21, 54672242).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 22, 54674973).
raw_performed(i_p376_a13, participant_sortsfolds_the_laundry, 23, 54698567).

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

