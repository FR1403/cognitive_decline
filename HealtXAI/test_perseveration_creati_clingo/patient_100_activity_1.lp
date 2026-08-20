% ======================================================================
% Paziente 100
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

instance(i_p100_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p100_a1, participant_retrieves_broom_from_supply_closet, 1, 52272088).
raw_performed(i_p100_a1, participant_retrieves_duster_from_supply_closet, 2, 52272088).
raw_performed(i_p100_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 52272088).
raw_performed(i_p100_a1, participant_sweeps_kitchen_floor, 4, 52322018).
raw_performed(i_p100_a1, participant_dusts_dining_room, 5, 52334904).
raw_performed(i_p100_a1, participant_sweeps_kitchen_floor, 6, 52337004).
raw_performed(i_p100_a1, participant_sweeps_kitchen_floor, 7, 52345063).
raw_performed(i_p100_a1, participant_dusts_dining_room, 8, 52353637).
raw_performed(i_p100_a1, participant_dusts_dining_room, 9, 52362053).
raw_performed(i_p100_a1, participant_dusts_living_room, 10, 52366816).
raw_performed(i_p100_a1, participant_dusts_living_room, 11, 52503115).
raw_performed(i_p100_a1, participant_dusts_living_room, 12, 52503262).
raw_performed(i_p100_a1, participant_dusts_living_room, 13, 52505047).
raw_performed(i_p100_a1, participant_dusts_dining_room, 14, 52511709).
raw_performed(i_p100_a1, participant_dusts_dining_room, 15, 52555006).
raw_performed(i_p100_a1, participant_dusts_dining_room, 16, 52564002).
raw_performed(i_p100_a1, participant_dusts_dining_room, 17, 52568010).
raw_performed(i_p100_a1, participant_dusts_living_room, 18, 52578099).
raw_performed(i_p100_a1, participant_dusts_living_room, 19, 52580025).
raw_performed(i_p100_a1, participant_dusts_living_room, 20, 52596094).
raw_performed(i_p100_a1, participant_dusts_living_room, 21, 52603123).
raw_performed(i_p100_a1, participant_dusts_living_room, 22, 52605012).
raw_performed(i_p100_a1, participant_dusts_living_room, 23, 52658751).
raw_performed(i_p100_a1, participant_dusts_living_room, 24, 52659063).
raw_performed(i_p100_a1, participant_dusts_living_room, 25, 52665030).
raw_performed(i_p100_a1, participant_dusts_living_room, 26, 52701075).
raw_performed(i_p100_a1, participant_dusts_living_room, 27, 52703058).
raw_performed(i_p100_a1, participant_dusts_living_room, 28, 52710068).
raw_performed(i_p100_a1, participant_dusts_dining_room, 29, 52717607).
raw_performed(i_p100_a1, participant_dusts_dining_room, 30, 52720318).
raw_performed(i_p100_a1, participant_dusts_dining_room, 31, 52722451).
raw_performed(i_p100_a1, participant_dusts_dining_room, 32, 52802063).

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

