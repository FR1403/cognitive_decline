% ======================================================================
% Paziente 77
% Attivita: Setup hands for a card game, answer the phone and describe the rules of the game.
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

part_of(participant_moves_to_the_kitchen, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).
part_of(participant_locates_deck_of_cards_from_kitchen_cabinet_b, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).
part_of(participant_brings_deck_of_cards_to_the_dining_room_table, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).
part_of(participant_sets_up_card_game, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).
part_of(participant_answers_the_telephone, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).
part_of(participant_explains_the_rules_of_the_game_over_the_phone, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).
part_of(participant_hangs_up_the_phone, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).

expected_pos(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_moves_to_the_kitchen, 1).
expected_pos(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_locates_deck_of_cards_from_kitchen_cabinet_b, 2).
expected_pos(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_brings_deck_of_cards_to_the_dining_room_table, 3).
expected_pos(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_sets_up_card_game, 4).
expected_pos(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_answers_the_telephone, 5).
expected_pos(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_explains_the_rules_of_the_game_over_the_phone, 6).
expected_pos(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_hangs_up_the_phone, 7).

depends_on(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_brings_deck_of_cards_to_the_dining_room_table, participant_locates_deck_of_cards_from_kitchen_cabinet_b).
depends_on(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_explains_the_rules_of_the_game_over_the_phone, participant_answers_the_telephone).
depends_on(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_hangs_up_the_phone, participant_explains_the_rules_of_the_game_over_the_phone).
depends_on(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_locates_deck_of_cards_from_kitchen_cabinet_b, participant_moves_to_the_kitchen).
depends_on(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_sets_up_card_game, participant_brings_deck_of_cards_to_the_dining_room_table).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p77_a16, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).
performed(i_p77_a16, participant_moves_to_the_kitchen, 1).
performed(i_p77_a16, participant_locates_deck_of_cards_from_kitchen_cabinet_b, 2).
performed(i_p77_a16, participant_brings_deck_of_cards_to_the_dining_room_table, 3).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

anticipation_omission(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

#show reversal/3.
#show anticipation_omission/3.

