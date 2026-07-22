% ======================================================================
% Paziente 143
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

instance(i_p143_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p143_a4, participant_moves_to_the_living_room, 1, 52788071).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 2, 52790093).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 3, 52808426).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 4, 52819006).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 5, 52832074).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 6, 52840007).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 7, 52842718).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 8, 52855039).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 9, 52871391).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 10, 52874415).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 11, 52934436).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 12, 52941045).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 13, 52964383).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 14, 53040501).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 15, 53049235).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 16, 53067069).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 17, 53076013).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 18, 53089039).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 19, 53106440).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 20, 53127566).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 21, 53131603).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 22, 53145307).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 23, 53148572).
raw_performed(i_p143_a4, participant_reads_instructions_next_to_the_tv, 24, 53166096).

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

