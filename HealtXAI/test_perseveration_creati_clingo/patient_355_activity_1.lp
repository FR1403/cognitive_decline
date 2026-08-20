% ======================================================================
% Paziente 355
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

instance(i_p355_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p355_a1, participant_retrieves_broom_from_supply_closet, 1, 48826442).
raw_performed(i_p355_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 48829591).
raw_performed(i_p355_a1, participant_retrieves_duster_from_supply_closet, 3, 48829792).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 4, 48845110).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 5, 48851906).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 6, 48854887).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 7, 48859916).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 8, 48862936).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 9, 48868357).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 10, 48872470).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 11, 48874689).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 12, 48877929).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 13, 48878079).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 14, 48879953).
raw_performed(i_p355_a1, participant_sweeps_kitchen_floor, 15, 48885556).
raw_performed(i_p355_a1, participant_dusts_dining_room, 16, 48889995).
raw_performed(i_p355_a1, participant_dusts_dining_room, 17, 48892972).
raw_performed(i_p355_a1, participant_dusts_dining_room, 18, 48898460).
raw_performed(i_p355_a1, participant_dusts_living_room, 19, 48901887).
raw_performed(i_p355_a1, participant_dusts_living_room, 20, 48904673).
raw_performed(i_p355_a1, participant_dusts_living_room, 21, 48910916).
raw_performed(i_p355_a1, participant_dusts_living_room, 22, 48917029).
raw_performed(i_p355_a1, participant_dusts_living_room, 23, 48920774).
raw_performed(i_p355_a1, participant_dusts_living_room, 24, 48925191).
raw_performed(i_p355_a1, participant_dusts_dining_room, 25, 48928835).
raw_performed(i_p355_a1, participant_dusts_living_room, 26, 48930227).
raw_performed(i_p355_a1, participant_dusts_living_room, 27, 48932582).
raw_performed(i_p355_a1, participant_dusts_living_room, 28, 48935040).
raw_performed(i_p355_a1, participant_dusts_living_room, 29, 48944233).
raw_performed(i_p355_a1, participant_dusts_living_room, 30, 48946351).
raw_performed(i_p355_a1, participant_dusts_living_room, 31, 48946650).
raw_performed(i_p355_a1, participant_returns_duster_to_supply_closet, 32, 48966391).
raw_performed(i_p355_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 33, 48990851).
raw_performed(i_p355_a1, participant_returns_broom_to_supply_closet, 34, 49002401).

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

