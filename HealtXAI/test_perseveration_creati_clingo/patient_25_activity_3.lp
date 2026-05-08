% ======================================================================
% Paziente 25
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

instance(i_p25_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p25_a4, participant_moves_to_the_living_room, 1, 51985988).
raw_performed(i_p25_a4, participant_moves_to_the_living_room, 2, 52008672).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 3, 52025194).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 4, 52028738).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 5, 52042849).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 6, 52049750).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 7, 52058364).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 8, 52064359).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 9, 52067480).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 10, 52073918).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 11, 52076382).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 12, 52079425).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 13, 52085178).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 14, 52088044).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 15, 52095304).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 16, 52097545).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 17, 52110090).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 18, 52114993).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 19, 52120428).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 20, 52126440).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 21, 52128874).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 22, 52138993).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 23, 52144328).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 24, 52152294).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 25, 52158150).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 26, 52189401).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 27, 52193167).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 28, 52196720).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 29, 52203848).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 30, 52207241).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 31, 52212292).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 32, 52220348).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 33, 52222734).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 34, 52226801).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 35, 52233099).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 36, 52240998).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 37, 52244298).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 38, 52254674).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 39, 52259387).
raw_performed(i_p25_a4, participant_reads_instructions_next_to_the_tv, 40, 52264415).
raw_performed(i_p25_a4, participant_watches_news_clip, 41, 52266092).
raw_performed(i_p25_a4, participant_watches_news_clip, 42, 52268137).
raw_performed(i_p25_a4, participant_watches_news_clip, 43, 52288961).
raw_performed(i_p25_a4, participant_watches_news_clip, 44, 52338839).
raw_performed(i_p25_a4, participant_watches_news_clip, 45, 52373697).
raw_performed(i_p25_a4, participant_watches_news_clip, 46, 52413489).
raw_performed(i_p25_a4, participant_watches_news_clip, 47, 52476820).
raw_performed(i_p25_a4, participant_watches_news_clip, 48, 52479827).
raw_performed(i_p25_a4, participant_watches_news_clip, 49, 52510736).
raw_performed(i_p25_a4, participant_watches_news_clip, 50, 52522751).
raw_performed(i_p25_a4, participant_watches_news_clip, 51, 52526875).
raw_performed(i_p25_a4, participant_watches_news_clip, 52, 52562684).
raw_performed(i_p25_a4, participant_watches_news_clip, 53, 52582910).
raw_performed(i_p25_a4, participant_watches_news_clip, 54, 52583597).
raw_performed(i_p25_a4, participant_watches_news_clip, 55, 52587489).
raw_performed(i_p25_a4, participant_watches_news_clip, 56, 52592121).
raw_performed(i_p25_a4, participant_watches_news_clip, 57, 52600167).
raw_performed(i_p25_a4, participant_watches_news_clip, 58, 52605264).
raw_performed(i_p25_a4, participant_watches_news_clip, 59, 52617229).
raw_performed(i_p25_a4, participant_watches_news_clip, 60, 52622701).
raw_performed(i_p25_a4, participant_watches_news_clip, 61, 52628330).
raw_performed(i_p25_a4, participant_watches_news_clip, 62, 52632876).
raw_performed(i_p25_a4, participant_watches_news_clip, 63, 52635497).
raw_performed(i_p25_a4, participant_watches_news_clip, 64, 52639254).

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

