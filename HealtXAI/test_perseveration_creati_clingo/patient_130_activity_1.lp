% ======================================================================
% Paziente 130
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

instance(i_p130_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p130_a1, participant_retrieves_broom_from_supply_closet, 1, 51019027).
raw_performed(i_p130_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 51019027).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 3, 51034012).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 4, 51034012).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 5, 51038007).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 6, 51038007).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 7, 51039036).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 8, 51039036).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 9, 51043095).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 10, 51043095).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 11, 51052005).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 12, 51052005).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 13, 51057053).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 14, 51057053).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 15, 51060004).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 16, 51060004).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 17, 51072007).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 18, 51072007).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 19, 51074091).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 20, 51074091).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 21, 51085043).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 22, 51085043).
raw_performed(i_p130_a1, participant_sweeps_kitchen_floor, 23, 51090003).
raw_performed(i_p130_a1, participant_uses_dust_pan_and_brush, 24, 51090003).
raw_performed(i_p130_a1, participant_returns_broom_to_supply_closet, 25, 51097050).
raw_performed(i_p130_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 26, 51097050).
raw_performed(i_p130_a1, participant_retrieves_duster_from_supply_closet, 27, 51107043).
raw_performed(i_p130_a1, participant_dusts_dining_room, 28, 51143000).
raw_performed(i_p130_a1, participant_dusts_dining_room, 29, 51147002).
raw_performed(i_p130_a1, participant_dusts_dining_room, 30, 51153050).
raw_performed(i_p130_a1, participant_dusts_dining_room, 31, 51156043).
raw_performed(i_p130_a1, participant_dusts_dining_room, 32, 51161004).
raw_performed(i_p130_a1, participant_dusts_dining_room, 33, 51163032).
raw_performed(i_p130_a1, participant_dusts_dining_room, 34, 51165060).
raw_performed(i_p130_a1, participant_dusts_dining_room, 35, 51169077).
raw_performed(i_p130_a1, participant_dusts_dining_room, 36, 51172006).
raw_performed(i_p130_a1, participant_dusts_dining_room, 37, 51172066).
raw_performed(i_p130_a1, participant_dusts_dining_room, 38, 51204083).
raw_performed(i_p130_a1, participant_dusts_dining_room, 39, 51210003).
raw_performed(i_p130_a1, participant_dusts_dining_room, 40, 51218051).
raw_performed(i_p130_a1, participant_dusts_dining_room, 41, 51222095).
raw_performed(i_p130_a1, participant_dusts_dining_room, 42, 51238037).
raw_performed(i_p130_a1, participant_dusts_dining_room, 43, 51241007).
raw_performed(i_p130_a1, participant_dusts_dining_room, 44, 51246010).
raw_performed(i_p130_a1, participant_dusts_dining_room, 45, 51246074).
raw_performed(i_p130_a1, participant_dusts_dining_room, 46, 51260065).
raw_performed(i_p130_a1, participant_dusts_dining_room, 47, 51268043).
raw_performed(i_p130_a1, participant_dusts_dining_room, 48, 51270072).
raw_performed(i_p130_a1, participant_dusts_dining_room, 49, 51284047).
raw_performed(i_p130_a1, participant_dusts_dining_room, 50, 51285026).
raw_performed(i_p130_a1, participant_dusts_dining_room, 51, 51290017).
raw_performed(i_p130_a1, participant_dusts_living_room, 52, 51301054).
raw_performed(i_p130_a1, participant_dusts_dining_room, 53, 51302017).
raw_performed(i_p130_a1, participant_dusts_living_room, 54, 51303022).
raw_performed(i_p130_a1, participant_dusts_living_room, 55, 51331077).
raw_performed(i_p130_a1, participant_dusts_living_room, 56, 51344008).
raw_performed(i_p130_a1, participant_dusts_living_room, 57, 51372053).
raw_performed(i_p130_a1, participant_dusts_living_room, 58, 51380001).
raw_performed(i_p130_a1, participant_dusts_living_room, 59, 51385089).
raw_performed(i_p130_a1, participant_dusts_living_room, 60, 51385091).
raw_performed(i_p130_a1, participant_dusts_living_room, 61, 51387036).
raw_performed(i_p130_a1, participant_dusts_living_room, 62, 51391009).
raw_performed(i_p130_a1, participant_dusts_living_room, 63, 51396000).
raw_performed(i_p130_a1, participant_dusts_living_room, 64, 51402004).
raw_performed(i_p130_a1, participant_dusts_living_room, 65, 51408044).
raw_performed(i_p130_a1, participant_dusts_living_room, 66, 51409009).
raw_performed(i_p130_a1, participant_dusts_living_room, 67, 51414050).
raw_performed(i_p130_a1, participant_dusts_living_room, 68, 51424003).
raw_performed(i_p130_a1, participant_dusts_living_room, 69, 51430030).
raw_performed(i_p130_a1, participant_dusts_dining_room, 70, 51430094).
raw_performed(i_p130_a1, participant_dusts_dining_room, 71, 51433008).
raw_performed(i_p130_a1, participant_dusts_dining_room, 72, 51433086).
raw_performed(i_p130_a1, participant_returns_duster_to_supply_closet, 73, 51439074).

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

