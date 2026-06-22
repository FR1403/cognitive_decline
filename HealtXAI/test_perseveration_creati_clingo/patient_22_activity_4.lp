% ======================================================================
% Paziente 22
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
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, 407536).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, 72894).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, 72894).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, 396941).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, 79570).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, 27096).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p22_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p22_a4, participant_moves_to_the_living_room, 1, 54882042).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 2, 54883091).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 3, 54890007).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 4, 54900064).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 5, 54918054).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 6, 54925087).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 7, 54957021).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 8, 54963060).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 9, 54977062).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 10, 55006050).
raw_performed(i_p22_a4, participant_reads_instructions_next_to_the_tv, 11, 55017005).
raw_performed(i_p22_a4, participant_watches_news_clip, 12, 55022032).
raw_performed(i_p22_a4, participant_watches_news_clip, 13, 55031002).
raw_performed(i_p22_a4, participant_watches_news_clip, 14, 55031064).
raw_performed(i_p22_a4, participant_watches_news_clip, 15, 55040011).
raw_performed(i_p22_a4, participant_watches_news_clip, 16, 55068040).
raw_performed(i_p22_a4, participant_watches_news_clip, 17, 55068084).
raw_performed(i_p22_a4, participant_watches_news_clip, 18, 55070017).
raw_performed(i_p22_a4, participant_watches_news_clip, 19, 55073056).
raw_performed(i_p22_a4, participant_watches_news_clip, 20, 55096010).
raw_performed(i_p22_a4, participant_watches_news_clip, 21, 55102031).
raw_performed(i_p22_a4, participant_watches_news_clip, 22, 55143023).
raw_performed(i_p22_a4, participant_watches_news_clip, 23, 55145006).
raw_performed(i_p22_a4, participant_watches_news_clip, 24, 55165072).
raw_performed(i_p22_a4, participant_watches_news_clip, 25, 55168057).
raw_performed(i_p22_a4, participant_watches_news_clip, 26, 55183014).
raw_performed(i_p22_a4, participant_watches_news_clip, 27, 55191071).
raw_performed(i_p22_a4, participant_watches_news_clip, 28, 55256004).
raw_performed(i_p22_a4, participant_watches_news_clip, 29, 55280069).
raw_performed(i_p22_a4, participant_watches_news_clip, 30, 55309098).
raw_performed(i_p22_a4, participant_watches_news_clip, 31, 55332086).
raw_performed(i_p22_a4, participant_watches_news_clip, 32, 55348066).
raw_performed(i_p22_a4, participant_watches_news_clip, 33, 55416087).
raw_performed(i_p22_a4, participant_watches_news_clip, 34, 55418050).
raw_performed(i_p22_a4, participant_watches_news_clip, 35, 55425087).
raw_performed(i_p22_a4, participant_watches_news_clip, 36, 55428019).
raw_performed(i_p22_a4, participant_watches_news_clip, 37, 55441068).
raw_performed(i_p22_a4, participant_watches_news_clip, 38, 55446053).
raw_performed(i_p22_a4, participant_watches_news_clip, 39, 55447076).
raw_performed(i_p22_a4, participant_watches_news_clip, 40, 55469025).

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

