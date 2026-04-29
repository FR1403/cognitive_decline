% =================================================================================================
% Paziente 211
% Attività: Sort and fold a basketful of clothing containing men's, women's and children's articles.
% =================================================================================================


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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).


performed(i1, participant_moves_to_the_hallway_closet).
performed(i1, participant_locates_the_laundry_basket).
performed(i1, participant_moves_to_the_couch).
performed(i1, participant_sortsfolds_the_laundry).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
