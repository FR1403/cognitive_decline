% ======================================================================
% Paziente 137
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

part_of(participant_moves_to_the_hallway_closet, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).
part_of(participant_locates_the_laundry_basket, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).
part_of(participant_moves_to_the_couch, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).
part_of(participant_sortsfolds_the_laundry, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

expected_pos(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_hallway_closet, 1).
expected_pos(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, 2).
expected_pos(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_moves_to_the_couch, 3).
expected_pos(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, 4).

depends_on(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_locates_the_laundry_basket, participant_moves_to_the_hallway_closet).
depends_on(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, participant_locates_the_laundry_basket).
depends_on(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, participant_moves_to_the_couch).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p137_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).
performed(i_p137_a13, participant_moves_to_the_hallway_closet, 1).
performed(i_p137_a13, participant_locates_the_laundry_basket, 2).
performed(i_p137_a13, participant_moves_to_the_couch, 3).
performed(i_p137_a13, participant_sortsfolds_the_laundry, 4).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.

