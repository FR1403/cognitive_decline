% ======================================================================
% Paziente 232
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

instance(i_p232_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p232_a1, participant_retrieves_broom_from_supply_closet, 1, 33288056).
raw_performed(i_p232_a1, participant_sweeps_kitchen_floor, 2, 33309000).
raw_performed(i_p232_a1, participant_sweeps_kitchen_floor, 3, 33311055).
raw_performed(i_p232_a1, participant_sweeps_kitchen_floor, 4, 33320039).
raw_performed(i_p232_a1, participant_sweeps_kitchen_floor, 5, 33334000).
raw_performed(i_p232_a1, participant_sweeps_kitchen_floor, 6, 33335085).
raw_performed(i_p232_a1, participant_sweeps_kitchen_floor, 7, 33342051).
raw_performed(i_p232_a1, participant_sweeps_kitchen_floor, 8, 33349019).
raw_performed(i_p232_a1, participant_sweeps_kitchen_floor, 9, 33349083).
raw_performed(i_p232_a1, participant_retrieves_dust_pan_and_brush_from_closet, 10, 33353031).
raw_performed(i_p232_a1, participant_returns_broom_to_supply_closet, 11, 33353031).
raw_performed(i_p232_a1, participant_uses_dust_pan_and_brush, 12, 33362090).
raw_performed(i_p232_a1, participant_uses_dust_pan_and_brush, 13, 33386034).
raw_performed(i_p232_a1, participant_uses_dust_pan_and_brush, 14, 33391022).
raw_performed(i_p232_a1, participant_retrieves_duster_from_supply_closet, 15, 33397001).
raw_performed(i_p232_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 16, 33397001).
raw_performed(i_p232_a1, participant_dusts_dining_room, 17, 33425011).
raw_performed(i_p232_a1, participant_dusts_dining_room, 18, 33426093).
raw_performed(i_p232_a1, participant_dusts_dining_room, 19, 33434093).
raw_performed(i_p232_a1, participant_dusts_dining_room, 20, 33443074).
raw_performed(i_p232_a1, participant_dusts_dining_room, 21, 33445064).
raw_performed(i_p232_a1, participant_dusts_dining_room, 22, 33448058).
raw_performed(i_p232_a1, participant_dusts_dining_room, 23, 33463015).
raw_performed(i_p232_a1, participant_dusts_dining_room, 24, 33465004).
raw_performed(i_p232_a1, participant_dusts_living_room, 25, 33467015).
raw_performed(i_p232_a1, participant_dusts_living_room, 26, 33468038).
raw_performed(i_p232_a1, participant_dusts_living_room, 27, 33470050).
raw_performed(i_p232_a1, participant_dusts_living_room, 28, 33479049).
raw_performed(i_p232_a1, participant_dusts_living_room, 29, 33481021).
raw_performed(i_p232_a1, participant_dusts_living_room, 30, 33481084).
raw_performed(i_p232_a1, participant_dusts_living_room, 31, 33499040).
raw_performed(i_p232_a1, participant_dusts_living_room, 32, 33520047).
raw_performed(i_p232_a1, participant_dusts_living_room, 33, 33527084).
raw_performed(i_p232_a1, participant_dusts_living_room, 34, 33534072).
raw_performed(i_p232_a1, participant_dusts_living_room, 35, 33538009).
raw_performed(i_p232_a1, participant_dusts_living_room, 36, 33539075).
raw_performed(i_p232_a1, participant_dusts_living_room, 37, 33539077).
raw_performed(i_p232_a1, participant_returns_duster_to_supply_closet, 38, 33548034).

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

