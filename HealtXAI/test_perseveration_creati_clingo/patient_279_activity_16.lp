% ======================================================================
% Paziente 279
% Attività: Setup hands for a card game, answer the phone and describe the rules of the game.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).

action(participant_moves_to_the_kitchen).
action(participant_locates_deck_of_cards_from_kitchen_cabinet_b).
action(participant_brings_deck_of_cards_to_the_dining_room_table).
action(participant_sets_up_card_game).
action(participant_answers_the_telephone).
action(participant_explains_the_rules_of_the_game_over_the_phone).
action(participant_hangs_up_the_phone).

action_type(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_moves_to_the_kitchen, 7).
action_type(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_locates_deck_of_cards_from_kitchen_cabinet_b, 10).
action_type(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_brings_deck_of_cards_to_the_dining_room_table, 5).
action_type(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_sets_up_card_game, 5).
action_type(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_answers_the_telephone, 11).
action_type(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_explains_the_rules_of_the_game_over_the_phone, 5).
action_type(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_hangs_up_the_phone, 12).

expected_count(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_moves_to_the_kitchen, 1).
expected_count(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_locates_deck_of_cards_from_kitchen_cabinet_b, 1).
expected_count(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_brings_deck_of_cards_to_the_dining_room_table, 1).
expected_count(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_sets_up_card_game, 1).
expected_count(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_answers_the_telephone, 1).
expected_count(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_explains_the_rules_of_the_game_over_the_phone, 1).
expected_count(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_hangs_up_the_phone, 1).

action_gap(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_moves_to_the_kitchen, 240000).
action_gap(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_locates_deck_of_cards_from_kitchen_cabinet_b, 18000).
action_gap(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_brings_deck_of_cards_to_the_dining_room_table, 240000).
action_gap(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_sets_up_card_game, 240000).
action_gap(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_answers_the_telephone, 240000).
action_gap(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_explains_the_rules_of_the_game_over_the_phone, 240000).
action_gap(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_hangs_up_the_phone, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p279_a17, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).


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

