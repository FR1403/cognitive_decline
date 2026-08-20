% ======================================================================
% Paziente 340
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

instance(i_p340_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p340_a13, participant_moves_to_the_hallway_closet, 1, 35811080).
raw_performed(i_p340_a13, participant_locates_the_laundry_basket, 2, 35813001).
raw_performed(i_p340_a13, participant_moves_to_the_hallway_closet, 3, 35813017).
raw_performed(i_p340_a13, participant_locates_the_laundry_basket, 4, 35819019).
raw_performed(i_p340_a13, participant_locates_the_laundry_basket, 5, 35819021).
raw_performed(i_p340_a13, participant_moves_to_the_couch, 6, 35819077).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 7, 35819077).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 8, 35821064).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 9, 35824057).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 10, 35829015).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 11, 35838011).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 12, 35840078).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 13, 35845006).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 14, 35848005).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 15, 35851008).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 16, 35859054).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 17, 35864048).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 18, 35865094).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 19, 35876099).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 20, 35877061).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 21, 35879071).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 22, 35888043).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 23, 35890092).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 24, 35902061).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 25, 35911040).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 26, 35917021).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 27, 35924055).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 28, 35925000).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 29, 35930009).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 30, 35930034).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 31, 35939000).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 32, 35939066).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 33, 35948095).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 34, 35954078).
raw_performed(i_p340_a13, participant_sortsfolds_the_laundry, 35, 35958010).
raw_performed(i_p340_a13, participant_moves_to_the_hallway_closet, 36, 35967089).
raw_performed(i_p340_a13, participant_moves_to_the_hallway_closet, 37, 35967092).

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

