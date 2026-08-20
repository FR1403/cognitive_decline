% ======================================================================
% Paziente 262
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

instance(i_p262_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p262_a1, participant_retrieves_broom_from_supply_closet, 1, 32967181).
raw_performed(i_p262_a1, participant_sweeps_kitchen_floor, 2, 32976040).
raw_performed(i_p262_a1, participant_sweeps_kitchen_floor, 3, 32980377).
raw_performed(i_p262_a1, participant_sweeps_kitchen_floor, 4, 32988009).
raw_performed(i_p262_a1, participant_sweeps_kitchen_floor, 5, 33000936).
raw_performed(i_p262_a1, participant_sweeps_kitchen_floor, 6, 33002775).
raw_performed(i_p262_a1, participant_sweeps_kitchen_floor, 7, 33017917).
raw_performed(i_p262_a1, participant_returns_broom_to_supply_closet, 8, 33018523).
raw_performed(i_p262_a1, participant_retrieves_dust_pan_and_brush_from_closet, 9, 33029549).
raw_performed(i_p262_a1, participant_uses_dust_pan_and_brush, 10, 33030957).
raw_performed(i_p262_a1, participant_uses_dust_pan_and_brush, 11, 33031846).
raw_performed(i_p262_a1, participant_uses_dust_pan_and_brush, 12, 33041241).
raw_performed(i_p262_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 13, 33052008).
raw_performed(i_p262_a1, participant_retrieves_duster_from_supply_closet, 14, 33054035).
raw_performed(i_p262_a1, participant_dusts_dining_room, 15, 33061137).
raw_performed(i_p262_a1, participant_dusts_dining_room, 16, 33062340).
raw_performed(i_p262_a1, participant_dusts_dining_room, 17, 33071067).
raw_performed(i_p262_a1, participant_dusts_dining_room, 18, 33071441).
raw_performed(i_p262_a1, participant_dusts_dining_room, 19, 33074386).
raw_performed(i_p262_a1, participant_dusts_dining_room, 20, 33084013).
raw_performed(i_p262_a1, participant_dusts_dining_room, 21, 33087956).
raw_performed(i_p262_a1, participant_dusts_dining_room, 22, 33094814).
raw_performed(i_p262_a1, participant_dusts_dining_room, 23, 33095648).
raw_performed(i_p262_a1, participant_dusts_dining_room, 24, 33097692).
raw_performed(i_p262_a1, participant_dusts_living_room, 25, 33105274).
raw_performed(i_p262_a1, participant_dusts_living_room, 26, 33106711).
raw_performed(i_p262_a1, participant_dusts_living_room, 27, 33107086).
raw_performed(i_p262_a1, participant_dusts_living_room, 28, 33113786).
raw_performed(i_p262_a1, participant_dusts_living_room, 29, 33118217).
raw_performed(i_p262_a1, participant_dusts_living_room, 30, 33140675).
raw_performed(i_p262_a1, participant_dusts_living_room, 31, 33149144).
raw_performed(i_p262_a1, participant_dusts_living_room, 32, 33158057).
raw_performed(i_p262_a1, participant_dusts_living_room, 33, 33158432).
raw_performed(i_p262_a1, participant_returns_duster_to_supply_closet, 34, 33164019).

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

