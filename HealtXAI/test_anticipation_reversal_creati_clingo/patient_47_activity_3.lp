% ======================================================================
% Paziente 47
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

expected_pos(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_sits_at_dining_room_table, 1).
expected_pos(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_retrieves_birthday_card, 2).
expected_pos(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish, 3).
expected_pos(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_retrieves_check, 4).
expected_pos(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_check_for_birthday_card, 5).
expected_pos(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, 6).
expected_pos(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_addresses_the_envelope, 7).
expected_pos(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_places_envelope_in_the_mail_organizer, 8).

depends_on(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, participant_retrieves_birthday_card).
depends_on(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, participant_retrieves_check).
depends_on(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish).
depends_on(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, participant_writes_check_for_birthday_card).
depends_on(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish, participant_retrieves_birthday_card).
depends_on(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_check_for_birthday_card, participant_retrieves_check).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p47_a3, write_a_birthday_card_enclose_a_check_and_address_an_envelope).
performed(i_p47_a3, participant_sits_at_dining_room_table, 1).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.

