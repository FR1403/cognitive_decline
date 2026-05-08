% ======================================================================
% Paziente 132
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

instance(i_p132_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p132_a4, participant_moves_to_the_living_room, 1, 38878642).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 2, 38879539).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 3, 38888788).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 4, 38897020).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 5, 38900668).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 6, 38912254).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 7, 38942925).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 8, 38945213).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 9, 38954043).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 10, 38955753).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 11, 38962643).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 12, 38986803).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 13, 38990289).
raw_performed(i_p132_a4, participant_reads_instructions_next_to_the_tv, 14, 38991895).
raw_performed(i_p132_a4, participant_watches_news_clip, 15, 38999406).
raw_performed(i_p132_a4, participant_watches_news_clip, 16, 38999542).
raw_performed(i_p132_a4, participant_watches_news_clip, 17, 39007011).
raw_performed(i_p132_a4, participant_watches_news_clip, 18, 39009501).
raw_performed(i_p132_a4, participant_watches_news_clip, 19, 39014009).
raw_performed(i_p132_a4, participant_watches_news_clip, 20, 39023594).
raw_performed(i_p132_a4, participant_watches_news_clip, 21, 39027130).
raw_performed(i_p132_a4, participant_watches_news_clip, 22, 39043251).
raw_performed(i_p132_a4, participant_watches_news_clip, 23, 39050622).
raw_performed(i_p132_a4, participant_watches_news_clip, 24, 39060953).
raw_performed(i_p132_a4, participant_watches_news_clip, 25, 39065576).
raw_performed(i_p132_a4, participant_watches_news_clip, 26, 39081564).
raw_performed(i_p132_a4, participant_watches_news_clip, 27, 39108617).
raw_performed(i_p132_a4, participant_watches_news_clip, 28, 39110678).
raw_performed(i_p132_a4, participant_watches_news_clip, 29, 39114055).
raw_performed(i_p132_a4, participant_watches_news_clip, 30, 39117051).
raw_performed(i_p132_a4, participant_watches_news_clip, 31, 39128588).
raw_performed(i_p132_a4, participant_watches_news_clip, 32, 39132122).
raw_performed(i_p132_a4, participant_watches_news_clip, 33, 39155862).
raw_performed(i_p132_a4, participant_watches_news_clip, 34, 39158371).
raw_performed(i_p132_a4, participant_watches_news_clip, 35, 39164910).
raw_performed(i_p132_a4, participant_watches_news_clip, 36, 39166180).
raw_performed(i_p132_a4, participant_watches_news_clip, 37, 39193734).
raw_performed(i_p132_a4, participant_watches_news_clip, 38, 39201774).
raw_performed(i_p132_a4, participant_watches_news_clip, 39, 39209455).
raw_performed(i_p132_a4, participant_watches_news_clip, 40, 39217747).
raw_performed(i_p132_a4, participant_watches_news_clip, 41, 39219450).
raw_performed(i_p132_a4, participant_watches_news_clip, 42, 39242892).
raw_performed(i_p132_a4, participant_watches_news_clip, 43, 39258854).
raw_performed(i_p132_a4, participant_watches_news_clip, 44, 39286123).
raw_performed(i_p132_a4, participant_watches_news_clip, 45, 39293497).
raw_performed(i_p132_a4, participant_watches_news_clip, 46, 39329062).
raw_performed(i_p132_a4, participant_watches_news_clip, 47, 39331142).
raw_performed(i_p132_a4, participant_watches_news_clip, 48, 39378581).
raw_performed(i_p132_a4, participant_watches_news_clip, 49, 39383372).
raw_performed(i_p132_a4, participant_watches_news_clip, 50, 39389347).
raw_performed(i_p132_a4, participant_watches_news_clip, 51, 39400587).
raw_performed(i_p132_a4, participant_watches_news_clip, 52, 39405507).
raw_performed(i_p132_a4, participant_watches_news_clip, 53, 39408566).
raw_performed(i_p132_a4, participant_watches_news_clip, 54, 39413352).
raw_performed(i_p132_a4, participant_watches_news_clip, 55, 39426256).
raw_performed(i_p132_a4, participant_watches_news_clip, 56, 39429821).
raw_performed(i_p132_a4, participant_watches_news_clip, 57, 39435463).
raw_performed(i_p132_a4, participant_watches_news_clip, 58, 39438116).
raw_performed(i_p132_a4, participant_watches_news_clip, 59, 39442074).
raw_performed(i_p132_a4, participant_watches_news_clip, 60, 39444900).
raw_performed(i_p132_a4, participant_watches_news_clip, 61, 39448223).
raw_performed(i_p132_a4, participant_watches_news_clip, 62, 39455909).
raw_performed(i_p132_a4, participant_watches_news_clip, 63, 39457879).

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

