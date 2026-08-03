% ======================================================================
% Paziente 355
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

instance(i_p355_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p355_a4, participant_moves_to_the_living_room, 1, 49626527).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 2, 49628909).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 3, 49638100).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 4, 49646345).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 5, 49652755).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 6, 49654981).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 7, 49663228).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 8, 49673711).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 9, 49679940).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 10, 49691529).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 11, 49694890).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 12, 49700209).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 13, 49704848).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 14, 49707089).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 15, 49710840).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 16, 49721147).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 17, 49727163).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 18, 49730149).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 19, 49735589).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 20, 49738592).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 21, 49740464).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 22, 49751144).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 23, 49753038).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 24, 49772906).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 25, 49779292).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 26, 49780951).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 27, 49783388).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 28, 49789573).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 29, 49792958).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 30, 49796149).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 31, 49803455).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 32, 49816392).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 33, 49819919).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 34, 49821638).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 35, 49825960).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 36, 49828389).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 37, 49831581).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 38, 49836459).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 39, 49839645).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 40, 49843580).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 41, 49846976).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 42, 49849193).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 43, 49857464).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 44, 49859879).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 45, 49864018).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 46, 49865898).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 47, 49870206).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 48, 49874879).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 49, 49876584).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 50, 49880525).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 51, 49888990).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 52, 49894959).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 53, 49897600).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 54, 49905254).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 55, 49911458).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 56, 49918566).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 57, 49923643).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 58, 49926634).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 59, 49930765).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 60, 49941228).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 61, 49944083).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 62, 49952694).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 63, 49955507).
raw_performed(i_p355_a4, participant_reads_instructions_next_to_the_tv, 64, 49957447).
raw_performed(i_p355_a4, participant_watches_news_clip, 65, 49958648).
raw_performed(i_p355_a4, participant_watches_news_clip, 66, 49959513).
raw_performed(i_p355_a4, participant_watches_news_clip, 67, 49962901).
raw_performed(i_p355_a4, participant_watches_news_clip, 68, 49964624).
raw_performed(i_p355_a4, participant_watches_news_clip, 69, 49966339).
raw_performed(i_p355_a4, participant_watches_news_clip, 70, 50094728).
raw_performed(i_p355_a4, participant_watches_news_clip, 71, 50160928).
raw_performed(i_p355_a4, participant_watches_news_clip, 72, 50163705).
raw_performed(i_p355_a4, participant_watches_news_clip, 73, 50239656).
raw_performed(i_p355_a4, participant_watches_news_clip, 74, 50265015).
raw_performed(i_p355_a4, participant_watches_news_clip, 75, 50269131).
raw_performed(i_p355_a4, participant_watches_news_clip, 76, 50273077).
raw_performed(i_p355_a4, participant_watches_news_clip, 77, 50281087).

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

