% =================================================================================================
% Paziente 83
% Attività: Setup hands for a card game, answer the phone and describe the rules of the game.
% =================================================================================================


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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, setup_hands_for_a_card_game_answer_the_phone_and_describe_the_rules_of_the_game).


performed(i1, participant_moves_to_the_kitchen).
performed(i1, participant_locates_deck_of_cards_from_kitchen_cabinet_b).
performed(i1, participant_brings_deck_of_cards_to_the_dining_room_table).
performed(i1, participant_hangs_up_the_phone).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
