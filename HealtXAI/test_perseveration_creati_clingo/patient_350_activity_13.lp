% ======================================================================
% Paziente 350
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

instance(i_p350_a13, sort_and_fold_a_basketful_of_clothing_containing_mens_womens_and_childrens_articles).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p350_a13, participant_moves_to_the_hallway_closet, 1, 38344080).
raw_performed(i_p350_a13, participant_locates_the_laundry_basket, 2, 38345087).
raw_performed(i_p350_a13, participant_moves_to_the_couch, 3, 38359021).
raw_performed(i_p350_a13, participant_moves_to_the_couch, 4, 38359085).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 5, 38360090).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 6, 38362035).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 7, 38378002).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 8, 38386099).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 9, 38399093).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 10, 38408054).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 11, 38411008).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 12, 38414029).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 13, 38419033).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 14, 38427084).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 15, 38431002).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 16, 38435035).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 17, 38441018).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 18, 38450031).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 19, 38456055).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 20, 38465040).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 21, 38467029).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 22, 38478067).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 23, 38483046).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 24, 38495055).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 25, 38507067).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 26, 38539050).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 27, 38548063).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 28, 38553016).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 29, 38560086).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 30, 38563013).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 31, 38573010).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 32, 38575019).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 33, 38579001).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 34, 38581088).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 35, 38586008).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 36, 38592074).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 37, 38594002).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 38, 38599091).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 39, 38603061).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 40, 38611007).
raw_performed(i_p350_a13, participant_sortsfolds_the_laundry, 41, 38614038).

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

