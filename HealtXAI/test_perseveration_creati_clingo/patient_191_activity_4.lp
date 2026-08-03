% ======================================================================
% Paziente 191
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

instance(i_p191_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p191_a4, participant_moves_to_the_living_room, 1, 36584910).
raw_performed(i_p191_a4, participant_reads_instructions_next_to_the_tv, 2, 36586586).
raw_performed(i_p191_a4, participant_reads_instructions_next_to_the_tv, 3, 36598823).
raw_performed(i_p191_a4, participant_watches_news_clip, 4, 36626842).
raw_performed(i_p191_a4, participant_watches_news_clip, 5, 36642502).
raw_performed(i_p191_a4, participant_watches_news_clip, 6, 36662789).
raw_performed(i_p191_a4, participant_watches_news_clip, 7, 36705646).
raw_performed(i_p191_a4, participant_watches_news_clip, 8, 36715320).
raw_performed(i_p191_a4, participant_watches_news_clip, 9, 36720872).
raw_performed(i_p191_a4, participant_watches_news_clip, 10, 36730766).
raw_performed(i_p191_a4, participant_watches_news_clip, 11, 36742244).
raw_performed(i_p191_a4, participant_watches_news_clip, 12, 36761876).
raw_performed(i_p191_a4, participant_watches_news_clip, 13, 36773173).
raw_performed(i_p191_a4, participant_watches_news_clip, 14, 36776193).
raw_performed(i_p191_a4, participant_watches_news_clip, 15, 36781342).
raw_performed(i_p191_a4, participant_watches_news_clip, 16, 36782172).
raw_performed(i_p191_a4, participant_watches_news_clip, 17, 36790526).
raw_performed(i_p191_a4, participant_watches_news_clip, 18, 36795212).
raw_performed(i_p191_a4, participant_watches_news_clip, 19, 36802817).
raw_performed(i_p191_a4, participant_watches_news_clip, 20, 36841212).
raw_performed(i_p191_a4, participant_watches_news_clip, 21, 36846276).
raw_performed(i_p191_a4, participant_watches_news_clip, 22, 36846793).
raw_performed(i_p191_a4, participant_watches_news_clip, 23, 36852423).
raw_performed(i_p191_a4, participant_watches_news_clip, 24, 36859093).
raw_performed(i_p191_a4, participant_watches_news_clip, 25, 36952830).
raw_performed(i_p191_a4, participant_watches_news_clip, 26, 36991795).
raw_performed(i_p191_a4, participant_watches_news_clip, 27, 37029970).
raw_performed(i_p191_a4, participant_watches_news_clip, 28, 37074928).
raw_performed(i_p191_a4, participant_watches_news_clip, 29, 37078670).
raw_performed(i_p191_a4, participant_watches_news_clip, 30, 37079952).
raw_performed(i_p191_a4, participant_watches_news_clip, 31, 37086500).
raw_performed(i_p191_a4, participant_watches_news_clip, 32, 37132754).

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

