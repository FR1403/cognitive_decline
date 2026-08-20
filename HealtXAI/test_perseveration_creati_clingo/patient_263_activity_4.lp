% ======================================================================
% Paziente 263
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

instance(i_p263_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p263_a4, participant_moves_to_the_living_room, 1, 35530024).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 2, 35531071).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 3, 35593020).
raw_performed(i_p263_a4, participant_watches_news_clip, 4, 35599006).
raw_performed(i_p263_a4, participant_watches_news_clip, 5, 35610003).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 6, 35617085).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 7, 35627006).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 8, 35672002).
raw_performed(i_p263_a4, participant_watches_news_clip, 9, 35675037).
raw_performed(i_p263_a4, participant_watches_news_clip, 10, 35687009).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 11, 35691062).
raw_performed(i_p263_a4, participant_watches_news_clip, 12, 35698050).
raw_performed(i_p263_a4, participant_watches_news_clip, 13, 35703030).
raw_performed(i_p263_a4, participant_watches_news_clip, 14, 35716030).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 15, 35719006).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 16, 35740062).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 17, 35744005).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 18, 35775072).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 19, 35780090).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 20, 35786091).
raw_performed(i_p263_a4, participant_watches_news_clip, 21, 35796076).
raw_performed(i_p263_a4, participant_watches_news_clip, 22, 35800091).
raw_performed(i_p263_a4, participant_watches_news_clip, 23, 35841001).
raw_performed(i_p263_a4, participant_watches_news_clip, 24, 35881062).
raw_performed(i_p263_a4, participant_watches_news_clip, 25, 35943026).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 26, 35944073).
raw_performed(i_p263_a4, participant_watches_news_clip, 27, 35945098).
raw_performed(i_p263_a4, participant_watches_news_clip, 28, 36078062).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 29, 36081007).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 30, 36095021).
raw_performed(i_p263_a4, participant_watches_news_clip, 31, 36096024).
raw_performed(i_p263_a4, participant_reads_instructions_next_to_the_tv, 32, 36118014).
raw_performed(i_p263_a4, participant_watches_news_clip, 33, 36122011).
raw_performed(i_p263_a4, participant_watches_news_clip, 34, 36122014).
raw_performed(i_p263_a4, participant_watches_news_clip, 35, 36122094).

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

