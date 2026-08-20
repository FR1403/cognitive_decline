% ======================================================================
% Paziente 134
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

instance(i_p134_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p134_a13, participant_moves_to_the_hallway_closet, 1, 49734830).
raw_performed(i_p134_a13, participant_locates_the_laundry_basket, 2, 49735462).
raw_performed(i_p134_a13, participant_locates_the_laundry_basket, 3, 49741804).
raw_performed(i_p134_a13, participant_moves_to_the_couch, 4, 49745046).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 5, 49754012).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 6, 49754418).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 7, 49821493).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 8, 49838181).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 9, 49881399).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 10, 49883939).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 11, 49926149).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 12, 49930368).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 13, 49934253).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 14, 49944638).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 15, 49952428).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 16, 49989058).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 17, 49998807).
raw_performed(i_p134_a13, participant_moves_to_the_hallway_closet, 18, 50005759).
raw_performed(i_p134_a13, participant_sortsfolds_the_laundry, 19, 50011152).

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

