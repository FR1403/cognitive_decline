% ======================================================================
% Paziente 181
% Attività: Sort and fold a basketful of clothing containing men's, women's and children's articles.
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

action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 240000).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 18000).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 240000).
action_gap(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p181_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p181_a13, participant_moves_to_the_hallway_closet, 1, 53087723).
raw_performed(i_p181_a13, participant_locates_the_laundry_basket, 2, 53088588).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 3, 53089820).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 4, 53090575).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 5, 53129459).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 6, 53130498).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 7, 53131981).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 8, 53149034).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 9, 53152193).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 10, 53158046).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 11, 53159758).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 12, 53168258).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 13, 53168284).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 14, 53178277).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 15, 53199625).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 16, 53203415).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 17, 53208852).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 18, 53212372).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 19, 53217260).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 20, 53217285).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 21, 53239101).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 22, 53249451).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 23, 53275777).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 24, 53298709).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 25, 53306786).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 26, 53307412).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 27, 53316353).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 28, 53323085).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 29, 53332851).
raw_performed(i_p181_a13, participant_sortsfolds_the_laundry, 30, 53338505).

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

