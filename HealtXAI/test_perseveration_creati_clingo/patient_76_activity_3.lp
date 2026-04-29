% ======================================================================
% Paziente 76
% Attività: Find the appropriate DVD and watch the corresponding news clip.
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

action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_moves_to_the_living_room, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p76_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p76_a4, participant_moves_to_the_living_room, 1, 34950038).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 2, 34951046).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 3, 34988087).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 4, 34995001).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 5, 35004089).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 6, 35007015).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 7, 35030091).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 8, 35051001).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 9, 35053053).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 10, 35059029).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 11, 35062007).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 12, 35081086).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 13, 35089048).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 14, 35103088).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 15, 35117073).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 16, 35128078).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 17, 35135036).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 18, 35138087).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 19, 35144024).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 20, 35156053).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 21, 35166009).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 22, 35173025).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 23, 35192015).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 24, 35210027).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 25, 35221004).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 26, 35232088).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 27, 35255037).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 28, 35266059).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 29, 35286074).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 30, 35302015).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 31, 35322067).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 32, 35331029).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 33, 35404008).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 34, 35418053).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 35, 35448088).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 36, 35472088).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 37, 35476081).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 38, 35484019).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 39, 35489035).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 40, 35492010).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 41, 35504001).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 42, 35507050).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 43, 35509000).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 44, 35520065).
raw_performed(i_p76_a4, participant_reads_instructions_next_to_the_tv, 45, 35548015).
raw_performed(i_p76_a4, participant_watches_news_clip, 46, 35550083).
raw_performed(i_p76_a4, participant_watches_news_clip, 47, 35551003).
raw_performed(i_p76_a4, participant_watches_news_clip, 48, 35868097).
raw_performed(i_p76_a4, participant_watches_news_clip, 49, 35871075).
raw_performed(i_p76_a4, participant_watches_news_clip, 50, 35894071).
raw_performed(i_p76_a4, participant_watches_news_clip, 51, 35914061).
raw_performed(i_p76_a4, participant_watches_news_clip, 52, 35925000).
raw_performed(i_p76_a4, participant_watches_news_clip, 53, 35935055).
raw_performed(i_p76_a4, participant_watches_news_clip, 54, 35936049).

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

