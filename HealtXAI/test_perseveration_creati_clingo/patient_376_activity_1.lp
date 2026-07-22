% ======================================================================
% Paziente 376
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

action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 9166).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 63001).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 38902).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321564).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 142634).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504567).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 206023).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p376_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p376_a1, participant_retrieves_broom_from_supply_closet, 1, 50586762).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 2, 50619864).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 3, 50622351).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 4, 50637486).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 5, 50649053).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 6, 50659904).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 7, 50669260).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 8, 50669636).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 9, 50675464).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 10, 50676658).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 11, 50684067).
raw_performed(i_p376_a1, participant_sweeps_kitchen_floor, 12, 50693140).
raw_performed(i_p376_a1, participant_retrieves_dust_pan_and_brush_from_closet, 13, 50701587).
raw_performed(i_p376_a1, participant_returns_broom_to_supply_closet, 14, 50701587).
raw_performed(i_p376_a1, participant_uses_dust_pan_and_brush, 15, 50708070).
raw_performed(i_p376_a1, participant_retrieves_duster_from_supply_closet, 16, 50717607).
raw_performed(i_p376_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 17, 50717691).
raw_performed(i_p376_a1, participant_dusts_dining_room, 18, 50726821).
raw_performed(i_p376_a1, participant_dusts_dining_room, 19, 50736765).
raw_performed(i_p376_a1, participant_dusts_dining_room, 20, 50739422).
raw_performed(i_p376_a1, participant_dusts_dining_room, 21, 50744345).
raw_performed(i_p376_a1, participant_dusts_dining_room, 22, 50751409).
raw_performed(i_p376_a1, participant_dusts_dining_room, 23, 50760541).
raw_performed(i_p376_a1, participant_dusts_dining_room, 24, 50767251).
raw_performed(i_p376_a1, participant_dusts_dining_room, 25, 50776054).
raw_performed(i_p376_a1, participant_dusts_living_room, 26, 50778628).
raw_performed(i_p376_a1, participant_dusts_living_room, 27, 50779849).
raw_performed(i_p376_a1, participant_dusts_living_room, 28, 50780685).
raw_performed(i_p376_a1, participant_dusts_living_room, 29, 50789542).
raw_performed(i_p376_a1, participant_dusts_living_room, 30, 50790898).
raw_performed(i_p376_a1, participant_dusts_living_room, 31, 50801669).
raw_performed(i_p376_a1, participant_dusts_living_room, 32, 50805076).
raw_performed(i_p376_a1, participant_dusts_living_room, 33, 50824455).
raw_performed(i_p376_a1, participant_dusts_living_room, 34, 50824835).
raw_performed(i_p376_a1, participant_returns_duster_to_supply_closet, 35, 50837062).

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

