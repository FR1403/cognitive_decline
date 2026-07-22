% ======================================================================
% Paziente 160
% Attivita: Sweep the kitchen and dust the living room.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(sweep_the_kitchen_and_dust_the_living_room).

action(participant_retrieves_broom_from_supply_closet).
action(participant_retrieves_duster_from_supply_closet).
action(participant_retrieves_dust_pan_and_brush_from_closet).
action(participant_sweeps_kitchen_floor).
action(participant_uses_dust_pan_and_brush).
action(participant_dusts_living_room).
action(participant_dusts_dining_room).
action(participant_returns_broom_to_supply_closet).
action(participant_returns_duster_to_supply_closet).
action(participants_returns_dust_pan_and_brush_to_supply_closet).

action_type(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 1).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 1).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 1).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 5).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 5).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 5).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 5).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 12).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 12).
action_type(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 12).

expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 1).

action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 9166).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 63001).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 38902).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321564).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 142634).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504567).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 206023).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p160_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p160_a1, participant_retrieves_broom_from_supply_closet, 1, 49167025).
raw_performed(i_p160_a1, participant_retrieves_duster_from_supply_closet, 2, 49167025).
raw_performed(i_p160_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 49167025).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 4, 49182087).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 5, 49182087).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 6, 49186002).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 7, 49186002).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 8, 49192028).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 9, 49192028).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 10, 49196084).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 11, 49196084).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 12, 49216028).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 13, 49216028).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 14, 49219000).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 15, 49219000).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 16, 49220047).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 17, 49220047).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 18, 49225004).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 19, 49225004).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 20, 49235088).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 21, 49235088).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 22, 49251076).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 23, 49251076).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 24, 49264009).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 25, 49264009).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 26, 49274040).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 27, 49274040).
raw_performed(i_p160_a1, participant_sweeps_kitchen_floor, 28, 49279099).
raw_performed(i_p160_a1, participant_uses_dust_pan_and_brush, 29, 49279099).
raw_performed(i_p160_a1, participant_dusts_dining_room, 30, 49288080).
raw_performed(i_p160_a1, participant_dusts_dining_room, 31, 49295035).
raw_performed(i_p160_a1, participant_dusts_living_room, 32, 49295094).
raw_performed(i_p160_a1, participant_dusts_living_room, 33, 49296098).
raw_performed(i_p160_a1, participant_dusts_living_room, 34, 49298068).
raw_performed(i_p160_a1, participant_dusts_living_room, 35, 49304051).
raw_performed(i_p160_a1, participant_dusts_living_room, 36, 49312020).
raw_performed(i_p160_a1, participant_dusts_living_room, 37, 49327005).
raw_performed(i_p160_a1, participant_dusts_living_room, 38, 49330079).
raw_performed(i_p160_a1, participant_dusts_living_room, 39, 49337013).
raw_performed(i_p160_a1, participant_dusts_living_room, 40, 49341009).
raw_performed(i_p160_a1, participant_dusts_living_room, 41, 49343014).
raw_performed(i_p160_a1, participant_dusts_living_room, 42, 49344084).
raw_performed(i_p160_a1, participant_dusts_dining_room, 43, 49345068).
raw_performed(i_p160_a1, participant_dusts_dining_room, 44, 49347001).
raw_performed(i_p160_a1, participant_dusts_dining_room, 45, 49354064).
raw_performed(i_p160_a1, participant_dusts_dining_room, 46, 49354067).
raw_performed(i_p160_a1, participant_dusts_dining_room, 47, 49360032).
raw_performed(i_p160_a1, participant_dusts_dining_room, 48, 49361034).
raw_performed(i_p160_a1, participant_dusts_dining_room, 49, 49371037).
raw_performed(i_p160_a1, participant_dusts_dining_room, 50, 49383071).
raw_performed(i_p160_a1, participant_dusts_dining_room, 51, 49386038).
raw_performed(i_p160_a1, participant_dusts_dining_room, 52, 49388027).
raw_performed(i_p160_a1, participant_dusts_living_room, 53, 49388091).
raw_performed(i_p160_a1, participant_dusts_living_room, 54, 49390018).
raw_performed(i_p160_a1, participant_dusts_dining_room, 55, 49394001).
raw_performed(i_p160_a1, participant_returns_duster_to_supply_closet, 56, 49399015).
raw_performed(i_p160_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 57, 49412059).
raw_performed(i_p160_a1, participant_returns_broom_to_supply_closet, 58, 49418085).

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

