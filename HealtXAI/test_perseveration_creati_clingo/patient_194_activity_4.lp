% ======================================================================
% Paziente 194
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

instance(i_p194_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p194_a4, participant_moves_to_the_living_room, 1, 35842087).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 2, 35843265).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 3, 35850002).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 4, 35868093).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 5, 35872618).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 6, 35887097).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 7, 35905005).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 8, 35908657).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 9, 35934037).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 10, 35940926).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 11, 35945079).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 12, 35956305).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 13, 35958017).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 14, 35988936).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 15, 35997141).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 16, 36006039).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 17, 36013083).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 18, 36024065).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 19, 36028111).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 20, 36049004).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 21, 36064478).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 22, 36084036).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 23, 36086336).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 24, 36089074).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 25, 36105027).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 26, 36119011).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 27, 36142092).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 28, 36148931).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 29, 36160068).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 30, 36168685).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 31, 36176058).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 32, 36213077).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 33, 36218056).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 34, 36222052).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 35, 36224066).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 36, 36235315).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 37, 36246038).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 38, 36304041).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 39, 36311021).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 40, 36312070).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 41, 36316010).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 42, 36325260).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 43, 36329409).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 44, 36331076).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 45, 36334018).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 46, 36335467).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 47, 36360454).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 48, 36367248).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 49, 36384356).
raw_performed(i_p194_a4, participant_reads_instructions_next_to_the_tv, 50, 36386080).
raw_performed(i_p194_a4, participant_watches_news_clip, 51, 36473014).
raw_performed(i_p194_a4, participant_watches_news_clip, 52, 36475961).
raw_performed(i_p194_a4, participant_watches_news_clip, 53, 36476424).
raw_performed(i_p194_a4, participant_watches_news_clip, 54, 36478385).
raw_performed(i_p194_a4, participant_watches_news_clip, 55, 36718086).
raw_performed(i_p194_a4, participant_watches_news_clip, 56, 36763090).
raw_performed(i_p194_a4, participant_watches_news_clip, 57, 36764664).
raw_performed(i_p194_a4, participant_watches_news_clip, 58, 36769157).
raw_performed(i_p194_a4, participant_watches_news_clip, 59, 36771058).
raw_performed(i_p194_a4, participant_watches_news_clip, 60, 36771843).
raw_performed(i_p194_a4, participant_watches_news_clip, 61, 36773003).
raw_performed(i_p194_a4, participant_watches_news_clip, 62, 36782953).
raw_performed(i_p194_a4, participant_watches_news_clip, 63, 36783047).

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

