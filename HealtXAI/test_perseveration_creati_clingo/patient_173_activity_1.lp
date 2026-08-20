% ======================================================================
% Paziente 173
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

instance(i_p173_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p173_a1, participant_retrieves_dust_pan_and_brush_from_closet, 1, 34005551).
raw_performed(i_p173_a1, participant_retrieves_broom_from_supply_closet, 2, 34008371).
raw_performed(i_p173_a1, participant_sweeps_kitchen_floor, 3, 34011907).
raw_performed(i_p173_a1, participant_uses_dust_pan_and_brush, 4, 34011907).
raw_performed(i_p173_a1, participant_sweeps_kitchen_floor, 5, 34012564).
raw_performed(i_p173_a1, participant_uses_dust_pan_and_brush, 6, 34012564).
raw_performed(i_p173_a1, participant_sweeps_kitchen_floor, 7, 34014468).
raw_performed(i_p173_a1, participant_uses_dust_pan_and_brush, 8, 34014468).
raw_performed(i_p173_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 9, 34015321).
raw_performed(i_p173_a1, participant_returns_broom_to_supply_closet, 10, 34056901).
raw_performed(i_p173_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 11, 34066492).
raw_performed(i_p173_a1, participant_retrieves_duster_from_supply_closet, 12, 34071571).
raw_performed(i_p173_a1, participant_dusts_dining_room, 13, 34075620).
raw_performed(i_p173_a1, participant_dusts_dining_room, 14, 34076533).
raw_performed(i_p173_a1, participant_dusts_dining_room, 15, 34077671).
raw_performed(i_p173_a1, participant_dusts_dining_room, 16, 34079529).
raw_performed(i_p173_a1, participant_dusts_dining_room, 17, 34082893).
raw_performed(i_p173_a1, participant_dusts_dining_room, 18, 34086811).
raw_performed(i_p173_a1, participant_dusts_dining_room, 19, 34088201).
raw_performed(i_p173_a1, participant_dusts_dining_room, 20, 34090800).
raw_performed(i_p173_a1, participant_dusts_living_room, 21, 34091461).
raw_performed(i_p173_a1, participant_dusts_living_room, 22, 34091977).
raw_performed(i_p173_a1, participant_dusts_living_room, 23, 34093883).
raw_performed(i_p173_a1, participant_dusts_living_room, 24, 34095618).
raw_performed(i_p173_a1, participant_dusts_living_room, 25, 34097219).
raw_performed(i_p173_a1, participant_dusts_living_room, 26, 34103731).
raw_performed(i_p173_a1, participant_dusts_living_room, 27, 34110580).
raw_performed(i_p173_a1, participant_dusts_living_room, 28, 34116211).
raw_performed(i_p173_a1, participant_dusts_living_room, 29, 34130097).
raw_performed(i_p173_a1, participant_dusts_living_room, 30, 34132889).
raw_performed(i_p173_a1, participant_dusts_living_room, 31, 34136971).
raw_performed(i_p173_a1, participant_dusts_living_room, 32, 34140730).
raw_performed(i_p173_a1, participant_dusts_living_room, 33, 34143317).
raw_performed(i_p173_a1, participant_dusts_living_room, 34, 34144883).
raw_performed(i_p173_a1, participant_dusts_living_room, 35, 34147457).
raw_performed(i_p173_a1, participant_dusts_living_room, 36, 34148302).
raw_performed(i_p173_a1, participant_dusts_living_room, 37, 34152542).
raw_performed(i_p173_a1, participant_dusts_living_room, 38, 34154873).
raw_performed(i_p173_a1, participant_dusts_living_room, 39, 34155919).
raw_performed(i_p173_a1, participant_dusts_living_room, 40, 34157185).
raw_performed(i_p173_a1, participant_dusts_dining_room, 41, 34165866).
raw_performed(i_p173_a1, participant_dusts_dining_room, 42, 34180400).
raw_performed(i_p173_a1, participant_dusts_dining_room, 43, 34182506).
raw_performed(i_p173_a1, participant_dusts_dining_room, 44, 34183599).
raw_performed(i_p173_a1, participant_dusts_dining_room, 45, 34199693).
raw_performed(i_p173_a1, participant_dusts_dining_room, 46, 34204364).
raw_performed(i_p173_a1, participant_dusts_dining_room, 47, 34205920).
raw_performed(i_p173_a1, participant_returns_duster_to_supply_closet, 48, 34214587).
raw_performed(i_p173_a1, participant_returns_duster_to_supply_closet, 49, 34219263).
raw_performed(i_p173_a1, participant_returns_duster_to_supply_closet, 50, 34220982).

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

