% ======================================================================
% Paziente 375
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

instance(i_p375_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p375_a4, participant_moves_to_the_living_room, 1, 50116905).
raw_performed(i_p375_a4, participant_reads_instructions_next_to_the_tv, 2, 50118625).
raw_performed(i_p375_a4, participant_watches_news_clip, 3, 50220163).
raw_performed(i_p375_a4, participant_watches_news_clip, 4, 50220791).
raw_performed(i_p375_a4, participant_watches_news_clip, 5, 50221840).
raw_performed(i_p375_a4, participant_watches_news_clip, 6, 50223338).
raw_performed(i_p375_a4, participant_watches_news_clip, 7, 50225303).
raw_performed(i_p375_a4, participant_watches_news_clip, 8, 50238070).
raw_performed(i_p375_a4, participant_watches_news_clip, 9, 50314139).
raw_performed(i_p375_a4, participant_watches_news_clip, 10, 50331736).
raw_performed(i_p375_a4, participant_watches_news_clip, 11, 50345136).
raw_performed(i_p375_a4, participant_watches_news_clip, 12, 50431674).
raw_performed(i_p375_a4, participant_watches_news_clip, 13, 50437209).
raw_performed(i_p375_a4, participant_watches_news_clip, 14, 50442027).
raw_performed(i_p375_a4, participant_watches_news_clip, 15, 50451550).
raw_performed(i_p375_a4, participant_watches_news_clip, 16, 50476359).
raw_performed(i_p375_a4, participant_watches_news_clip, 17, 50505632).
raw_performed(i_p375_a4, participant_watches_news_clip, 18, 50510749).
raw_performed(i_p375_a4, participant_watches_news_clip, 19, 50512678).
raw_performed(i_p375_a4, participant_watches_news_clip, 20, 50512715).
raw_performed(i_p375_a4, participant_watches_news_clip, 21, 50513667).
raw_performed(i_p375_a4, participant_watches_news_clip, 22, 50515650).
raw_performed(i_p375_a4, participant_watches_news_clip, 23, 50519248).
raw_performed(i_p375_a4, participant_watches_news_clip, 24, 50520219).
raw_performed(i_p375_a4, participant_watches_news_clip, 25, 50521285).
raw_performed(i_p375_a4, participant_watches_news_clip, 26, 50525107).
raw_performed(i_p375_a4, participant_watches_news_clip, 27, 50525673).
raw_performed(i_p375_a4, participant_watches_news_clip, 28, 50526290).
raw_performed(i_p375_a4, participant_watches_news_clip, 29, 50527801).
raw_performed(i_p375_a4, participant_watches_news_clip, 30, 50536856).
raw_performed(i_p375_a4, participant_watches_news_clip, 31, 50573942).
raw_performed(i_p375_a4, participant_watches_news_clip, 32, 50575598).

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

