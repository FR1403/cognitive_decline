% ======================================================================
% Paziente 184
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

instance(i_p184_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p184_a4, participant_moves_to_the_living_room, 1, 49056276).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 2, 49057429).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 3, 49061014).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 4, 49067496).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 5, 49074247).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 6, 49078566).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 7, 49090921).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 8, 49101038).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 9, 49105165).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 10, 49108916).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 11, 49117712).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 12, 49119606).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 13, 49122798).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 14, 49129585).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 15, 49131239).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 16, 49133647).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 17, 49140801).
raw_performed(i_p184_a4, participant_reads_instructions_next_to_the_tv, 18, 49144370).
raw_performed(i_p184_a4, participant_watches_news_clip, 19, 49146733).
raw_performed(i_p184_a4, participant_watches_news_clip, 20, 49147557).
raw_performed(i_p184_a4, participant_watches_news_clip, 21, 49183360).
raw_performed(i_p184_a4, participant_watches_news_clip, 22, 49186568).
raw_performed(i_p184_a4, participant_watches_news_clip, 23, 49288151).
raw_performed(i_p184_a4, participant_watches_news_clip, 24, 49433452).
raw_performed(i_p184_a4, participant_watches_news_clip, 25, 49441323).
raw_performed(i_p184_a4, participant_watches_news_clip, 26, 49445802).
raw_performed(i_p184_a4, participant_watches_news_clip, 27, 49448921).
raw_performed(i_p184_a4, participant_watches_news_clip, 28, 49450856).
raw_performed(i_p184_a4, participant_watches_news_clip, 29, 49456302).
raw_performed(i_p184_a4, participant_watches_news_clip, 30, 49460802).
raw_performed(i_p184_a4, participant_watches_news_clip, 31, 49466641).
raw_performed(i_p184_a4, participant_watches_news_clip, 32, 49476747).
raw_performed(i_p184_a4, participant_watches_news_clip, 33, 49483536).
raw_performed(i_p184_a4, participant_watches_news_clip, 34, 49487433).
raw_performed(i_p184_a4, participant_watches_news_clip, 35, 49496232).
raw_performed(i_p184_a4, participant_watches_news_clip, 36, 49522875).
raw_performed(i_p184_a4, participant_watches_news_clip, 37, 49538965).
raw_performed(i_p184_a4, participant_watches_news_clip, 38, 49541266).
raw_performed(i_p184_a4, participant_watches_news_clip, 39, 49544457).
raw_performed(i_p184_a4, participant_watches_news_clip, 40, 49557190).

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

