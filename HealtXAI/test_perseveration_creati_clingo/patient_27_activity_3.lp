% ======================================================================
% Paziente 27
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

instance(i_p27_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p27_a4, participant_moves_to_the_living_room, 1, 32214008).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 2, 32216068).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 3, 32229071).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 4, 32235033).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 5, 32245063).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 6, 32253015).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 7, 32275021).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 8, 32282007).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 9, 32287077).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 10, 32289042).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 11, 32294092).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 12, 32309005).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 13, 32320080).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 14, 32324077).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 15, 32332079).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 16, 32340010).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 17, 32343081).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 18, 32356083).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 19, 32367038).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 20, 32375087).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 21, 32378085).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 22, 32385047).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 23, 32391001).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 24, 32395009).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 25, 32399007).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 26, 32401064).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 27, 32422094).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 28, 32429045).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 29, 32434080).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 30, 32443055).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 31, 32446054).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 32, 32457009).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 33, 32465046).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 34, 32467098).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 35, 32488002).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 36, 32491046).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 37, 32499082).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 38, 32509044).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 39, 32512040).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 40, 32562091).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 41, 32566010).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 42, 32588020).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 43, 32619064).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 44, 32621098).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 45, 32645015).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 46, 32655093).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 47, 32665004).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 48, 32684087).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 49, 32686074).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 50, 32694001).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 51, 32698006).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 52, 32703041).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 53, 32709027).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 54, 32711067).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 55, 32718079).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 56, 32733001).
raw_performed(i_p27_a4, participant_reads_instructions_next_to_the_tv, 57, 32736001).

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

