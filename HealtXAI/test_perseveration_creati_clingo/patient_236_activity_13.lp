% ======================================================================
% Paziente 236
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

instance(i_p236_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p236_a13, participant_moves_to_the_hallway_closet, 1, 51563520).
raw_performed(i_p236_a13, participant_locates_the_laundry_basket, 2, 51564742).
raw_performed(i_p236_a13, participant_locates_the_laundry_basket, 3, 51564909).
raw_performed(i_p236_a13, participant_locates_the_laundry_basket, 4, 51575605).
raw_performed(i_p236_a13, participant_moves_to_the_couch, 5, 51578462).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 6, 51602533).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 7, 51606455).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 8, 51610090).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 9, 51613575).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 10, 51623827).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 11, 51640976).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 12, 51656266).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 13, 51656290).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 14, 51663795).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 15, 51665314).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 16, 51667542).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 17, 51671494).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 18, 51676190).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 19, 51688995).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 20, 51696648).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 21, 51700354).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 22, 51710897).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 23, 51712787).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 24, 51716394).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 25, 51718637).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 26, 51722956).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 27, 51726872).
raw_performed(i_p236_a13, participant_sortsfolds_the_laundry, 28, 51731034).
raw_performed(i_p236_a13, participant_moves_to_the_hallway_closet, 29, 51738612).

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

