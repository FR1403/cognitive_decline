% ======================================================================
% Paziente 37
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

instance(i_p37_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p37_a13, participant_moves_to_the_hallway_closet, 1, 56268027).
raw_performed(i_p37_a13, participant_moves_to_the_hallway_closet, 2, 56269053).
raw_performed(i_p37_a13, participant_locates_the_laundry_basket, 3, 56278092).
raw_performed(i_p37_a13, participant_moves_to_the_couch, 4, 56279056).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 5, 56280000).
raw_performed(i_p37_a13, participant_moves_to_the_couch, 6, 56280036).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 7, 56282008).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 8, 56287093).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 9, 56295004).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 10, 56300024).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 11, 56305069).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 12, 56307097).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 13, 56320000).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 14, 56331005).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 15, 56338047).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 16, 56339094).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 17, 56357074).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 18, 56378017).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 19, 56380068).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 20, 56386000).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 21, 56387043).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 22, 56391041).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 23, 56392004).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 24, 56399063).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 25, 56420062).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 26, 56445044).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 27, 56471007).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 28, 56484004).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 29, 56486001).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 30, 56497017).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 31, 56525013).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 32, 56529052).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 33, 56532084).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 34, 56541082).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 35, 56568038).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 36, 56578058).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 37, 56579061).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 38, 56589081).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 39, 56590004).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 40, 56600067).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 41, 56602094).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 42, 56612013).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 43, 56612015).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 44, 56624081).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 45, 56634002).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 46, 56637001).
raw_performed(i_p37_a13, participant_sortsfolds_the_laundry, 47, 56642006).

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

