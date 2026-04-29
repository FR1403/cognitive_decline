% ======================================================================
% Paziente 173
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

instance(i_p173_a4, write_a_birthday_card_enclose_a_check_and_address_an_envelope).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p173_a4, participant_moves_to_the_living_room, 1, 34819953).
raw_performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 2, 34821512).
raw_performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 3, 34836901).
raw_performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 4, 34838756).
raw_performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 5, 34846690).
raw_performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 6, 34858880).
raw_performed(i_p173_a4, participant_watches_news_clip, 7, 34862302).
raw_performed(i_p173_a4, participant_watches_news_clip, 8, 34864401).
raw_performed(i_p173_a4, participant_watches_news_clip, 9, 34870447).
raw_performed(i_p173_a4, participant_watches_news_clip, 10, 34875120).
raw_performed(i_p173_a4, participant_watches_news_clip, 11, 34877743).
raw_performed(i_p173_a4, participant_watches_news_clip, 12, 34883388).
raw_performed(i_p173_a4, participant_watches_news_clip, 13, 34885250).
raw_performed(i_p173_a4, participant_watches_news_clip, 14, 34890521).
raw_performed(i_p173_a4, participant_watches_news_clip, 15, 34899563).
raw_performed(i_p173_a4, participant_watches_news_clip, 16, 34906401).
raw_performed(i_p173_a4, participant_watches_news_clip, 17, 34910740).
raw_performed(i_p173_a4, participant_watches_news_clip, 18, 34915995).
raw_performed(i_p173_a4, participant_watches_news_clip, 19, 34918827).
raw_performed(i_p173_a4, participant_watches_news_clip, 20, 34923491).
raw_performed(i_p173_a4, participant_watches_news_clip, 21, 34927029).
raw_performed(i_p173_a4, participant_watches_news_clip, 22, 34936610).
raw_performed(i_p173_a4, participant_watches_news_clip, 23, 34940558).
raw_performed(i_p173_a4, participant_watches_news_clip, 24, 34971289).
raw_performed(i_p173_a4, participant_watches_news_clip, 25, 34975582).
raw_performed(i_p173_a4, participant_watches_news_clip, 26, 34977302).
raw_performed(i_p173_a4, participant_watches_news_clip, 27, 34979890).
raw_performed(i_p173_a4, participant_watches_news_clip, 28, 34982232).
raw_performed(i_p173_a4, participant_watches_news_clip, 29, 34983379).
raw_performed(i_p173_a4, participant_watches_news_clip, 30, 34994498).
raw_performed(i_p173_a4, participant_watches_news_clip, 31, 34998448).
raw_performed(i_p173_a4, participant_watches_news_clip, 32, 35000131).
raw_performed(i_p173_a4, participant_watches_news_clip, 33, 35000267).
raw_performed(i_p173_a4, participant_watches_news_clip, 34, 35000615).
raw_performed(i_p173_a4, participant_watches_news_clip, 35, 35002196).
raw_performed(i_p173_a4, participant_watches_news_clip, 36, 35004409).
raw_performed(i_p173_a4, participant_watches_news_clip, 37, 35045598).
raw_performed(i_p173_a4, participant_watches_news_clip, 38, 35142719).
raw_performed(i_p173_a4, participant_watches_news_clip, 39, 35223140).
raw_performed(i_p173_a4, participant_watches_news_clip, 40, 35285191).
raw_performed(i_p173_a4, participant_watches_news_clip, 41, 35285430).
raw_performed(i_p173_a4, participant_watches_news_clip, 42, 35285756).
raw_performed(i_p173_a4, participant_watches_news_clip, 43, 35285865).

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

