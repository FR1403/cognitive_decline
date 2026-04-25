% =================================================================================================

                                  % Paziente 51
% Attività: Find the appropriate DVD and watch the corresponding news clip.

                                  % =================================================================================================

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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).


performed(i1, participant_moves_to_the_living_room).
performed(i1, participant_reads_instructions_next_to_the_tv).
performed(i1, participant_watches_news_clip).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
