% ======================================================================
% Paziente 223
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

instance(i_p223_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p223_a1, participant_retrieves_broom_from_supply_closet, 1, 55191031).
raw_performed(i_p223_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 55191031).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 3, 55196093).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 4, 55196093).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 5, 55213039).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 6, 55213039).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 7, 55226064).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 8, 55226064).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 9, 55254068).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 10, 55254068).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 11, 55268036).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 12, 55268036).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 13, 55277061).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 14, 55277061).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 15, 55282061).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 16, 55282061).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 17, 55287052).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 18, 55287052).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 19, 55292077).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 20, 55292077).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 21, 55299071).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 22, 55299071).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 23, 55300054).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 24, 55300054).
raw_performed(i_p223_a1, participant_sweeps_kitchen_floor, 25, 55301091).
raw_performed(i_p223_a1, participant_uses_dust_pan_and_brush, 26, 55301091).
raw_performed(i_p223_a1, participant_returns_broom_to_supply_closet, 27, 55303036).
raw_performed(i_p223_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 28, 55303036).

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

