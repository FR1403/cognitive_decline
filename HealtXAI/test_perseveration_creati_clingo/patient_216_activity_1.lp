% ======================================================================
% Paziente 216
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

instance(i_p216_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p216_a1, participant_retrieves_broom_from_supply_closet, 1, 52605081).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 2, 52622022).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 3, 52629032).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 4, 52632040).
raw_performed(i_p216_a1, participant_retrieves_dust_pan_and_brush_from_closet, 5, 52642039).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 6, 52649072).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 7, 52649072).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 8, 52658008).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 9, 52658008).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 10, 52659077).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 11, 52659077).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 12, 52667072).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 13, 52667072).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 14, 52672024).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 15, 52672024).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 16, 52677001).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 17, 52677001).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 18, 52682003).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 19, 52682003).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 20, 52695014).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 21, 52695014).
raw_performed(i_p216_a1, participant_sweeps_kitchen_floor, 22, 52702040).
raw_performed(i_p216_a1, participant_uses_dust_pan_and_brush, 23, 52702040).
raw_performed(i_p216_a1, participant_returns_broom_to_supply_closet, 24, 52712041).
raw_performed(i_p216_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 25, 52712041).
raw_performed(i_p216_a1, participant_retrieves_duster_from_supply_closet, 26, 52722011).
raw_performed(i_p216_a1, participant_dusts_dining_room, 27, 52747004).
raw_performed(i_p216_a1, participant_dusts_dining_room, 28, 52752067).
raw_performed(i_p216_a1, participant_dusts_dining_room, 29, 52756051).
raw_performed(i_p216_a1, participant_dusts_dining_room, 30, 52762068).
raw_performed(i_p216_a1, participant_dusts_dining_room, 31, 52764016).
raw_performed(i_p216_a1, participant_dusts_dining_room, 32, 52789082).
raw_performed(i_p216_a1, participant_dusts_dining_room, 33, 52791091).
raw_performed(i_p216_a1, participant_dusts_dining_room, 34, 52795064).
raw_performed(i_p216_a1, participant_dusts_dining_room, 35, 52802090).
raw_performed(i_p216_a1, participant_dusts_dining_room, 36, 52803050).
raw_performed(i_p216_a1, participant_dusts_dining_room, 37, 52808011).
raw_performed(i_p216_a1, participant_dusts_living_room, 38, 52808070).
raw_performed(i_p216_a1, participant_dusts_living_room, 39, 52809073).
raw_performed(i_p216_a1, participant_dusts_living_room, 40, 52813003).
raw_performed(i_p216_a1, participant_dusts_living_room, 41, 52814073).
raw_performed(i_p216_a1, participant_dusts_living_room, 42, 52816025).
raw_performed(i_p216_a1, participant_dusts_living_room, 43, 52819099).
raw_performed(i_p216_a1, participant_dusts_living_room, 44, 52820060).
raw_performed(i_p216_a1, participant_dusts_living_room, 45, 52827070).
raw_performed(i_p216_a1, participant_dusts_living_room, 46, 52842073).
raw_performed(i_p216_a1, participant_dusts_living_room, 47, 52858003).
raw_performed(i_p216_a1, participant_dusts_living_room, 48, 52862018).
raw_performed(i_p216_a1, participant_dusts_living_room, 49, 52870074).
raw_performed(i_p216_a1, participant_dusts_living_room, 50, 52876085).
raw_performed(i_p216_a1, participant_dusts_living_room, 51, 52878071).
raw_performed(i_p216_a1, participant_dusts_living_room, 52, 52889014).
raw_performed(i_p216_a1, participant_dusts_living_room, 53, 52890018).
raw_performed(i_p216_a1, participant_dusts_living_room, 54, 52896066).
raw_performed(i_p216_a1, participant_dusts_living_room, 55, 52898015).
raw_performed(i_p216_a1, participant_dusts_living_room, 56, 52899041).
raw_performed(i_p216_a1, participant_dusts_living_room, 57, 52900000).
raw_performed(i_p216_a1, participant_dusts_dining_room, 58, 52900088).
raw_performed(i_p216_a1, participant_dusts_dining_room, 59, 52901071).
raw_performed(i_p216_a1, participant_dusts_dining_room, 60, 52901073).
raw_performed(i_p216_a1, participant_dusts_dining_room, 61, 52908064).
raw_performed(i_p216_a1, participant_dusts_dining_room, 62, 52909028).
raw_performed(i_p216_a1, participant_dusts_dining_room, 63, 52916006).
raw_performed(i_p216_a1, participant_dusts_dining_room, 64, 52917026).
raw_performed(i_p216_a1, participant_returns_duster_to_supply_closet, 65, 52921048).

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

