% ======================================================================
% Paziente 283
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

instance(i_p283_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p283_a4, participant_moves_to_the_living_room, 1, 52355584).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 2, 52356498).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 3, 52370218).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 4, 52378950).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 5, 52392296).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 6, 52393996).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 7, 52408032).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 8, 52411087).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 9, 52420778).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 10, 52428640).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 11, 52434234).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 12, 52441222).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 13, 52444653).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 14, 52458305).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 15, 52472534).
raw_performed(i_p283_a4, participant_reads_instructions_next_to_the_tv, 16, 52474211).
raw_performed(i_p283_a4, participant_watches_news_clip, 17, 52785956).
raw_performed(i_p283_a4, participant_watches_news_clip, 18, 52792503).
raw_performed(i_p283_a4, participant_watches_news_clip, 19, 52805488).
raw_performed(i_p283_a4, participant_watches_news_clip, 20, 52814687).
raw_performed(i_p283_a4, participant_watches_news_clip, 21, 52817519).
raw_performed(i_p283_a4, participant_watches_news_clip, 22, 52820708).
raw_performed(i_p283_a4, participant_watches_news_clip, 23, 52826322).
raw_performed(i_p283_a4, participant_watches_news_clip, 24, 52832254).
raw_performed(i_p283_a4, participant_watches_news_clip, 25, 52835871).
raw_performed(i_p283_a4, participant_watches_news_clip, 26, 52838887).
raw_performed(i_p283_a4, participant_watches_news_clip, 27, 52841318).
raw_performed(i_p283_a4, participant_watches_news_clip, 28, 52849929).
raw_performed(i_p283_a4, participant_watches_news_clip, 29, 52851612).
raw_performed(i_p283_a4, participant_watches_news_clip, 30, 52859500).
raw_performed(i_p283_a4, participant_watches_news_clip, 31, 52863609).
raw_performed(i_p283_a4, participant_watches_news_clip, 32, 52872064).
raw_performed(i_p283_a4, participant_watches_news_clip, 33, 52879364).
raw_performed(i_p283_a4, participant_watches_news_clip, 34, 52886851).
raw_performed(i_p283_a4, participant_watches_news_clip, 35, 52890808).
raw_performed(i_p283_a4, participant_watches_news_clip, 36, 52900948).

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

