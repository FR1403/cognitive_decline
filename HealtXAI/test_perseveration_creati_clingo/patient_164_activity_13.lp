% ======================================================================
% Paziente 164
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

instance(i_p164_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p164_a13, participant_moves_to_the_hallway_closet, 1, 37596084).
raw_performed(i_p164_a13, participant_moves_to_the_hallway_closet, 2, 37598036).
raw_performed(i_p164_a13, participant_locates_the_laundry_basket, 3, 37598039).
raw_performed(i_p164_a13, participant_locates_the_laundry_basket, 4, 37599082).
raw_performed(i_p164_a13, participant_locates_the_laundry_basket, 5, 37608004).
raw_performed(i_p164_a13, participant_moves_to_the_couch, 6, 37610004).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 7, 37610004).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 8, 37610067).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 9, 37611093).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 10, 37624022).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 11, 37633061).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 12, 37649008).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 13, 37651058).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 14, 37655003).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 15, 37674001).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 16, 37674007).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 17, 37679096).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 18, 37699097).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 19, 37706088).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 20, 37710046).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 21, 37714021).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 22, 37718036).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 23, 37721092).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 24, 37726029).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 25, 37733034).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 26, 37742089).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 27, 37745040).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 28, 37750085).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 29, 37760041).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 30, 37768034).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 31, 37776010).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 32, 37776071).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 33, 37784038).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 34, 37785086).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 35, 37788018).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 36, 37788076).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 37, 37801057).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 38, 37807074).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 39, 37814041).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 40, 37815003).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 41, 37827090).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 42, 37836049).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 43, 37847050).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 44, 37853012).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 45, 37854008).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 46, 37859086).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 47, 37862099).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 48, 37868044).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 49, 37868046).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 50, 37874028).
raw_performed(i_p164_a13, participant_sortsfolds_the_laundry, 51, 37877093).

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

