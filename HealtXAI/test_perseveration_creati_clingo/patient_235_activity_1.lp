% ======================================================================
% Paziente 235
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

instance(i_p235_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p235_a1, participant_retrieves_broom_from_supply_closet, 1, 32180384).
raw_performed(i_p235_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 32188564).
raw_performed(i_p235_a1, participant_sweeps_kitchen_floor, 3, 32192475).
raw_performed(i_p235_a1, participant_sweeps_kitchen_floor, 4, 32193434).
raw_performed(i_p235_a1, participant_sweeps_kitchen_floor, 5, 32200390).
raw_performed(i_p235_a1, participant_sweeps_kitchen_floor, 6, 32210847).
raw_performed(i_p235_a1, participant_sweeps_kitchen_floor, 7, 32215780).
raw_performed(i_p235_a1, participant_sweeps_kitchen_floor, 8, 32216642).
raw_performed(i_p235_a1, participant_uses_dust_pan_and_brush, 9, 32251734).
raw_performed(i_p235_a1, participant_returns_broom_to_supply_closet, 10, 32253094).
raw_performed(i_p235_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 11, 32269325).
raw_performed(i_p235_a1, participant_retrieves_duster_from_supply_closet, 12, 32270053).
raw_performed(i_p235_a1, participant_dusts_dining_room, 13, 32276055).
raw_performed(i_p235_a1, participant_dusts_dining_room, 14, 32276576).
raw_performed(i_p235_a1, participant_dusts_dining_room, 15, 32288424).
raw_performed(i_p235_a1, participant_dusts_dining_room, 16, 32288439).
raw_performed(i_p235_a1, participant_dusts_dining_room, 17, 32296312).
raw_performed(i_p235_a1, participant_dusts_dining_room, 18, 32301593).
raw_performed(i_p235_a1, participant_dusts_dining_room, 19, 32301966).
raw_performed(i_p235_a1, participant_dusts_dining_room, 20, 32302362).
raw_performed(i_p235_a1, participant_dusts_dining_room, 21, 32305227).
raw_performed(i_p235_a1, participant_dusts_dining_room, 22, 32306206).
raw_performed(i_p235_a1, participant_dusts_dining_room, 23, 32314296).
raw_performed(i_p235_a1, participant_dusts_dining_room, 24, 32322831).
raw_performed(i_p235_a1, participant_dusts_dining_room, 25, 32323212).
raw_performed(i_p235_a1, participant_dusts_dining_room, 26, 32324986).
raw_performed(i_p235_a1, participant_dusts_dining_room, 27, 32326247).
raw_performed(i_p235_a1, participant_dusts_living_room, 28, 32328684).
raw_performed(i_p235_a1, participant_dusts_living_room, 29, 32329754).
raw_performed(i_p235_a1, participant_dusts_living_room, 30, 32331092).
raw_performed(i_p235_a1, participant_dusts_living_room, 31, 32337737).
raw_performed(i_p235_a1, participant_dusts_living_room, 32, 32347577).
raw_performed(i_p235_a1, participant_dusts_living_room, 33, 32352136).
raw_performed(i_p235_a1, participant_dusts_living_room, 34, 32365985).
raw_performed(i_p235_a1, participant_dusts_living_room, 35, 32390673).
raw_performed(i_p235_a1, participant_dusts_living_room, 36, 32392052).
raw_performed(i_p235_a1, participant_dusts_living_room, 37, 32400411).
raw_performed(i_p235_a1, participant_dusts_living_room, 38, 32401252).
raw_performed(i_p235_a1, participant_dusts_living_room, 39, 32402257).
raw_performed(i_p235_a1, participant_dusts_living_room, 40, 32403565).
raw_performed(i_p235_a1, participant_dusts_living_room, 41, 32404476).
raw_performed(i_p235_a1, participant_returns_duster_to_supply_closet, 42, 32422403).

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

