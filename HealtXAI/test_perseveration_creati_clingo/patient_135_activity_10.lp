% ======================================================================
% Paziente 135
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

instance(i_p135_a11, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p135_a11, participant_wets_the_sponge, 1, 45253991).
raw_performed(i_p135_a11, participant_wets_the_sponge, 2, 45254018).
raw_performed(i_p135_a11, participant_washes_the_countertops, 3, 45255972).
raw_performed(i_p135_a11, participant_washes_the_countertops, 4, 45267433).
raw_performed(i_p135_a11, participant_washes_the_countertops, 5, 45271461).
raw_performed(i_p135_a11, participant_washes_the_countertops, 6, 45295542).
raw_performed(i_p135_a11, participant_washes_the_countertops, 7, 45321588).
raw_performed(i_p135_a11, participant_washes_the_countertops, 8, 45329561).
raw_performed(i_p135_a11, participant_washes_the_countertops, 9, 45337684).
raw_performed(i_p135_a11, participant_washes_the_countertops, 10, 45339160).
raw_performed(i_p135_a11, participant_wets_the_sponge, 11, 45344741).
raw_performed(i_p135_a11, participant_wets_the_sponge, 12, 45344769).
raw_performed(i_p135_a11, participant_wets_the_sponge, 13, 45348556).
raw_performed(i_p135_a11, participant_washes_the_countertops, 14, 45352673).
raw_performed(i_p135_a11, participant_wets_the_sponge, 15, 45386074).
raw_performed(i_p135_a11, participant_wets_the_sponge, 16, 45389894).
raw_performed(i_p135_a11, participant_wets_the_sponge, 17, 45393606).
raw_performed(i_p135_a11, participant_washes_the_countertops, 18, 45393998).
raw_performed(i_p135_a11, participant_washes_the_countertops, 19, 45400528).
raw_performed(i_p135_a11, participant_washes_the_countertops, 20, 45419281).
raw_performed(i_p135_a11, participant_rinses_out_the_sponge, 21, 45437239).
raw_performed(i_p135_a11, participant_rinses_out_the_sponge, 22, 45440999).
raw_performed(i_p135_a11, participant_rinses_out_the_sponge, 23, 45448550).
raw_performed(i_p135_a11, participant_rinses_out_the_sponge, 24, 45452327).

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

