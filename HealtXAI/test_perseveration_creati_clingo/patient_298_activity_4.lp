% ======================================================================
% Paziente 298
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

instance(i_p298_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p298_a4, participant_moves_to_the_living_room, 1, 51044900).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 2, 51049260).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 3, 51064369).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 4, 51085274).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 5, 51094996).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 6, 51097854).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 7, 51105498).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 8, 51134906).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 9, 51138494).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 10, 51171871).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 11, 51174065).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 12, 51190652).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 13, 51197227).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 14, 51234735).
raw_performed(i_p298_a4, participant_reads_instructions_next_to_the_tv, 15, 51240179).
raw_performed(i_p298_a4, participant_watches_news_clip, 16, 51276482).
raw_performed(i_p298_a4, participant_watches_news_clip, 17, 51282917).
raw_performed(i_p298_a4, participant_watches_news_clip, 18, 51289836).
raw_performed(i_p298_a4, participant_watches_news_clip, 19, 51294594).
raw_performed(i_p298_a4, participant_watches_news_clip, 20, 51331525).
raw_performed(i_p298_a4, participant_watches_news_clip, 21, 51601008).
raw_performed(i_p298_a4, participant_watches_news_clip, 22, 51601761).
raw_performed(i_p298_a4, participant_watches_news_clip, 23, 51619136).
raw_performed(i_p298_a4, participant_watches_news_clip, 24, 51633142).
raw_performed(i_p298_a4, participant_watches_news_clip, 25, 51641829).
raw_performed(i_p298_a4, participant_watches_news_clip, 26, 51644954).
raw_performed(i_p298_a4, participant_watches_news_clip, 27, 51672908).

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

