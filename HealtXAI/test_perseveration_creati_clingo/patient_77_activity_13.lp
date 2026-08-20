% ======================================================================
% Paziente 77
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

instance(i_p77_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p77_a13, participant_moves_to_the_hallway_closet, 1, 52726012).
raw_performed(i_p77_a13, participant_moves_to_the_hallway_closet, 2, 52727003).
raw_performed(i_p77_a13, participant_locates_the_laundry_basket, 3, 52727035).
raw_performed(i_p77_a13, participant_locates_the_laundry_basket, 4, 52731097).
raw_performed(i_p77_a13, participant_moves_to_the_couch, 5, 52733081).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 6, 52733081).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 7, 52735027).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 8, 52747000).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 9, 52748001).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 10, 52758043).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 11, 52767081).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 12, 52771016).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 13, 52771018).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 14, 52786002).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 15, 52788054).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 16, 52790000).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 17, 52799003).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 18, 52800007).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 19, 52812000).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 20, 52812012).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 21, 52817024).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 22, 52823055).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 23, 52824060).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 24, 52833097).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 25, 52837027).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 26, 52850019).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 27, 52851039).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 28, 52860039).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 29, 52862090).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 30, 52879094).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 31, 52885036).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 32, 52887064).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 33, 52893044).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 34, 52897023).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 35, 52900081).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 36, 52912085).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 37, 52916086).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 38, 52919019).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 39, 52932053).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 40, 52937008).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 41, 52952030).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 42, 52957009).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 43, 52959039).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 44, 52961047).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 45, 52965047).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 46, 52977036).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 47, 52978000).
raw_performed(i_p77_a13, participant_sortsfolds_the_laundry, 48, 52980025).

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

