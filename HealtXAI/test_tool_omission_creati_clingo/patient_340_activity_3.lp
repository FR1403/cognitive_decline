% ======================================================================
% Paziente 340
% Attivita: Write a birthday card, enclose a check and address an envelope.
% ======================================================================


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

expected_object(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish, pen).
expected_object(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_check_for_birthday_card, pen).
expected_object(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, envelope).
expected_object(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_addresses_the_envelope, envelope_stamp).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p340_a3, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

performed(i_p340_a3, participant_sits_at_dining_room_table, 1).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

