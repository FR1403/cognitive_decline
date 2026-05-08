% ======================================================================
% Paziente 79
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

instance(i_p79_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p79_a4, participant_moves_to_the_living_room, 1, 35202019).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 2, 35203255).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 3, 35215347).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 4, 35216938).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 5, 35218786).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 6, 35223078).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 7, 35234779).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 8, 35240183).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 9, 35253347).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 10, 35266880).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 11, 35270905).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 12, 35279521).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 13, 35282573).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 14, 35284420).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 15, 35290783).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 16, 35293033).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 17, 35296964).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 18, 35301269).
raw_performed(i_p79_a4, participant_reads_instructions_next_to_the_tv, 19, 35311682).
raw_performed(i_p79_a4, participant_watches_news_clip, 20, 35315819).
raw_performed(i_p79_a4, participant_watches_news_clip, 21, 35324234).
raw_performed(i_p79_a4, participant_watches_news_clip, 22, 35328198).
raw_performed(i_p79_a4, participant_watches_news_clip, 23, 35331507).
raw_performed(i_p79_a4, participant_watches_news_clip, 24, 35335692).
raw_performed(i_p79_a4, participant_watches_news_clip, 25, 35345899).
raw_performed(i_p79_a4, participant_watches_news_clip, 26, 35347784).
raw_performed(i_p79_a4, participant_watches_news_clip, 27, 35348258).
raw_performed(i_p79_a4, participant_watches_news_clip, 28, 35642970).
raw_performed(i_p79_a4, participant_watches_news_clip, 29, 35644742).

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

