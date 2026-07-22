% ======================================================================
% Paziente 154
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

instance(i_p154_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p154_a4, participant_moves_to_the_living_room, 1, 36123004).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 2, 36132073).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 3, 36147061).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 4, 36164048).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 5, 36167993).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 6, 36171513).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 7, 36196050).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 8, 36207057).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 9, 36216088).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 10, 36221046).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 11, 36231621).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 12, 36239009).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 13, 36259531).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 14, 36273074).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 15, 36285006).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 16, 36298002).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 17, 36304024).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 18, 36321053).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 19, 36332376).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 20, 36343020).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 21, 36349066).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 22, 36363058).
raw_performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 23, 36388069).

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

