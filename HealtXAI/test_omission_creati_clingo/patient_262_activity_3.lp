% =================================================================================================
% Paziente 262
% Attività: Write a birthday card, enclose a check and address an envelope.
% =================================================================================================


% ========================
% Level A - Activity model
% ========================

activity(write_a_birthday_card_enclose_a_check_and_address_an_envelope).

action(participant_sits_at_dining_room_table).
action(participant_retrieves_birthday_card).
action(participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish).
action(participant_retrieves_check).
action(participant_writes_check_for_birthday_card).
action(participant_puts_birthday_card_and_check_in_envelope).
action(participant_addresses_the_envelope).
action(participant_places_envelope_in_the_mail_organizer).

part_of(participant_sits_at_dining_room_table, write_a_birthday_card_enclose_a_check_and_address_an_envelope).
part_of(participant_retrieves_birthday_card, write_a_birthday_card_enclose_a_check_and_address_an_envelope).
part_of(participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish, write_a_birthday_card_enclose_a_check_and_address_an_envelope).
part_of(participant_retrieves_check, write_a_birthday_card_enclose_a_check_and_address_an_envelope).
part_of(participant_writes_check_for_birthday_card, write_a_birthday_card_enclose_a_check_and_address_an_envelope).
part_of(participant_puts_birthday_card_and_check_in_envelope, write_a_birthday_card_enclose_a_check_and_address_an_envelope).
part_of(participant_addresses_the_envelope, write_a_birthday_card_enclose_a_check_and_address_an_envelope).
part_of(participant_places_envelope_in_the_mail_organizer, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, write_a_birthday_card_enclose_a_check_and_address_an_envelope).


performed(i1, participant_sits_at_dining_room_table).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
