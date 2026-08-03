% ======================================================================
% Paziente 275
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

instance(i_p275_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p275_a13, participant_moves_to_the_hallway_closet, 1, 41043545).
raw_performed(i_p275_a13, participant_locates_the_laundry_basket, 2, 41062112).
raw_performed(i_p275_a13, participant_locates_the_laundry_basket, 3, 41062249).
raw_performed(i_p275_a13, participant_locates_the_laundry_basket, 4, 41062863).
raw_performed(i_p275_a13, participant_moves_to_the_couch, 5, 41066839).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 6, 41118528).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 7, 41127417).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 8, 41135664).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 9, 41138289).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 10, 41142497).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 11, 41149549).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 12, 41151984).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 13, 41154237).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 14, 41162688).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 15, 41172249).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 16, 41175851).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 17, 41183108).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 18, 41193603).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 19, 41204463).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 20, 41210727).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 21, 41220414).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 22, 41231647).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 23, 41238663).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 24, 41241424).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 25, 41251542).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 26, 41260908).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 27, 41264088).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 28, 41278353).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 29, 41282088).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 30, 41287212).
raw_performed(i_p275_a13, participant_sortsfolds_the_laundry, 31, 41287465).

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

