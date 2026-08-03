% ======================================================================
% Paziente 200
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

instance(i_p200_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p200_a13, participant_moves_to_the_hallway_closet, 1, 55496018).
raw_performed(i_p200_a13, participant_locates_the_laundry_basket, 2, 55496099).
raw_performed(i_p200_a13, participant_locates_the_laundry_basket, 3, 55502063).
raw_performed(i_p200_a13, participant_locates_the_laundry_basket, 4, 55507025).
raw_performed(i_p200_a13, participant_moves_to_the_couch, 5, 55508029).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 6, 55509003).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 7, 55517030).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 8, 55520085).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 9, 55525089).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 10, 55539095).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 11, 55540058).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 12, 55544097).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 13, 55546087).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 14, 55553077).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 15, 55557056).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 16, 55561074).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 17, 55570076).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 18, 55574092).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 19, 55578052).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 20, 55582001).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 21, 55588031).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 22, 55592094).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 23, 55598059).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 24, 55603038).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 25, 55605008).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 26, 55621003).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 27, 55645004).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 28, 55648014).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 29, 55652071).
raw_performed(i_p200_a13, participant_moves_to_the_hallway_closet, 30, 55653035).
raw_performed(i_p200_a13, participant_locates_the_laundry_basket, 31, 55654040).
raw_performed(i_p200_a13, participant_moves_to_the_couch, 32, 55657051).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 33, 55657051).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 34, 55658015).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 35, 55673032).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 36, 55683013).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 37, 55698092).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 38, 55699097).
raw_performed(i_p200_a13, participant_sortsfolds_the_laundry, 39, 55701066).

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

