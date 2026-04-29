% ======================================================================
% Paziente 72
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

instance(i_p72_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p72_a4, participant_moves_to_the_living_room, 1, 35699906).
raw_performed(i_p72_a4, participant_reads_instructions_next_to_the_tv, 2, 35699931).
raw_performed(i_p72_a4, participant_reads_instructions_next_to_the_tv, 3, 35709349).
raw_performed(i_p72_a4, participant_reads_instructions_next_to_the_tv, 4, 35723482).
raw_performed(i_p72_a4, participant_reads_instructions_next_to_the_tv, 5, 35754784).
raw_performed(i_p72_a4, participant_reads_instructions_next_to_the_tv, 6, 35801167).
raw_performed(i_p72_a4, participant_watches_news_clip, 7, 35866770).
raw_performed(i_p72_a4, participant_watches_news_clip, 8, 35898889).
raw_performed(i_p72_a4, participant_watches_news_clip, 9, 35915481).
raw_performed(i_p72_a4, participant_watches_news_clip, 10, 35939082).
raw_performed(i_p72_a4, participant_watches_news_clip, 11, 35943166).
raw_performed(i_p72_a4, participant_watches_news_clip, 12, 35975237).
raw_performed(i_p72_a4, participant_watches_news_clip, 13, 35978763).
raw_performed(i_p72_a4, participant_watches_news_clip, 14, 36087408).
raw_performed(i_p72_a4, participant_watches_news_clip, 15, 36107484).
raw_performed(i_p72_a4, participant_watches_news_clip, 16, 36119023).
raw_performed(i_p72_a4, participant_watches_news_clip, 17, 36148734).
raw_performed(i_p72_a4, participant_watches_news_clip, 18, 36224247).
raw_performed(i_p72_a4, participant_watches_news_clip, 19, 36237883).
raw_performed(i_p72_a4, participant_watches_news_clip, 20, 36273671).
raw_performed(i_p72_a4, participant_watches_news_clip, 21, 36274654).
raw_performed(i_p72_a4, participant_watches_news_clip, 22, 36277935).
raw_performed(i_p72_a4, participant_watches_news_clip, 23, 36290044).
raw_performed(i_p72_a4, participant_watches_news_clip, 24, 36303577).
raw_performed(i_p72_a4, participant_watches_news_clip, 25, 36320803).
raw_performed(i_p72_a4, participant_watches_news_clip, 26, 36332062).
raw_performed(i_p72_a4, participant_watches_news_clip, 27, 36344653).
raw_performed(i_p72_a4, participant_watches_news_clip, 28, 36352875).
raw_performed(i_p72_a4, participant_watches_news_clip, 29, 36360026).
raw_performed(i_p72_a4, participant_watches_news_clip, 30, 36375472).
raw_performed(i_p72_a4, participant_watches_news_clip, 31, 36379523).

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

