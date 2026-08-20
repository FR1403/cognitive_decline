% ======================================================================
% Paziente 352
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

instance(i_p352_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p352_a1, participant_retrieves_broom_from_supply_closet, 1, 34066075).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 2, 34087031).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 3, 34093099).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 4, 34098039).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 5, 34102089).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 6, 34108005).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 7, 34113002).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 8, 34118005).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 9, 34118078).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 10, 34119050).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 11, 34136027).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 12, 34146053).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 13, 34147067).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 14, 34157017).
raw_performed(i_p352_a1, participant_sweeps_kitchen_floor, 15, 34158056).
raw_performed(i_p352_a1, participant_retrieves_dust_pan_and_brush_from_closet, 16, 34159083).
raw_performed(i_p352_a1, participant_returns_broom_to_supply_closet, 17, 34159083).
raw_performed(i_p352_a1, participant_uses_dust_pan_and_brush, 18, 34165077).
raw_performed(i_p352_a1, participant_uses_dust_pan_and_brush, 19, 34168041).
raw_performed(i_p352_a1, participant_uses_dust_pan_and_brush, 20, 34170033).
raw_performed(i_p352_a1, participant_uses_dust_pan_and_brush, 21, 34177057).
raw_performed(i_p352_a1, participant_uses_dust_pan_and_brush, 22, 34178042).
raw_performed(i_p352_a1, participant_uses_dust_pan_and_brush, 23, 34181033).
raw_performed(i_p352_a1, participant_uses_dust_pan_and_brush, 24, 34187019).
raw_performed(i_p352_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 25, 34189098).
raw_performed(i_p352_a1, participant_retrieves_duster_from_supply_closet, 26, 34200009).
raw_performed(i_p352_a1, participant_dusts_dining_room, 27, 34212048).
raw_performed(i_p352_a1, participant_dusts_dining_room, 28, 34213041).
raw_performed(i_p352_a1, participant_dusts_dining_room, 29, 34217002).
raw_performed(i_p352_a1, participant_dusts_dining_room, 30, 34229085).
raw_performed(i_p352_a1, participant_dusts_dining_room, 31, 34236063).
raw_performed(i_p352_a1, participant_dusts_dining_room, 32, 34241078).
raw_performed(i_p352_a1, participant_dusts_dining_room, 33, 34250044).
raw_performed(i_p352_a1, participant_dusts_dining_room, 34, 34259055).
raw_performed(i_p352_a1, participant_dusts_dining_room, 35, 34262019).
raw_performed(i_p352_a1, participant_dusts_dining_room, 36, 34265077).
raw_performed(i_p352_a1, participant_dusts_dining_room, 37, 34269056).
raw_performed(i_p352_a1, participant_dusts_dining_room, 38, 34270009).
raw_performed(i_p352_a1, participant_dusts_dining_room, 39, 34274090).
raw_performed(i_p352_a1, participant_dusts_dining_room, 40, 34277014).
raw_performed(i_p352_a1, participant_dusts_living_room, 41, 34278084).
raw_performed(i_p352_a1, participant_dusts_living_room, 42, 34279012).
raw_performed(i_p352_a1, participant_dusts_living_room, 43, 34284017).
raw_performed(i_p352_a1, participant_dusts_living_room, 44, 34293046).
raw_performed(i_p352_a1, participant_dusts_living_room, 45, 34315079).
raw_performed(i_p352_a1, participant_dusts_living_room, 46, 34321089).
raw_performed(i_p352_a1, participant_dusts_living_room, 47, 34325003).
raw_performed(i_p352_a1, participant_dusts_living_room, 48, 34325058).
raw_performed(i_p352_a1, participant_dusts_living_room, 49, 34328005).
raw_performed(i_p352_a1, participant_dusts_living_room, 50, 34328007).
raw_performed(i_p352_a1, participant_dusts_living_room, 51, 34330007).
raw_performed(i_p352_a1, participant_dusts_living_room, 52, 34340001).
raw_performed(i_p352_a1, participant_dusts_living_room, 53, 34344060).
raw_performed(i_p352_a1, participant_dusts_living_room, 54, 34345073).
raw_performed(i_p352_a1, participant_dusts_living_room, 55, 34346013).
raw_performed(i_p352_a1, participant_dusts_living_room, 56, 34350002).
raw_performed(i_p352_a1, participant_dusts_living_room, 57, 34352088).
raw_performed(i_p352_a1, participant_dusts_living_room, 58, 34358042).
raw_performed(i_p352_a1, participant_dusts_living_room, 59, 34362027).
raw_performed(i_p352_a1, participant_dusts_living_room, 60, 34362061).
raw_performed(i_p352_a1, participant_returns_duster_to_supply_closet, 61, 34369074).

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

