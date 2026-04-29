% ======================================================================
% Paziente 85
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

instance(i_p85_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p85_a13, participant_moves_to_the_hallway_closet, 1, 38433083).
raw_performed(i_p85_a13, participant_moves_to_the_hallway_closet, 2, 38434003).
raw_performed(i_p85_a13, participant_moves_to_the_hallway_closet, 3, 38437044).
raw_performed(i_p85_a13, participant_locates_the_laundry_basket, 4, 38442016).
raw_performed(i_p85_a13, participant_locates_the_laundry_basket, 5, 38443048).
raw_performed(i_p85_a13, participant_locates_the_laundry_basket, 6, 38450036).
raw_performed(i_p85_a13, participant_moves_to_the_couch, 7, 38452089).
raw_performed(i_p85_a13, participant_moves_to_the_couch, 8, 38453066).
raw_performed(i_p85_a13, participant_moves_to_the_couch, 9, 38454008).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 10, 38455046).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 11, 38476001).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 12, 38483090).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 13, 38485087).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 14, 38488099).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 15, 38492022).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 16, 38494065).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 17, 38496084).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 18, 38502080).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 19, 38503011).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 20, 38519007).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 21, 38527009).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 22, 38532053).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 23, 38541047).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 24, 38541081).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 25, 38544098).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 26, 38548082).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 27, 38552062).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 28, 38553072).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 29, 38554007).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 30, 38557000).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 31, 38571090).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 32, 38575041).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 33, 38585001).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 34, 38596024).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 35, 38614003).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 36, 38621033).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 37, 38636051).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 38, 38652037).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 39, 38663052).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 40, 38665008).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 41, 38673059).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 42, 38677084).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 43, 38679072).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 44, 38680094).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 45, 38689032).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 46, 38689065).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 47, 38692071).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 48, 38695017).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 49, 38698061).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 50, 38706023).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 51, 38721006).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 52, 38730050).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 53, 38730082).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 54, 38736012).
raw_performed(i_p85_a13, participant_sortsfolds_the_laundry, 55, 38736027).

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

