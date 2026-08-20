% ======================================================================
% Paziente 247
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

instance(i_p247_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p247_a13, participant_moves_to_the_hallway_closet, 1, 40361047).
raw_performed(i_p247_a13, participant_locates_the_laundry_basket, 2, 40362878).
raw_performed(i_p247_a13, participant_locates_the_laundry_basket, 3, 40369795).
raw_performed(i_p247_a13, participant_locates_the_laundry_basket, 4, 40369943).
raw_performed(i_p247_a13, participant_moves_to_the_couch, 5, 40371307).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 6, 40371531).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 7, 40372471).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 8, 40380426).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 9, 40384201).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 10, 40399117).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 11, 40413516).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 12, 40423654).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 13, 40450580).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 14, 40456353).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 15, 40471980).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 16, 40487089).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 17, 40492234).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 18, 40494011).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 19, 40495402).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 20, 40500065).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 21, 40505185).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 22, 40507583).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 23, 40520381).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 24, 40532133).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 25, 40543469).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 26, 40549303).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 27, 40564363).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 28, 40570380).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 29, 40579233).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 30, 40586209).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 31, 40588391).
raw_performed(i_p247_a13, participant_sortsfolds_the_laundry, 32, 40588536).

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

