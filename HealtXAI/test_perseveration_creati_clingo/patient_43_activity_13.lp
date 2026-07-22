% ======================================================================
% Paziente 43
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

instance(i_p43_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p43_a13, participant_moves_to_the_hallway_closet, 1, 36677184).
raw_performed(i_p43_a13, participant_moves_to_the_hallway_closet, 2, 36677202).
raw_performed(i_p43_a13, participant_locates_the_laundry_basket, 3, 36678154).
raw_performed(i_p43_a13, participant_locates_the_laundry_basket, 4, 36684227).
raw_performed(i_p43_a13, participant_locates_the_laundry_basket, 5, 36685604).
raw_performed(i_p43_a13, participant_moves_to_the_couch, 6, 36689670).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 7, 36714456).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 8, 36728744).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 9, 36741223).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 10, 36741600).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 11, 36751450).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 12, 36754820).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 13, 36758847).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 14, 36761910).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 15, 36764066).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 16, 36769915).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 17, 36772354).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 18, 36777093).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 19, 36785510).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 20, 36785527).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 21, 36789362).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 22, 36800890).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 23, 36804529).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 24, 36804546).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 25, 36810496).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 26, 36834161).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 27, 36838542).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 28, 36850167).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 29, 36850185).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 30, 36855050).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 31, 36856709).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 32, 36858702).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 33, 36865065).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 34, 36873070).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 35, 36873441).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 36, 36879422).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 37, 36883105).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 38, 36885047).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 39, 36894176).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 40, 36896878).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 41, 36914029).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 42, 36917918).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 43, 36922118).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 44, 36928825).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 45, 36930393).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 46, 36933337).
raw_performed(i_p43_a13, participant_sortsfolds_the_laundry, 47, 36949581).

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

