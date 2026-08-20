% ======================================================================
% Paziente 103
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

action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 9078).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 68036).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 37696).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 271388).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 109438).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 122668).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 432609).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26902).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 21027).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 222487).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p103_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p103_a1, participant_retrieves_broom_from_supply_closet, 1, 48029505).
raw_performed(i_p103_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 48029505).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 3, 48032431).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 4, 48032431).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 5, 48033442).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 6, 48033442).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 7, 48040024).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 8, 48040024).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 9, 48043512).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 10, 48043512).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 11, 48058693).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 12, 48058693).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 13, 48074909).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 14, 48074909).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 15, 48086079).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 16, 48086079).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 17, 48102308).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 18, 48102308).
raw_performed(i_p103_a1, participant_sweeps_kitchen_floor, 19, 48102332).
raw_performed(i_p103_a1, participant_uses_dust_pan_and_brush, 20, 48102332).
raw_performed(i_p103_a1, participant_returns_broom_to_supply_closet, 21, 48106009).
raw_performed(i_p103_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 22, 48113664).
raw_performed(i_p103_a1, participant_retrieves_duster_from_supply_closet, 23, 48121492).
raw_performed(i_p103_a1, participant_dusts_dining_room, 24, 48140834).
raw_performed(i_p103_a1, participant_dusts_dining_room, 25, 48140858).
raw_performed(i_p103_a1, participant_dusts_dining_room, 26, 48140882).
raw_performed(i_p103_a1, participant_dusts_dining_room, 27, 48162849).
raw_performed(i_p103_a1, participant_dusts_dining_room, 28, 48164988).
raw_performed(i_p103_a1, participant_dusts_dining_room, 29, 48168723).
raw_performed(i_p103_a1, participant_dusts_dining_room, 30, 48180971).
raw_performed(i_p103_a1, participant_dusts_dining_room, 31, 48189384).
raw_performed(i_p103_a1, participant_dusts_dining_room, 32, 48191675).
raw_performed(i_p103_a1, participant_dusts_dining_room, 33, 48192732).
raw_performed(i_p103_a1, participant_dusts_dining_room, 34, 48196157).
raw_performed(i_p103_a1, participant_dusts_dining_room, 35, 48196229).
raw_performed(i_p103_a1, participant_dusts_living_room, 36, 48197186).
raw_performed(i_p103_a1, participant_dusts_living_room, 37, 48197256).
raw_performed(i_p103_a1, participant_dusts_living_room, 38, 48200023).
raw_performed(i_p103_a1, participant_dusts_living_room, 39, 48204993).
raw_performed(i_p103_a1, participant_dusts_living_room, 40, 48216990).
raw_performed(i_p103_a1, participant_dusts_living_room, 41, 48217019).
raw_performed(i_p103_a1, participant_returns_duster_to_supply_closet, 42, 48219357).

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

