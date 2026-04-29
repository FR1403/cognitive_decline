% ======================================================================
% Paziente 130
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

instance(i_p130_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p130_a4, participant_moves_to_the_living_room, 1, 52633021).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 2, 52636036).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 3, 52657046).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 4, 52677089).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 5, 52694060).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 6, 52706023).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 7, 52723086).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 8, 52731034).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 9, 52735052).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 10, 52739061).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 11, 52745040).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 12, 52749020).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 13, 52751028).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 14, 52754017).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 15, 52759060).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 16, 52783024).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 17, 52796058).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 18, 52803068).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 19, 52815077).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 20, 52822002).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 21, 52832039).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 22, 52866003).
raw_performed(i_p130_a4, participant_watches_news_clip, 23, 52904045).
raw_performed(i_p130_a4, participant_watches_news_clip, 24, 52914064).
raw_performed(i_p130_a4, participant_watches_news_clip, 25, 52915065).
raw_performed(i_p130_a4, participant_watches_news_clip, 26, 52951044).
raw_performed(i_p130_a4, participant_watches_news_clip, 27, 52953013).
raw_performed(i_p130_a4, participant_watches_news_clip, 28, 52954004).
raw_performed(i_p130_a4, participant_watches_news_clip, 29, 53223069).
raw_performed(i_p130_a4, participant_watches_news_clip, 30, 53227062).

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

