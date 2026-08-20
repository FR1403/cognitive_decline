% ======================================================================
% Paziente 215
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

instance(i_p215_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p215_a13, participant_moves_to_the_hallway_closet, 1, 53023839).
raw_performed(i_p215_a13, participant_moves_to_the_hallway_closet, 2, 53024677).
raw_performed(i_p215_a13, participant_locates_the_laundry_basket, 3, 53026876).
raw_performed(i_p215_a13, participant_locates_the_laundry_basket, 4, 53033450).
raw_performed(i_p215_a13, participant_locates_the_laundry_basket, 5, 53033553).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 6, 53038593).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 7, 53045165).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 8, 53048445).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 9, 53069125).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 10, 53070643).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 11, 53078155).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 12, 53084723).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 13, 53089766).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 14, 53096335).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 15, 53106077).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 16, 53113017).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 17, 53130833).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 18, 53132498).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 19, 53134201).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 20, 53136620).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 21, 53138478).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 22, 53141339).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 23, 53142227).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 24, 53177881).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 25, 53180134).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 26, 53185945).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 27, 53190819).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 28, 53196074).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 29, 53198507).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 30, 53203559).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 31, 53212001).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 32, 53221003).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 33, 53224017).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 34, 53226447).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 35, 53234101).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 36, 53239209).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 37, 53251751).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 38, 53256823).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 39, 53262824).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 40, 53266219).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 41, 53271223).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 42, 53273691).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 43, 53277978).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 44, 53280621).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 45, 53284562).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 46, 53290918).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 47, 53296552).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 48, 53300112).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 49, 53309885).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 50, 53312874).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 51, 53315873).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 52, 53320561).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 53, 53322659).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 54, 53328789).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 55, 53333497).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 56, 53335744).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 57, 53340596).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 58, 53343985).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 59, 53356001).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 60, 53363465).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 61, 53365555).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 62, 53367997).
raw_performed(i_p215_a13, participant_sortsfolds_the_laundry, 63, 53375309).

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

