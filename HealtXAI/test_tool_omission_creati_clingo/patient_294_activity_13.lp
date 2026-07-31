% ======================================================================
% Paziente 294
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

expected_object(sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles, participant_sortsfolds_the_laundry, iron).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p294_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

performed(i_p294_a13, participant_moves_to_the_hallway_closet, 1).
performed(i_p294_a13, participant_moves_to_the_hallway_closet, 2).
performed(i_p294_a13, participant_moves_to_the_hallway_closet, 3).
performed(i_p294_a13, participant_locates_the_laundry_basket, 4).
performed(i_p294_a13, participant_locates_the_laundry_basket, 5).
performed(i_p294_a13, participant_locates_the_laundry_basket, 6).
performed(i_p294_a13, participant_moves_to_the_couch, 7).
performed(i_p294_a13, participant_sortsfolds_the_laundry, 8).
performed(i_p294_a13, participant_sortsfolds_the_laundry, 9).
performed(i_p294_a13, participant_sortsfolds_the_laundry, 10).
performed(i_p294_a13, participant_sortsfolds_the_laundry, 11).
performed(i_p294_a13, participant_sortsfolds_the_laundry, 12).
performed(i_p294_a13, participant_sortsfolds_the_laundry, 13).
performed(i_p294_a13, participant_sortsfolds_the_laundry, 14).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

