% ======================================================================
% Paziente 202
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

instance(i_p202_a14, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p202_a14, participant_moves_to_the_kitchen, 1, 54015080).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 2, 54018049).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 3, 54022043).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 4, 54030074).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 5, 54042008).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 6, 54049007).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 7, 54069084).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 8, 54195007).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 9, 54225000).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 10, 54332025).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 11, 54342081).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 12, 54352095).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 13, 54370070).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 14, 54378042).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 15, 54390025).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 16, 54402012).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 17, 54456070).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 18, 54474037).
raw_performed(i_p202_a14, participant_removes_materials_from_cupboard, 19, 54478051).
raw_performed(i_p202_a14, participant_puts_sugar_in_oatmeal, 20, 54553038).
raw_performed(i_p202_a14, participant_puts_sugar_in_oatmeal, 21, 54568080).

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

