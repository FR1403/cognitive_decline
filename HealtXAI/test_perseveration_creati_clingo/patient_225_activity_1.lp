% ======================================================================
% Paziente 225
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

instance(i_p225_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p225_a1, participant_retrieves_broom_from_supply_closet, 1, 53595729).
raw_performed(i_p225_a1, participant_retrieves_duster_from_supply_closet, 2, 53595729).
raw_performed(i_p225_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 53595729).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 4, 53616805).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 5, 53616805).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 6, 53617389).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 7, 53617389).
raw_performed(i_p225_a1, participant_retrieves_duster_from_supply_closet, 8, 53633425).
raw_performed(i_p225_a1, participant_retrieves_dust_pan_and_brush_from_closet, 9, 53633425).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 10, 53639203).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 11, 53639203).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 12, 53647188).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 13, 53647188).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 14, 53650682).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 15, 53650682).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 16, 53654417).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 17, 53654417).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 18, 53671062).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 19, 53671062).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 20, 53686790).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 21, 53686790).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 22, 53691138).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 23, 53691138).
raw_performed(i_p225_a1, participant_sweeps_kitchen_floor, 24, 53695457).
raw_performed(i_p225_a1, participant_uses_dust_pan_and_brush, 25, 53695457).
raw_performed(i_p225_a1, participant_returns_broom_to_supply_closet, 26, 53701531).
raw_performed(i_p225_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 27, 53701531).
raw_performed(i_p225_a1, participant_dusts_dining_room, 28, 53725395).
raw_performed(i_p225_a1, participant_dusts_dining_room, 29, 53727732).
raw_performed(i_p225_a1, participant_dusts_dining_room, 30, 53737373).
raw_performed(i_p225_a1, participant_dusts_dining_room, 31, 53744563).
raw_performed(i_p225_a1, participant_dusts_dining_room, 32, 53751616).
raw_performed(i_p225_a1, participant_dusts_dining_room, 33, 53755621).
raw_performed(i_p225_a1, participant_dusts_dining_room, 34, 53755645).
raw_performed(i_p225_a1, participant_dusts_dining_room, 35, 53759815).
raw_performed(i_p225_a1, participant_dusts_dining_room, 36, 53763157).
raw_performed(i_p225_a1, participant_dusts_dining_room, 37, 53774191).
raw_performed(i_p225_a1, participant_dusts_dining_room, 38, 53795093).
raw_performed(i_p225_a1, participant_dusts_dining_room, 39, 53803399).
raw_performed(i_p225_a1, participant_dusts_dining_room, 40, 53806271).
raw_performed(i_p225_a1, participant_dusts_dining_room, 41, 53807165).
raw_performed(i_p225_a1, participant_dusts_dining_room, 42, 53814263).
raw_performed(i_p225_a1, participant_dusts_living_room, 43, 53819011).
raw_performed(i_p225_a1, participant_dusts_living_room, 44, 53819658).
raw_performed(i_p225_a1, participant_dusts_living_room, 45, 53821750).
raw_performed(i_p225_a1, participant_dusts_living_room, 46, 53840837).
raw_performed(i_p225_a1, participant_dusts_living_room, 47, 53842291).
raw_performed(i_p225_a1, participant_dusts_living_room, 48, 53848365).
raw_performed(i_p225_a1, participant_dusts_living_room, 49, 53857499).
raw_performed(i_p225_a1, participant_dusts_living_room, 50, 53858386).
raw_performed(i_p225_a1, participant_dusts_living_room, 51, 53861863).
raw_performed(i_p225_a1, participant_dusts_living_room, 52, 53861886).
raw_performed(i_p225_a1, participant_dusts_living_room, 53, 53887731).
raw_performed(i_p225_a1, participant_dusts_living_room, 54, 53902710).
raw_performed(i_p225_a1, participant_dusts_living_room, 55, 53911867).
raw_performed(i_p225_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 56, 53924018).

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

