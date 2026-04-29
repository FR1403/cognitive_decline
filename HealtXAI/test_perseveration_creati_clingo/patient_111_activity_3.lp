% ======================================================================
% Paziente 111
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

instance(i_p111_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p111_a4, participant_moves_to_the_living_room, 1, 35120465).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 2, 35122809).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 3, 35124443).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 4, 35139408).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 5, 35147465).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 6, 35187743).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 7, 35193010).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 8, 35199780).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 9, 35228470).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 10, 35242325).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 11, 35261454).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 12, 35272315).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 13, 35274969).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 14, 35280443).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 15, 35295096).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 16, 35299773).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 17, 35315822).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 18, 35319032).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 19, 35324065).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 20, 35329388).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 21, 35336254).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 22, 35341616).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 23, 35343955).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 24, 35352081).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 25, 35355770).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 26, 35357649).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 27, 35367593).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 28, 35374504).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 29, 35379596).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 30, 35383497).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 31, 35386492).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 32, 35388214).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 33, 35389888).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 34, 35398291).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 35, 35423645).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 36, 35436753).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 37, 35521307).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 38, 35525859).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 39, 35529588).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 40, 35541914).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 41, 35545136).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 42, 35555439).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 43, 35558802).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 44, 35584101).
raw_performed(i_p111_a4, participant_reads_instructions_next_to_the_tv, 45, 35606630).
raw_performed(i_p111_a4, participant_watches_news_clip, 46, 35641283).
raw_performed(i_p111_a4, participant_watches_news_clip, 47, 35654866).
raw_performed(i_p111_a4, participant_watches_news_clip, 48, 35931771).

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

