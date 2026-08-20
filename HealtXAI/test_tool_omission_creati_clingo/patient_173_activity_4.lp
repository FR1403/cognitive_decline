% ======================================================================
% Paziente 173
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

expected_object(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, dvd).
expected_object(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, remote).
expected_object(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, remote).
expected_object(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, remote).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p173_a4, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

performed(i_p173_a4, participant_moves_to_the_living_room, 1).
performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 2).
performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 3).
performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 4).
performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 5).
performed(i_p173_a4, participant_reads_instructions_next_to_the_tv, 6).
performed(i_p173_a4, participant_watches_news_clip, 7).
performed(i_p173_a4, participant_watches_news_clip, 8).
performed(i_p173_a4, participant_watches_news_clip, 9).
performed(i_p173_a4, participant_watches_news_clip, 10).
performed(i_p173_a4, participant_watches_news_clip, 11).
performed(i_p173_a4, participant_watches_news_clip, 12).
performed(i_p173_a4, participant_watches_news_clip, 13).
performed(i_p173_a4, participant_watches_news_clip, 14).
performed(i_p173_a4, participant_watches_news_clip, 15).
performed(i_p173_a4, participant_watches_news_clip, 16).
performed(i_p173_a4, participant_watches_news_clip, 17).
performed(i_p173_a4, participant_watches_news_clip, 18).
performed(i_p173_a4, participant_watches_news_clip, 19).
performed(i_p173_a4, participant_watches_news_clip, 20).
performed(i_p173_a4, participant_watches_news_clip, 21).
performed(i_p173_a4, participant_watches_news_clip, 22).
performed(i_p173_a4, participant_watches_news_clip, 23).
performed(i_p173_a4, participant_watches_news_clip, 24).
performed(i_p173_a4, participant_watches_news_clip, 25).
performed(i_p173_a4, participant_watches_news_clip, 26).
performed(i_p173_a4, participant_watches_news_clip, 27).
performed(i_p173_a4, participant_watches_news_clip, 28).
performed(i_p173_a4, participant_watches_news_clip, 29).
performed(i_p173_a4, participant_watches_news_clip, 30).
performed(i_p173_a4, participant_watches_news_clip, 31).
performed(i_p173_a4, participant_watches_news_clip, 32).
performed(i_p173_a4, participant_watches_news_clip, 33).
performed(i_p173_a4, participant_watches_news_clip, 34).
performed(i_p173_a4, participant_watches_news_clip, 35).
performed(i_p173_a4, participant_watches_news_clip, 36).
performed(i_p173_a4, participant_watches_news_clip, 37).
performed(i_p173_a4, participant_watches_news_clip, 38).
performed(i_p173_a4, participant_watches_news_clip, 39).
performed(i_p173_a4, participant_watches_news_clip, 40).
performed(i_p173_a4, participant_watches_news_clip, 41).
performed(i_p173_a4, participant_watches_news_clip, 42).
performed(i_p173_a4, participant_watches_news_clip, 43).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

