% ======================================================================
% Paziente 263
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

instance(i_p263_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p263_a1, participant_retrieves_broom_from_supply_closet, 1, 34578006).
raw_performed(i_p263_a1, participant_retrieves_duster_from_supply_closet, 2, 34578006).
raw_performed(i_p263_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 34578006).
raw_performed(i_p263_a1, participant_sweeps_kitchen_floor, 4, 34588010).
raw_performed(i_p263_a1, participant_uses_dust_pan_and_brush, 5, 34588010).
raw_performed(i_p263_a1, participant_sweeps_kitchen_floor, 6, 34591046).
raw_performed(i_p263_a1, participant_uses_dust_pan_and_brush, 7, 34591046).
raw_performed(i_p263_a1, participant_sweeps_kitchen_floor, 8, 34596091).
raw_performed(i_p263_a1, participant_uses_dust_pan_and_brush, 9, 34596091).
raw_performed(i_p263_a1, participant_sweeps_kitchen_floor, 10, 34600085).
raw_performed(i_p263_a1, participant_uses_dust_pan_and_brush, 11, 34600085).
raw_performed(i_p263_a1, participant_sweeps_kitchen_floor, 12, 34613099).
raw_performed(i_p263_a1, participant_uses_dust_pan_and_brush, 13, 34613099).
raw_performed(i_p263_a1, participant_sweeps_kitchen_floor, 14, 34639066).
raw_performed(i_p263_a1, participant_uses_dust_pan_and_brush, 15, 34639066).
raw_performed(i_p263_a1, participant_sweeps_kitchen_floor, 16, 34662043).
raw_performed(i_p263_a1, participant_uses_dust_pan_and_brush, 17, 34662043).
raw_performed(i_p263_a1, participant_sweeps_kitchen_floor, 18, 34674053).
raw_performed(i_p263_a1, participant_uses_dust_pan_and_brush, 19, 34674053).
raw_performed(i_p263_a1, participant_returns_broom_to_supply_closet, 20, 34682051).
raw_performed(i_p263_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 21, 34699083).
raw_performed(i_p263_a1, participant_dusts_dining_room, 22, 34728089).
raw_performed(i_p263_a1, participant_dusts_dining_room, 23, 34731035).
raw_performed(i_p263_a1, participant_dusts_dining_room, 24, 34745019).
raw_performed(i_p263_a1, participant_dusts_living_room, 25, 34745083).
raw_performed(i_p263_a1, participant_dusts_living_room, 26, 34747028).
raw_performed(i_p263_a1, participant_dusts_living_room, 27, 34755020).
raw_performed(i_p263_a1, participant_dusts_living_room, 28, 34760000).
raw_performed(i_p263_a1, participant_dusts_living_room, 29, 34763090).
raw_performed(i_p263_a1, participant_dusts_living_room, 30, 34764096).
raw_performed(i_p263_a1, participant_dusts_living_room, 31, 34773025).
raw_performed(i_p263_a1, participant_dusts_living_room, 32, 34774026).
raw_performed(i_p263_a1, participant_dusts_living_room, 33, 34774029).
raw_performed(i_p263_a1, participant_returns_duster_to_supply_closet, 34, 34780075).

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

