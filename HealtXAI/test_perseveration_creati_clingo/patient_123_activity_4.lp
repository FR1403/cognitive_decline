% ======================================================================
% Paziente 123
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

action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_moves_to_the_living_room, 24939).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, 34804).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, 283449).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, 80568).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, 80568).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, 372016).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, 76731).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, 24996).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p123_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p123_a4, participant_moves_to_the_living_room, 1, 36008088).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 2, 36009544).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 3, 36016004).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 4, 36031545).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 5, 36045090).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 6, 36062631).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 7, 36073085).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 8, 36084067).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 9, 36095069).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 10, 36126147).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 11, 36131047).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 12, 36134036).
raw_performed(i_p123_a4, participant_reads_instructions_next_to_the_tv, 13, 36151285).
raw_performed(i_p123_a4, participant_watches_news_clip, 14, 36152099).
raw_performed(i_p123_a4, participant_watches_news_clip, 15, 36154048).
raw_performed(i_p123_a4, participant_watches_news_clip, 16, 36155005).
raw_performed(i_p123_a4, participant_watches_news_clip, 17, 36164093).
raw_performed(i_p123_a4, participant_watches_news_clip, 18, 36176998).
raw_performed(i_p123_a4, participant_watches_news_clip, 19, 36470047).
raw_performed(i_p123_a4, participant_watches_news_clip, 20, 36472046).
raw_performed(i_p123_a4, participant_watches_news_clip, 21, 36472503).
raw_performed(i_p123_a4, participant_watches_news_clip, 22, 36475009).
raw_performed(i_p123_a4, participant_watches_news_clip, 23, 36576014).
raw_performed(i_p123_a4, participant_watches_news_clip, 24, 36587195).
raw_performed(i_p123_a4, participant_watches_news_clip, 25, 36602098).
raw_performed(i_p123_a4, participant_watches_news_clip, 26, 36603629).
raw_performed(i_p123_a4, participant_watches_news_clip, 27, 36605084).
raw_performed(i_p123_a4, participant_watches_news_clip, 28, 36612102).
raw_performed(i_p123_a4, participant_watches_news_clip, 29, 36618008).
raw_performed(i_p123_a4, participant_watches_news_clip, 30, 36641004).

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

