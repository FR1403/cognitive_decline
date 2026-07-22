% ======================================================================
% Paziente 354
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

instance(i_p354_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p354_a4, participant_moves_to_the_living_room, 1, 36077697).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 2, 36078810).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 3, 36081425).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 4, 36084981).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 5, 36086773).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 6, 36090973).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 7, 36105826).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 8, 36111331).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 9, 36117955).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 10, 36132903).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 11, 36135032).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 12, 36141027).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 13, 36145744).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 14, 36151606).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 15, 36163978).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 16, 36167278).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 17, 36169154).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 18, 36180767).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 19, 36197633).
raw_performed(i_p354_a4, participant_reads_instructions_next_to_the_tv, 20, 36202576).
raw_performed(i_p354_a4, participant_watches_news_clip, 21, 36210981).
raw_performed(i_p354_a4, participant_watches_news_clip, 22, 36211321).
raw_performed(i_p354_a4, participant_watches_news_clip, 23, 36215303).
raw_performed(i_p354_a4, participant_watches_news_clip, 24, 36220174).
raw_performed(i_p354_a4, participant_watches_news_clip, 25, 36230652).
raw_performed(i_p354_a4, participant_watches_news_clip, 26, 36235167).
raw_performed(i_p354_a4, participant_watches_news_clip, 27, 36241162).
raw_performed(i_p354_a4, participant_watches_news_clip, 28, 36268153).
raw_performed(i_p354_a4, participant_watches_news_clip, 29, 36303791).
raw_performed(i_p354_a4, participant_watches_news_clip, 30, 36351378).
raw_performed(i_p354_a4, participant_watches_news_clip, 31, 36417080).
raw_performed(i_p354_a4, participant_watches_news_clip, 32, 36487137).
raw_performed(i_p354_a4, participant_watches_news_clip, 33, 36495184).
raw_performed(i_p354_a4, participant_watches_news_clip, 34, 36504006).
raw_performed(i_p354_a4, participant_watches_news_clip, 35, 36506262).
raw_performed(i_p354_a4, participant_watches_news_clip, 36, 36509282).
raw_performed(i_p354_a4, participant_watches_news_clip, 37, 36522786).
raw_performed(i_p354_a4, participant_watches_news_clip, 38, 36524432).
raw_performed(i_p354_a4, participant_watches_news_clip, 39, 36530398).
raw_performed(i_p354_a4, participant_watches_news_clip, 40, 36539245).
raw_performed(i_p354_a4, participant_watches_news_clip, 41, 36540921).
raw_performed(i_p354_a4, participant_watches_news_clip, 42, 36547129).
raw_performed(i_p354_a4, participant_watches_news_clip, 43, 36553410).
raw_performed(i_p354_a4, participant_watches_news_clip, 44, 36558552).
raw_performed(i_p354_a4, participant_watches_news_clip, 45, 36558807).
raw_performed(i_p354_a4, participant_watches_news_clip, 46, 36559496).

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

