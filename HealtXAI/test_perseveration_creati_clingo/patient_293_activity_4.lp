% ======================================================================
% Paziente 293
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

instance(i_p293_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p293_a4, participant_moves_to_the_living_room, 1, 35693029).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 2, 35694803).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 3, 35696399).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 4, 35704691).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 5, 35726799).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 6, 35729097).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 7, 35732158).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 8, 35747240).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 9, 35753892).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 10, 35757237).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 11, 35759418).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 12, 35773176).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 13, 35780416).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 14, 35782298).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 15, 35792071).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 16, 35794284).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 17, 35799222).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 18, 35800868).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 19, 35805984).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 20, 35809774).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 21, 35819416).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 22, 35821855).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 23, 35827177).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 24, 35832358).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 25, 35841186).
raw_performed(i_p293_a4, participant_reads_instructions_next_to_the_tv, 26, 35876023).
raw_performed(i_p293_a4, participant_watches_news_clip, 27, 35891414).
raw_performed(i_p293_a4, participant_watches_news_clip, 28, 35905079).
raw_performed(i_p293_a4, participant_watches_news_clip, 29, 35909014).
raw_performed(i_p293_a4, participant_watches_news_clip, 30, 35918951).
raw_performed(i_p293_a4, participant_watches_news_clip, 31, 35922968).
raw_performed(i_p293_a4, participant_watches_news_clip, 32, 35925705).
raw_performed(i_p293_a4, participant_watches_news_clip, 33, 35931534).
raw_performed(i_p293_a4, participant_watches_news_clip, 34, 35934092).
raw_performed(i_p293_a4, participant_watches_news_clip, 35, 35936546).
raw_performed(i_p293_a4, participant_watches_news_clip, 36, 35954511).
raw_performed(i_p293_a4, participant_watches_news_clip, 37, 35965967).
raw_performed(i_p293_a4, participant_watches_news_clip, 38, 36109937).
raw_performed(i_p293_a4, participant_watches_news_clip, 39, 36230559).
raw_performed(i_p293_a4, participant_watches_news_clip, 40, 36239215).
raw_performed(i_p293_a4, participant_watches_news_clip, 41, 36240382).
raw_performed(i_p293_a4, participant_watches_news_clip, 42, 36241832).
raw_performed(i_p293_a4, participant_watches_news_clip, 43, 36253085).
raw_performed(i_p293_a4, participant_watches_news_clip, 44, 36259493).
raw_performed(i_p293_a4, participant_watches_news_clip, 45, 36265623).
raw_performed(i_p293_a4, participant_watches_news_clip, 46, 36270859).
raw_performed(i_p293_a4, participant_watches_news_clip, 47, 36276129).
raw_performed(i_p293_a4, participant_watches_news_clip, 48, 36277725).
raw_performed(i_p293_a4, participant_watches_news_clip, 49, 36278112).
raw_performed(i_p293_a4, participant_watches_news_clip, 50, 36278792).
raw_performed(i_p293_a4, participant_watches_news_clip, 51, 36279230).

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

