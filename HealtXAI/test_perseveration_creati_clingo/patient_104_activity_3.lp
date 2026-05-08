% ======================================================================
% Paziente 104
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

instance(i_p104_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p104_a4, participant_moves_to_the_living_room, 1, 49821157).
raw_performed(i_p104_a4, participant_selects_correct_dvd, 2, 49824100).
raw_performed(i_p104_a4, participant_selects_correct_dvd, 3, 49857248).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 4, 49863833).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 5, 49907294).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 6, 49918953).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 7, 49923539).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 8, 49932958).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 9, 49945795).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 10, 49972612).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 11, 49988778).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 12, 49999103).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 13, 50014502).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 14, 50030064).
raw_performed(i_p104_a4, participant_watches_news_clip, 15, 50047753).
raw_performed(i_p104_a4, participant_watches_news_clip, 16, 50075687).
raw_performed(i_p104_a4, participant_watches_news_clip, 17, 50089306).
raw_performed(i_p104_a4, participant_watches_news_clip, 18, 50099265).
raw_performed(i_p104_a4, participant_watches_news_clip, 19, 50101820).
raw_performed(i_p104_a4, participant_watches_news_clip, 20, 50120137).
raw_performed(i_p104_a4, participant_watches_news_clip, 21, 50184939).
raw_performed(i_p104_a4, participant_watches_news_clip, 22, 50187719).
raw_performed(i_p104_a4, participant_watches_news_clip, 23, 50255606).
raw_performed(i_p104_a4, participant_watches_news_clip, 24, 50416949).
raw_performed(i_p104_a4, participant_watches_news_clip, 25, 50421093).
raw_performed(i_p104_a4, participant_watches_news_clip, 26, 50426336).
raw_performed(i_p104_a4, participant_watches_news_clip, 27, 50434789).

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

