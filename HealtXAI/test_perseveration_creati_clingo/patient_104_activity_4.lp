% ======================================================================
% Paziente 104
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

instance(i_p104_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p104_a4, participant_moves_to_the_living_room, 1, 49821157).
raw_performed(i_p104_a4, participant_selects_correct_dvd, 2, 49824100).
raw_performed(i_p104_a4, participant_selects_correct_dvd, 3, 49857248).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 4, 49863833).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 5, 49907294).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 6, 49918953).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 7, 49923539).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 8, 49932958).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 9, 49945795).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 10, 49972612).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 11, 49988778).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 12, 49999103).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 13, 50014502).
raw_performed(i_p104_a4, participant_reads_instructions_next_to_the_tv, 14, 50030064).
raw_performed(i_p104_a4, participant_watches_news_clip, 15, 50047753).
raw_performed(i_p104_a4, participant_watches_news_clip, 16, 50075687).
raw_performed(i_p104_a4, participant_watches_news_clip, 17, 50089306).
raw_performed(i_p104_a4, participant_watches_news_clip, 18, 50099265).
raw_performed(i_p104_a4, participant_watches_news_clip, 19, 50101820).
raw_performed(i_p104_a4, participant_watches_news_clip, 20, 50120137).
raw_performed(i_p104_a4, participant_watches_news_clip, 21, 50184939).
raw_performed(i_p104_a4, participant_watches_news_clip, 22, 50187719).
raw_performed(i_p104_a4, participant_watches_news_clip, 23, 50255606).
raw_performed(i_p104_a4, participant_watches_news_clip, 24, 50416949).
raw_performed(i_p104_a4, participant_watches_news_clip, 25, 50421093).
raw_performed(i_p104_a4, participant_watches_news_clip, 26, 50426336).
raw_performed(i_p104_a4, participant_watches_news_clip, 27, 50434789).

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

