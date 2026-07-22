% ======================================================================
% Paziente 253
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

instance(i_p253_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p253_a4, participant_moves_to_the_living_room, 1, 34503911).
raw_performed(i_p253_a4, participant_reads_instructions_next_to_the_tv, 2, 34505055).
raw_performed(i_p253_a4, participant_reads_instructions_next_to_the_tv, 3, 34521918).
raw_performed(i_p253_a4, participant_reads_instructions_next_to_the_tv, 4, 34523923).
raw_performed(i_p253_a4, participant_reads_instructions_next_to_the_tv, 5, 34526427).
raw_performed(i_p253_a4, participant_reads_instructions_next_to_the_tv, 6, 34528868).
raw_performed(i_p253_a4, participant_reads_instructions_next_to_the_tv, 7, 34537613).
raw_performed(i_p253_a4, participant_reads_instructions_next_to_the_tv, 8, 34552370).
raw_performed(i_p253_a4, participant_watches_news_clip, 9, 34563658).
raw_performed(i_p253_a4, participant_watches_news_clip, 10, 34568927).
raw_performed(i_p253_a4, participant_watches_news_clip, 11, 34571882).
raw_performed(i_p253_a4, participant_watches_news_clip, 12, 34578126).
raw_performed(i_p253_a4, participant_watches_news_clip, 13, 34582768).
raw_performed(i_p253_a4, participant_watches_news_clip, 14, 34585628).
raw_performed(i_p253_a4, participant_watches_news_clip, 15, 34587597).
raw_performed(i_p253_a4, participant_watches_news_clip, 16, 34616156).
raw_performed(i_p253_a4, participant_watches_news_clip, 17, 34630210).
raw_performed(i_p253_a4, participant_watches_news_clip, 18, 34632979).
raw_performed(i_p253_a4, participant_watches_news_clip, 19, 34663010).
raw_performed(i_p253_a4, participant_watches_news_clip, 20, 34703024).
raw_performed(i_p253_a4, participant_watches_news_clip, 21, 34716491).
raw_performed(i_p253_a4, participant_watches_news_clip, 22, 34742503).
raw_performed(i_p253_a4, participant_watches_news_clip, 23, 34749733).
raw_performed(i_p253_a4, participant_watches_news_clip, 24, 34752076).
raw_performed(i_p253_a4, participant_watches_news_clip, 25, 34774057).
raw_performed(i_p253_a4, participant_watches_news_clip, 26, 34799262).
raw_performed(i_p253_a4, participant_watches_news_clip, 27, 34822643).
raw_performed(i_p253_a4, participant_watches_news_clip, 28, 34827512).
raw_performed(i_p253_a4, participant_watches_news_clip, 29, 34836453).
raw_performed(i_p253_a4, participant_watches_news_clip, 30, 34839439).
raw_performed(i_p253_a4, participant_watches_news_clip, 31, 34844490).
raw_performed(i_p253_a4, participant_watches_news_clip, 32, 34848770).
raw_performed(i_p253_a4, participant_watches_news_clip, 33, 35021537).
raw_performed(i_p253_a4, participant_watches_news_clip, 34, 35193919).
raw_performed(i_p253_a4, participant_watches_news_clip, 35, 35196163).
raw_performed(i_p253_a4, participant_watches_news_clip, 36, 35196661).
raw_performed(i_p253_a4, participant_watches_news_clip, 37, 35199265).
raw_performed(i_p253_a4, participant_watches_news_clip, 38, 35199625).
raw_performed(i_p253_a4, participant_watches_news_clip, 39, 35203668).
raw_performed(i_p253_a4, participant_watches_news_clip, 40, 35204932).
raw_performed(i_p253_a4, participant_watches_news_clip, 41, 35208974).
raw_performed(i_p253_a4, participant_watches_news_clip, 42, 35209744).
raw_performed(i_p253_a4, participant_watches_news_clip, 43, 35210693).

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

