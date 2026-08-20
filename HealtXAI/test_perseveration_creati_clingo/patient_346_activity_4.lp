% ======================================================================
% Paziente 346
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

instance(i_p346_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p346_a4, participant_moves_to_the_living_room, 1, 51707002).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 2, 51708000).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 3, 51728058).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 4, 51762034).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 5, 51775009).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 6, 51784074).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 7, 51822000).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 8, 51833052).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 9, 51838010).
raw_performed(i_p346_a4, participant_watches_news_clip, 10, 51844009).
raw_performed(i_p346_a4, participant_watches_news_clip, 11, 51847018).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 12, 51877002).
raw_performed(i_p346_a4, participant_reads_instructions_next_to_the_tv, 13, 51886046).
raw_performed(i_p346_a4, participant_watches_news_clip, 14, 51888033).
raw_performed(i_p346_a4, participant_watches_news_clip, 15, 51890003).
raw_performed(i_p346_a4, participant_watches_news_clip, 16, 51905062).
raw_performed(i_p346_a4, participant_watches_news_clip, 17, 51905064).
raw_performed(i_p346_a4, participant_watches_news_clip, 18, 51923039).
raw_performed(i_p346_a4, participant_watches_news_clip, 19, 51923042).
raw_performed(i_p346_a4, participant_watches_news_clip, 20, 51937011).
raw_performed(i_p346_a4, participant_watches_news_clip, 21, 51939064).
raw_performed(i_p346_a4, participant_watches_news_clip, 22, 51945005).
raw_performed(i_p346_a4, participant_watches_news_clip, 23, 51990075).
raw_performed(i_p346_a4, participant_watches_news_clip, 24, 51991079).
raw_performed(i_p346_a4, participant_watches_news_clip, 25, 52004001).
raw_performed(i_p346_a4, participant_watches_news_clip, 26, 52015001).
raw_performed(i_p346_a4, participant_watches_news_clip, 27, 52015003).
raw_performed(i_p346_a4, participant_watches_news_clip, 28, 52027065).
raw_performed(i_p346_a4, participant_watches_news_clip, 29, 52032064).
raw_performed(i_p346_a4, participant_watches_news_clip, 30, 52040084).
raw_performed(i_p346_a4, participant_watches_news_clip, 31, 52335096).
raw_performed(i_p346_a4, participant_watches_news_clip, 32, 52335099).

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

