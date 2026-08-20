% ======================================================================
% Paziente 285
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

instance(i_p285_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p285_a1, participant_retrieves_dust_pan_and_brush_from_closet, 1, 47107508).
raw_performed(i_p285_a1, participant_retrieves_broom_from_supply_closet, 2, 47113746).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 3, 47115990).
raw_performed(i_p285_a1, participant_uses_dust_pan_and_brush, 4, 47115990).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 5, 47120122).
raw_performed(i_p285_a1, participant_uses_dust_pan_and_brush, 6, 47120122).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 7, 47120140).
raw_performed(i_p285_a1, participant_uses_dust_pan_and_brush, 8, 47120140).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 9, 47127864).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 10, 47139481).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 11, 47155410).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 12, 47160869).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 13, 47172059).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 14, 47179050).
raw_performed(i_p285_a1, participant_uses_dust_pan_and_brush, 15, 47179050).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 16, 47185371).
raw_performed(i_p285_a1, participant_uses_dust_pan_and_brush, 17, 47185371).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 18, 47189229).
raw_performed(i_p285_a1, participant_uses_dust_pan_and_brush, 19, 47189229).
raw_performed(i_p285_a1, participant_sweeps_kitchen_floor, 20, 47198151).
raw_performed(i_p285_a1, participant_uses_dust_pan_and_brush, 21, 47198151).
raw_performed(i_p285_a1, participant_returns_broom_to_supply_closet, 22, 47203602).
raw_performed(i_p285_a1, participant_retrieves_duster_from_supply_closet, 23, 47213714).
raw_performed(i_p285_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 24, 47221035).
raw_performed(i_p285_a1, participant_dusts_living_room, 25, 47222725).
raw_performed(i_p285_a1, participant_dusts_living_room, 26, 47226201).
raw_performed(i_p285_a1, participant_dusts_living_room, 27, 47236298).
raw_performed(i_p285_a1, participant_dusts_living_room, 28, 47236311).
raw_performed(i_p285_a1, participant_dusts_living_room, 29, 47247541).
raw_performed(i_p285_a1, participant_dusts_living_room, 30, 47309558).
raw_performed(i_p285_a1, participant_dusts_living_room, 31, 47323798).
raw_performed(i_p285_a1, participant_dusts_living_room, 32, 47325629).
raw_performed(i_p285_a1, participant_dusts_living_room, 33, 47329581).
raw_performed(i_p285_a1, participant_dusts_living_room, 34, 47339329).
raw_performed(i_p285_a1, participant_dusts_living_room, 35, 47347171).
raw_performed(i_p285_a1, participant_dusts_living_room, 36, 47354233).
raw_performed(i_p285_a1, participant_dusts_living_room, 37, 47356413).
raw_performed(i_p285_a1, participant_dusts_living_room, 38, 47356426).
raw_performed(i_p285_a1, participant_dusts_dining_room, 39, 47357045).
raw_performed(i_p285_a1, participant_dusts_dining_room, 40, 47364560).
raw_performed(i_p285_a1, participant_dusts_dining_room, 41, 47367140).
raw_performed(i_p285_a1, participant_dusts_dining_room, 42, 47372749).
raw_performed(i_p285_a1, participant_dusts_dining_room, 43, 47374969).
raw_performed(i_p285_a1, participant_returns_duster_to_supply_closet, 44, 47399595).

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

