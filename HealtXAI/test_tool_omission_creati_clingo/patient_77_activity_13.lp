% ======================================================================
% Paziente 77
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

instance(i_p77_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

performed(i_p77_a13, participant_moves_to_the_hallway_closet, 1).
performed(i_p77_a13, participant_moves_to_the_hallway_closet, 2).
performed(i_p77_a13, participant_locates_the_laundry_basket, 3).
performed(i_p77_a13, participant_locates_the_laundry_basket, 4).
performed(i_p77_a13, participant_moves_to_the_couch, 5).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 6).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 7).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 8).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 9).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 10).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 11).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 12).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 13).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 14).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 15).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 16).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 17).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 18).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 19).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 20).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 21).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 22).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 23).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 24).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 25).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 26).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 27).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 28).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 29).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 30).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 31).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 32).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 33).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 34).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 35).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 36).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 37).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 38).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 39).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 40).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 41).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 42).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 43).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 44).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 45).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 46).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 47).
performed(i_p77_a13, participant_sortsfolds_the_laundry, 48).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

