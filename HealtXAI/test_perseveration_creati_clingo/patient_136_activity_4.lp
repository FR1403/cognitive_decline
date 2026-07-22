% ======================================================================
% Paziente 136
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

instance(i_p136_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p136_a4, participant_moves_to_the_living_room, 1, 47968031).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 2, 47985003).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 3, 47997046).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 4, 48013052).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 5, 48029056).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 6, 48050025).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 7, 48060024).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 8, 48087064).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 9, 48096084).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 10, 48113009).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 11, 48138001).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 12, 48204098).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 13, 48223030).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 14, 48231024).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 15, 48240043).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 16, 48243074).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 17, 48261022).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 18, 48264058).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 19, 48267089).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 20, 48280098).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 21, 48302079).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 22, 48307092).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 23, 48324014).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 24, 48333029).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 25, 48343049).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 26, 48348023).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 27, 48390044).
raw_performed(i_p136_a4, participant_reads_instructions_next_to_the_tv, 28, 48442031).
raw_performed(i_p136_a4, participant_watches_news_clip, 29, 48505000).
raw_performed(i_p136_a4, participant_watches_news_clip, 30, 48506004).
raw_performed(i_p136_a4, participant_watches_news_clip, 31, 48507006).
raw_performed(i_p136_a4, participant_watches_news_clip, 32, 48508070).
raw_performed(i_p136_a4, participant_watches_news_clip, 33, 48509033).
raw_performed(i_p136_a4, participant_watches_news_clip, 34, 48513098).
raw_performed(i_p136_a4, participant_watches_news_clip, 35, 48514059).
raw_performed(i_p136_a4, participant_watches_news_clip, 36, 48515021).
raw_performed(i_p136_a4, participant_watches_news_clip, 37, 48516027).
raw_performed(i_p136_a4, participant_watches_news_clip, 38, 48517002).
raw_performed(i_p136_a4, participant_watches_news_clip, 39, 48519099).
raw_performed(i_p136_a4, participant_watches_news_clip, 40, 48803070).
raw_performed(i_p136_a4, participant_watches_news_clip, 41, 48804071).

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

