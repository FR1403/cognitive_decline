% ======================================================================
% Paziente 247
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

instance(i_p247_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p247_a4, participant_moves_to_the_living_room, 1, 37767789).
raw_performed(i_p247_a4, participant_selects_correct_dvd, 2, 37770128).
raw_performed(i_p247_a4, participant_selects_correct_dvd, 3, 37779896).
raw_performed(i_p247_a4, participant_selects_correct_dvd, 4, 37784981).
raw_performed(i_p247_a4, participant_selects_correct_dvd, 5, 37802276).
raw_performed(i_p247_a4, participant_selects_correct_dvd, 6, 37805241).
raw_performed(i_p247_a4, participant_selects_correct_dvd, 7, 37808391).
raw_performed(i_p247_a4, participant_watches_news_clip, 8, 37822013).
raw_performed(i_p247_a4, participant_watches_news_clip, 9, 37827113).
raw_performed(i_p247_a4, participant_watches_news_clip, 10, 37835847).
raw_performed(i_p247_a4, participant_watches_news_clip, 11, 37842547).
raw_performed(i_p247_a4, participant_watches_news_clip, 12, 37844930).
raw_performed(i_p247_a4, participant_watches_news_clip, 13, 37847164).
raw_performed(i_p247_a4, participant_watches_news_clip, 14, 37849116).
raw_performed(i_p247_a4, participant_watches_news_clip, 15, 37887171).
raw_performed(i_p247_a4, participant_watches_news_clip, 16, 37947217).
raw_performed(i_p247_a4, participant_watches_news_clip, 17, 38154394).
raw_performed(i_p247_a4, participant_watches_news_clip, 18, 38158052).
raw_performed(i_p247_a4, participant_watches_news_clip, 19, 38160339).
raw_performed(i_p247_a4, participant_watches_news_clip, 20, 38163212).
raw_performed(i_p247_a4, participant_watches_news_clip, 21, 38163684).
raw_performed(i_p247_a4, participant_watches_news_clip, 22, 38187641).
raw_performed(i_p247_a4, participant_watches_news_clip, 23, 38194806).
raw_performed(i_p247_a4, participant_watches_news_clip, 24, 38202858).
raw_performed(i_p247_a4, participant_watches_news_clip, 25, 38218942).
raw_performed(i_p247_a4, participant_watches_news_clip, 26, 38222297).

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

