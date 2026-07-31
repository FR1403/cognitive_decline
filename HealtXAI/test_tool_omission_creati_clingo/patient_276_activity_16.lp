% ======================================================================
% Paziente 276
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

expected_object(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_brings_deck_of_cards_to_the_dining_room_table, deck).
expected_object(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_sets_up_card_game, card).
expected_object(setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game, participant_explains_the_rules_of_the_game_over_the_phone, phone).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p276_a16, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).

performed(i_p276_a16, participant_moves_to_the_kitchen, 1).
performed(i_p276_a16, participant_locates_deck_of_cards_from_kitchen_cabinet_b, 2).
performed(i_p276_a16, participant_locates_deck_of_cards_from_kitchen_cabinet_b, 3).
performed(i_p276_a16, participant_locates_deck_of_cards_from_kitchen_cabinet_b, 4).
performed(i_p276_a16, participant_brings_deck_of_cards_to_the_dining_room_table, 5).
performed(i_p276_a16, participant_brings_deck_of_cards_to_the_dining_room_table, 6).

observed_object(i_p276_a16,participant_brings_deck_of_cards_to_the_dining_room_table,deck).
observed_object(i_p276_a16,participant_brings_deck_of_cards_to_the_dining_room_table,deck).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

