% ======================================================================
% Paziente 98
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

instance(i_p98_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p98_a4, participant_moves_to_the_living_room, 1, 49545293).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 2, 49546263).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 3, 49549932).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 4, 49554132).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 5, 49556100).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 6, 49565654).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 7, 49572428).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 8, 49575800).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 9, 49579732).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 10, 49589302).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 11, 49593773).
raw_performed(i_p98_a4, participant_reads_instructions_next_to_the_tv, 12, 49602296).
raw_performed(i_p98_a4, participant_watches_news_clip, 13, 49603651).
raw_performed(i_p98_a4, participant_watches_news_clip, 14, 49605305).
raw_performed(i_p98_a4, participant_watches_news_clip, 15, 49844670).
raw_performed(i_p98_a4, participant_watches_news_clip, 16, 49845191).
raw_performed(i_p98_a4, participant_watches_news_clip, 17, 49846874).
raw_performed(i_p98_a4, participant_watches_news_clip, 18, 49903410).
raw_performed(i_p98_a4, participant_watches_news_clip, 19, 49904359).
raw_performed(i_p98_a4, participant_watches_news_clip, 20, 49906230).
raw_performed(i_p98_a4, participant_watches_news_clip, 21, 49907816).
raw_performed(i_p98_a4, participant_watches_news_clip, 22, 49907921).
raw_performed(i_p98_a4, participant_watches_news_clip, 23, 49961409).
raw_performed(i_p98_a4, participant_watches_news_clip, 24, 49961544).
raw_performed(i_p98_a4, participant_watches_news_clip, 25, 49963294).
raw_performed(i_p98_a4, participant_watches_news_clip, 26, 49963413).
raw_performed(i_p98_a4, participant_watches_news_clip, 27, 50145456).
raw_performed(i_p98_a4, participant_watches_news_clip, 28, 50145762).
raw_performed(i_p98_a4, participant_watches_news_clip, 29, 50145881).
raw_performed(i_p98_a4, participant_watches_news_clip, 30, 50148643).
raw_performed(i_p98_a4, participant_watches_news_clip, 31, 50149094).
raw_performed(i_p98_a4, participant_watches_news_clip, 32, 50149230).
raw_performed(i_p98_a4, participant_watches_news_clip, 33, 50152451).

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

