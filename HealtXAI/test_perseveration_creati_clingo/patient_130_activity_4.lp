% ======================================================================
% Paziente 130
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

instance(i_p130_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p130_a4, participant_moves_to_the_living_room, 1, 52633021).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 2, 52636036).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 3, 52657046).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 4, 52677089).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 5, 52694060).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 6, 52706023).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 7, 52723086).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 8, 52731034).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 9, 52735052).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 10, 52739061).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 11, 52745040).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 12, 52749020).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 13, 52751028).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 14, 52754017).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 15, 52759060).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 16, 52783024).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 17, 52796058).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 18, 52803068).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 19, 52815077).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 20, 52822002).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 21, 52832039).
raw_performed(i_p130_a4, participant_reads_instructions_next_to_the_tv, 22, 52866003).
raw_performed(i_p130_a4, participant_watches_news_clip, 23, 52904045).
raw_performed(i_p130_a4, participant_watches_news_clip, 24, 52914064).
raw_performed(i_p130_a4, participant_watches_news_clip, 25, 52915065).
raw_performed(i_p130_a4, participant_watches_news_clip, 26, 52951044).
raw_performed(i_p130_a4, participant_watches_news_clip, 27, 52953013).
raw_performed(i_p130_a4, participant_watches_news_clip, 28, 52954004).
raw_performed(i_p130_a4, participant_watches_news_clip, 29, 53223069).
raw_performed(i_p130_a4, participant_watches_news_clip, 30, 53227062).

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

