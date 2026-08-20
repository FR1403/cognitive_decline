% ======================================================================
% Paziente 111
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

instance(i_p111_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p111_a1, participant_retrieves_broom_from_supply_closet, 1, 34237363).
raw_performed(i_p111_a1, participant_sweeps_kitchen_floor, 2, 34239552).
raw_performed(i_p111_a1, participant_sweeps_kitchen_floor, 3, 34241261).
raw_performed(i_p111_a1, participant_retrieves_dust_pan_and_brush_from_closet, 4, 34299131).
raw_performed(i_p111_a1, participant_returns_broom_to_supply_closet, 5, 34308661).
raw_performed(i_p111_a1, participant_uses_dust_pan_and_brush, 6, 34313420).
raw_performed(i_p111_a1, participant_uses_dust_pan_and_brush, 7, 34316611).
raw_performed(i_p111_a1, participant_uses_dust_pan_and_brush, 8, 34327371).
raw_performed(i_p111_a1, participant_retrieves_duster_from_supply_closet, 9, 34329801).
raw_performed(i_p111_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 10, 34336131).
raw_performed(i_p111_a1, participant_dusts_living_room, 11, 34341640).
raw_performed(i_p111_a1, participant_dusts_living_room, 12, 34343199).
raw_performed(i_p111_a1, participant_dusts_living_room, 13, 34345657).
raw_performed(i_p111_a1, participant_dusts_living_room, 14, 34347610).
raw_performed(i_p111_a1, participant_dusts_living_room, 15, 34350874).
raw_performed(i_p111_a1, participant_dusts_living_room, 16, 34362928).
raw_performed(i_p111_a1, participant_dusts_living_room, 17, 34365439).
raw_performed(i_p111_a1, participant_dusts_living_room, 18, 34369807).
raw_performed(i_p111_a1, participant_dusts_dining_room, 19, 34373191).
raw_performed(i_p111_a1, participant_dusts_dining_room, 20, 34374785).
raw_performed(i_p111_a1, participant_dusts_living_room, 21, 34374970).
raw_performed(i_p111_a1, participant_dusts_living_room, 22, 34384889).
raw_performed(i_p111_a1, participant_dusts_living_room, 23, 34392085).
raw_performed(i_p111_a1, participant_dusts_living_room, 24, 34399614).
raw_performed(i_p111_a1, participant_dusts_living_room, 25, 34401419).
raw_performed(i_p111_a1, participant_dusts_living_room, 26, 34403666).
raw_performed(i_p111_a1, participant_dusts_living_room, 27, 34414884).
raw_performed(i_p111_a1, participant_dusts_dining_room, 28, 34425580).
raw_performed(i_p111_a1, participant_returns_duster_to_supply_closet, 29, 34438386).
raw_performed(i_p111_a1, participant_returns_duster_to_supply_closet, 30, 34442771).
raw_performed(i_p111_a1, participant_returns_duster_to_supply_closet, 31, 34444691).

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

