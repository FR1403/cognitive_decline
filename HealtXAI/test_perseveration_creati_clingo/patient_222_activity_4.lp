% ======================================================================
% Paziente 222
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

instance(i_p222_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p222_a4, participant_moves_to_the_living_room, 1, 49745521).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 2, 49746113).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 3, 49753205).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 4, 49756785).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 5, 49768951).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 6, 49773830).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 7, 49780980).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 8, 49793326).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 9, 49806510).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 10, 49809359).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 11, 49812423).
raw_performed(i_p222_a4, participant_reads_instructions_next_to_the_tv, 12, 49833163).
raw_performed(i_p222_a4, participant_watches_news_clip, 13, 49834327).
raw_performed(i_p222_a4, participant_watches_news_clip, 14, 49841362).
raw_performed(i_p222_a4, participant_watches_news_clip, 15, 49846769).
raw_performed(i_p222_a4, participant_watches_news_clip, 16, 49850542).
raw_performed(i_p222_a4, participant_watches_news_clip, 17, 49852995).
raw_performed(i_p222_a4, participant_watches_news_clip, 18, 50125168).
raw_performed(i_p222_a4, participant_watches_news_clip, 19, 50125896).
raw_performed(i_p222_a4, participant_watches_news_clip, 20, 50144491).
raw_performed(i_p222_a4, participant_watches_news_clip, 21, 50155717).
raw_performed(i_p222_a4, participant_watches_news_clip, 22, 50168941).
raw_performed(i_p222_a4, participant_watches_news_clip, 23, 50193616).
raw_performed(i_p222_a4, participant_watches_news_clip, 24, 50200573).
raw_performed(i_p222_a4, participant_watches_news_clip, 25, 50201482).
raw_performed(i_p222_a4, participant_watches_news_clip, 26, 50204375).

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

