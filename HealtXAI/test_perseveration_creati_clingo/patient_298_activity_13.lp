% ======================================================================
% Paziente 298
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

instance(i_p298_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p298_a13, participant_moves_to_the_hallway_closet, 1, 55145486).
raw_performed(i_p298_a13, participant_moves_to_the_hallway_closet, 2, 55147131).
raw_performed(i_p298_a13, participant_locates_the_laundry_basket, 3, 55149957).
raw_performed(i_p298_a13, participant_locates_the_laundry_basket, 4, 55162878).
raw_performed(i_p298_a13, participant_locates_the_laundry_basket, 5, 55167520).
raw_performed(i_p298_a13, participant_moves_to_the_couch, 6, 55173983).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 7, 55188697).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 8, 55203868).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 9, 55208714).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 10, 55233427).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 11, 55234554).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 12, 55244765).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 13, 55250562).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 14, 55272439).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 15, 55279951).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 16, 55285720).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 17, 55292441).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 18, 55299155).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 19, 55299984).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 20, 55302335).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 21, 55314878).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 22, 55321068).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 23, 55331665).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 24, 55334866).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 25, 55350054).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 26, 55352546).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 27, 55361522).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 28, 55364728).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 29, 55375922).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 30, 55379862).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 31, 55382155).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 32, 55402303).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 33, 55411073).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 34, 55431372).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 35, 55436883).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 36, 55446035).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 37, 55464772).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 38, 55487573).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 39, 55489855).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 40, 55490731).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 41, 55502235).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 42, 55504725).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 43, 55508161).
raw_performed(i_p298_a13, participant_sortsfolds_the_laundry, 44, 55512134).
raw_performed(i_p298_a13, participant_moves_to_the_hallway_closet, 45, 55516739).

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

