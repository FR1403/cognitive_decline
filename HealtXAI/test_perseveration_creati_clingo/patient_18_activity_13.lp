% ======================================================================
% Paziente 18
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

action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 297539).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 260783).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 302470).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 253088).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p18_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p18_a13, participant_moves_to_the_hallway_closet, 1, 54887289).
raw_performed(i_p18_a13, participant_moves_to_the_hallway_closet, 2, 54887654).
raw_performed(i_p18_a13, participant_locates_the_laundry_basket, 3, 54894608).
raw_performed(i_p18_a13, participant_locates_the_laundry_basket, 4, 54894989).
raw_performed(i_p18_a13, participant_moves_to_the_couch, 5, 54898042).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 6, 54898073).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 7, 54903199).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 8, 54916345).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 9, 54959338).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 10, 54980324).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 11, 54992213).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 12, 54992594).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 13, 54995044).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 14, 54998963).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 15, 55009070).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 16, 55025500).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 17, 55025516).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 18, 55025537).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 19, 55053408).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 20, 55061456).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 21, 55066595).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 22, 55066957).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 23, 55077662).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 24, 55088640).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 25, 55099372).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 26, 55104564).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 27, 55108772).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 28, 55109270).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 29, 55129725).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 30, 55131876).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 31, 55142348).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 32, 55149998).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 33, 55173969).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 34, 55174793).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 35, 55192666).
raw_performed(i_p18_a13, participant_sortsfolds_the_laundry, 36, 55193361).

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

