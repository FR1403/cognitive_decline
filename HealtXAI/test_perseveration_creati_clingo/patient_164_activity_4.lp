% ======================================================================
% Paziente 164
% Attivita: Find the appropriate DVD and watch the corresponding news clip.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

action(participant_moves_to_the_living_room).
action(participant_selects_correct_dvd).
action(participant_reads_instructions_next_to_the_tv).
action(participants_uses_remote_to_turn_on_tv).
action(participant_selects_correct_channel).
action(participant_watches_news_clip).
action(participant_turns_off_tv).
action(participant_returns_dvd_to_pile).

action_type(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_moves_to_the_living_room, 7).
action_type(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, 5).
action_type(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, 6).
action_type(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, 5).
action_type(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, 5).
action_type(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, 9).
action_type(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, 5).
action_type(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, 12).

expected_count(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_moves_to_the_living_room, 1).
expected_count(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, 1).
expected_count(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, 1).
expected_count(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, 1).
expected_count(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, 1).
expected_count(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, 1).
expected_count(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, 1).
expected_count(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, 1).

action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_moves_to_the_living_room, 27059).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, 39776).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, 408166).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, 72894).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, 72894).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, 396941).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, 79724).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, 27096).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p164_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p164_a4, participant_moves_to_the_living_room, 1, 34587005).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 2, 34589045).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 3, 34592033).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 4, 34631035).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 5, 34640094).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 6, 34659014).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 7, 34680044).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 8, 34698074).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 9, 34707090).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 10, 34710047).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 11, 34727049).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 12, 34754049).
raw_performed(i_p164_a4, participant_watches_news_clip, 13, 34772041).
raw_performed(i_p164_a4, participant_watches_news_clip, 14, 34796000).
raw_performed(i_p164_a4, participant_watches_news_clip, 15, 34797004).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 16, 34798092).
raw_performed(i_p164_a4, participant_watches_news_clip, 17, 34809064).
raw_performed(i_p164_a4, participant_watches_news_clip, 18, 34828028).
raw_performed(i_p164_a4, participant_watches_news_clip, 19, 34954007).
raw_performed(i_p164_a4, participant_watches_news_clip, 20, 35073075).
raw_performed(i_p164_a4, participant_watches_news_clip, 21, 35110042).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 22, 35113035).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 23, 35123078).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 24, 35168066).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 25, 35178029).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 26, 35191081).
raw_performed(i_p164_a4, participant_reads_instructions_next_to_the_tv, 27, 35211092).
raw_performed(i_p164_a4, participant_watches_news_clip, 28, 35215004).
raw_performed(i_p164_a4, participant_watches_news_clip, 29, 35226044).
raw_performed(i_p164_a4, participant_watches_news_clip, 30, 35235060).
raw_performed(i_p164_a4, participant_watches_news_clip, 31, 35236045).

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

