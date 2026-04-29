% ======================================================================
% Paziente 154
% Attività: Write a birthday card, enclose a check and address an envelope.
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

action_type(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_sits_at_dining_room_table, 8).
action_type(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_retrieves_birthday_card, 1).
action_type(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish, 5).
action_type(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_retrieves_check, 1).
action_type(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_check_for_birthday_card, 5).
action_type(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, 5).
action_type(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_addresses_the_envelope, 5).
action_type(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_places_envelope_in_the_mail_organizer, 12).

expected_count(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_sits_at_dining_room_table, 1).
expected_count(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_retrieves_birthday_card, 1).
expected_count(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish, 1).
expected_count(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_retrieves_check, 1).
expected_count(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_check_for_birthday_card, 1).
expected_count(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, 1).
expected_count(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_addresses_the_envelope, 1).
expected_count(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_places_envelope_in_the_mail_organizer, 1).

action_gap(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_sits_at_dining_room_table, 240000).
action_gap(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_retrieves_birthday_card, 18000).
action_gap(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_birthday_wish_inside_the_card_happy_birthday_name_wish, 240000).
action_gap(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_retrieves_check, 18000).
action_gap(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_writes_check_for_birthday_card, 240000).
action_gap(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_puts_birthday_card_and_check_in_envelope, 240000).
action_gap(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_addresses_the_envelope, 240000).
action_gap(write_a_birthday_card_enclose_a_check_and_address_an_envelope, participant_places_envelope_in_the_mail_organizer, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p154_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p154_a4, participant_moves_to_the_living_room, 1, 36123004).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 2, 36132073).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 3, 36147061).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 4, 36164048).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 5, 36167993).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 6, 36171513).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 7, 36196050).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 8, 36207057).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 9, 36216088).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 10, 36221046).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 11, 36231621).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 12, 36239009).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 13, 36259531).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 14, 36273074).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 15, 36285006).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 16, 36298002).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 17, 36304024).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 18, 36321053).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 19, 36332376).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 20, 36343020).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 21, 36349066).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 22, 36363058).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 23, 36388069).

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

