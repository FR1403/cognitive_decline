% ======================================================================
% Paziente 146
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

instance(i_p146_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p146_a1, participant_retrieves_broom_from_supply_closet, 1, 49636053).
raw_performed(i_p146_a1, participant_sweeps_kitchen_floor, 2, 49640071).
raw_performed(i_p146_a1, participant_sweeps_kitchen_floor, 3, 49641007).
raw_performed(i_p146_a1, participant_sweeps_kitchen_floor, 4, 49643089).
raw_performed(i_p146_a1, participant_sweeps_kitchen_floor, 5, 49655054).
raw_performed(i_p146_a1, participant_sweeps_kitchen_floor, 6, 49664003).
raw_performed(i_p146_a1, participant_retrieves_dust_pan_and_brush_from_closet, 7, 49674077).
raw_performed(i_p146_a1, participant_uses_dust_pan_and_brush, 8, 49687058).
raw_performed(i_p146_a1, participant_uses_dust_pan_and_brush, 9, 49692036).
raw_performed(i_p146_a1, participant_uses_dust_pan_and_brush, 10, 49695001).
raw_performed(i_p146_a1, participant_retrieves_duster_from_supply_closet, 11, 49704078).
raw_performed(i_p146_a1, participant_returns_broom_to_supply_closet, 12, 49704078).
raw_performed(i_p146_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 13, 49704078).
raw_performed(i_p146_a1, participant_dusts_living_room, 14, 49739093).
raw_performed(i_p146_a1, participant_dusts_living_room, 15, 49741083).
raw_performed(i_p146_a1, participant_dusts_living_room, 16, 49742041).
raw_performed(i_p146_a1, participant_dusts_living_room, 17, 49748029).
raw_performed(i_p146_a1, participant_dusts_living_room, 18, 49770064).
raw_performed(i_p146_a1, participant_dusts_living_room, 19, 49791028).
raw_performed(i_p146_a1, participant_dusts_living_room, 20, 49799083).
raw_performed(i_p146_a1, participant_dusts_living_room, 21, 49805024).
raw_performed(i_p146_a1, participant_dusts_living_room, 22, 49806030).
raw_performed(i_p146_a1, participant_dusts_living_room, 23, 49810072).
raw_performed(i_p146_a1, participant_dusts_living_room, 24, 49814046).
raw_performed(i_p146_a1, participant_dusts_living_room, 25, 49815050).
raw_performed(i_p146_a1, participant_dusts_dining_room, 26, 49816054).
raw_performed(i_p146_a1, participant_dusts_dining_room, 27, 49819049).
raw_performed(i_p146_a1, participant_dusts_dining_room, 28, 49820072).
raw_performed(i_p146_a1, participant_dusts_dining_room, 29, 49824039).
raw_performed(i_p146_a1, participant_dusts_dining_room, 30, 49828001).
raw_performed(i_p146_a1, participant_dusts_dining_room, 31, 49833076).
raw_performed(i_p146_a1, participant_dusts_dining_room, 32, 49838061).
raw_performed(i_p146_a1, participant_dusts_dining_room, 33, 49843065).
raw_performed(i_p146_a1, participant_dusts_dining_room, 34, 49849048).
raw_performed(i_p146_a1, participant_returns_duster_to_supply_closet, 35, 49855025).

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

