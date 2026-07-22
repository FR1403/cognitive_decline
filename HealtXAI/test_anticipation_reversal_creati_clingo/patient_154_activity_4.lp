% ======================================================================
% Paziente 154
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

part_of(participant_moves_to_the_living_room, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).
part_of(participant_selects_correct_dvd, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).
part_of(participant_reads_instructions_next_to_the_tv, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).
part_of(participants_uses_remote_to_turn_on_tv, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).
part_of(participant_selects_correct_channel, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).
part_of(participant_watches_news_clip, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).
part_of(participant_turns_off_tv, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).
part_of(participant_returns_dvd_to_pile, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

expected_pos(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_moves_to_the_living_room, 1).
expected_pos(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, 2).
expected_pos(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, 3).
expected_pos(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, 4).
expected_pos(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, 5).
expected_pos(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, 6).
expected_pos(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, 7).
expected_pos(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, 8).

depends_on(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, participant_selects_correct_dvd).
depends_on(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, participant_turns_off_tv).
depends_on(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, participants_uses_remote_to_turn_on_tv).
depends_on(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, participant_moves_to_the_living_room).
depends_on(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, participant_watches_news_clip).
depends_on(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, participant_selects_correct_channel).
depends_on(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, participant_reads_instructions_next_to_the_tv).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p154_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).
performed(i_p154_a4, participant_moves_to_the_living_room, 1).
performed(i_p154_a4, participant_reads_instructions_next_to_the_tv, 2).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.

