% ======================================================================
% Paziente 340
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

instance(i_p340_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p340_a1, participant_retrieves_broom_from_supply_closet, 1, 32458090).
raw_performed(i_p340_a1, participant_retrieves_duster_from_supply_closet, 2, 32458090).
raw_performed(i_p340_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 32458090).
raw_performed(i_p340_a1, participant_dusts_living_room, 4, 32477071).
raw_performed(i_p340_a1, participant_dusts_living_room, 5, 32478094).
raw_performed(i_p340_a1, participant_dusts_living_room, 6, 32482085).
raw_performed(i_p340_a1, participant_dusts_living_room, 7, 32483049).
raw_performed(i_p340_a1, participant_dusts_living_room, 8, 32488048).
raw_performed(i_p340_a1, participant_dusts_living_room, 9, 32489053).
raw_performed(i_p340_a1, participant_dusts_living_room, 10, 32508001).
raw_performed(i_p340_a1, participant_dusts_living_room, 11, 32509077).
raw_performed(i_p340_a1, participant_dusts_living_room, 12, 32514099).
raw_performed(i_p340_a1, participant_dusts_living_room, 13, 32516047).
raw_performed(i_p340_a1, participant_dusts_living_room, 14, 32522070).
raw_performed(i_p340_a1, participant_dusts_living_room, 15, 32523074).
raw_performed(i_p340_a1, participant_dusts_living_room, 16, 32524038).
raw_performed(i_p340_a1, participant_dusts_dining_room, 17, 32524095).
raw_performed(i_p340_a1, participant_dusts_dining_room, 18, 32527000).
raw_performed(i_p340_a1, participant_dusts_dining_room, 19, 32528084).
raw_performed(i_p340_a1, participant_dusts_dining_room, 20, 32538006).
raw_performed(i_p340_a1, participant_dusts_dining_room, 21, 32546001).
raw_performed(i_p340_a1, participant_dusts_dining_room, 22, 32546061).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 23, 32550018).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 24, 32550018).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 25, 32551088).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 26, 32551088).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 27, 32553022).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 28, 32553022).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 29, 32554039).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 30, 32554039).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 31, 32559044).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 32, 32559044).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 33, 32560002).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 34, 32560002).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 35, 32562058).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 36, 32562058).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 37, 32567078).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 38, 32567078).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 39, 32577036).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 40, 32577036).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 41, 32581075).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 42, 32581075).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 43, 32584062).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 44, 32584062).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 45, 32597047).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 46, 32597047).
raw_performed(i_p340_a1, participant_sweeps_kitchen_floor, 47, 32600082).
raw_performed(i_p340_a1, participant_uses_dust_pan_and_brush, 48, 32600082).
raw_performed(i_p340_a1, participant_returns_broom_to_supply_closet, 49, 32604039).
raw_performed(i_p340_a1, participant_returns_duster_to_supply_closet, 50, 32608094).
raw_performed(i_p340_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 51, 32613003).

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

