% ======================================================================
% Paziente 158
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

instance(i_p158_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p158_a13, participant_moves_to_the_hallway_closet, 1, 38594064).
raw_performed(i_p158_a13, participant_locates_the_laundry_basket, 2, 38594096).
raw_performed(i_p158_a13, participant_locates_the_laundry_basket, 3, 38600077).
raw_performed(i_p158_a13, participant_moves_to_the_couch, 4, 38604070).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 5, 38605037).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 6, 38607002).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 7, 38618066).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 8, 38619095).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 9, 38626046).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 10, 38627095).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 11, 38633044).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 12, 38634030).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 13, 38643041).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 14, 38649012).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 15, 38650090).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 16, 38656003).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 17, 38657003).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 18, 38662071).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 19, 38662093).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 20, 38666099).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 21, 38682057).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 22, 38687075).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 23, 38692084).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 24, 38698091).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 25, 38705006).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 26, 38711041).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 27, 38715002).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 28, 38725011).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 29, 38725034).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 30, 38734023).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 31, 38736062).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 32, 38750010).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 33, 38752057).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 34, 38755019).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 35, 38760036).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 36, 38768091).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 37, 38778070).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 38, 38780014).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 39, 38780038).
raw_performed(i_p158_a13, participant_sortsfolds_the_laundry, 40, 38810011).

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

