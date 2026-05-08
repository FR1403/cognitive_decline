% ======================================================================
% Paziente 128
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

instance(i_p128_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p128_a13, participant_moves_to_the_hallway_closet, 1, 37680060).
raw_performed(i_p128_a13, participant_moves_to_the_hallway_closet, 2, 37681022).
raw_performed(i_p128_a13, participant_locates_the_laundry_basket, 3, 37685081).
raw_performed(i_p128_a13, participant_locates_the_laundry_basket, 4, 37690029).
raw_performed(i_p128_a13, participant_moves_to_the_couch, 5, 37690065).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 6, 37691028).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 7, 37693002).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 8, 37712058).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 9, 37712099).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 10, 37741042).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 11, 37766011).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 12, 37781028).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 13, 37785045).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 14, 37793006).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 15, 37808061).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 16, 37811028).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 17, 37815084).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 18, 37834070).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 19, 37842034).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 20, 37856033).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 21, 37872051).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 22, 37873025).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 23, 37877045).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 24, 37878050).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 25, 37879038).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 26, 37905047).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 27, 37906017).
raw_performed(i_p128_a13, participant_sortsfolds_the_laundry, 28, 37909004).

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

