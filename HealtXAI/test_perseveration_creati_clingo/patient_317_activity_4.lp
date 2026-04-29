% ======================================================================
% Paziente 317
% Attività: Find the appropriate DVD and watch the corresponding news clip.
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

action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_moves_to_the_living_room, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_dvd, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_reads_instructions_next_to_the_tv, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participants_uses_remote_to_turn_on_tv, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_selects_correct_channel, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_watches_news_clip, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_turns_off_tv, 240000).
action_gap(find_the_appropriate_dvd_and_watch_the_corresponding_news_clip, participant_returns_dvd_to_pile, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p317_a5, find_the_appropriate_dvd_and_watch_the_corresponding_news_clip).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p317_a5, participant_retrieves_watering_can_from_supply_closet, 1, 35091762).
raw_performed(i_p317_a5, participant_fills_watering_can, 2, 35091810).
raw_performed(i_p317_a5, participant_fills_watering_can, 3, 35099346).
raw_performed(i_p317_a5, participant_fills_watering_can, 4, 35100615).
raw_performed(i_p317_a5, participant_waters_plants_coffee_table, 5, 35116644).
raw_performed(i_p317_a5, participant_waters_plants_coffee_table, 6, 35119924).
raw_performed(i_p317_a5, participant_waters_plants_windowsill, 7, 35129041).
raw_performed(i_p317_a5, participant_empties_extra_water_into_sink, 8, 35136255).
raw_performed(i_p317_a5, participant_empties_extra_water_into_sink, 9, 35139379).
raw_performed(i_p317_a5, participant_returns_watering_can_to_supply_closet, 10, 35143645).

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

