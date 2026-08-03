% ======================================================================
% Paziente 307
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

instance(i_p307_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p307_a1, participant_retrieves_broom_from_supply_closet, 1, 34436053).
raw_performed(i_p307_a1, participant_retrieves_duster_from_supply_closet, 2, 34436053).
raw_performed(i_p307_a1, participant_dusts_living_room, 3, 34565000).
raw_performed(i_p307_a1, participant_dusts_living_room, 4, 34565064).
raw_performed(i_p307_a1, participant_dusts_living_room, 5, 34569076).
raw_performed(i_p307_a1, participant_dusts_living_room, 6, 34600004).
raw_performed(i_p307_a1, participant_dusts_living_room, 7, 34605010).
raw_performed(i_p307_a1, participant_dusts_living_room, 8, 34605013).
raw_performed(i_p307_a1, participant_dusts_living_room, 9, 34609006).
raw_performed(i_p307_a1, participant_dusts_living_room, 10, 34616085).
raw_performed(i_p307_a1, participant_dusts_living_room, 11, 34617069).
raw_performed(i_p307_a1, participant_dusts_living_room, 12, 34621049).
raw_performed(i_p307_a1, participant_dusts_living_room, 13, 34626015).
raw_performed(i_p307_a1, participant_dusts_living_room, 14, 34626020).
raw_performed(i_p307_a1, participant_dusts_dining_room, 15, 34628089).
raw_performed(i_p307_a1, participant_dusts_dining_room, 16, 34630080).
raw_performed(i_p307_a1, participant_dusts_dining_room, 17, 34633006).
raw_performed(i_p307_a1, participant_dusts_dining_room, 18, 34640058).
raw_performed(i_p307_a1, participant_dusts_dining_room, 19, 34657029).
raw_performed(i_p307_a1, participant_dusts_dining_room, 20, 34663021).
raw_performed(i_p307_a1, participant_dusts_dining_room, 21, 34664068).
raw_performed(i_p307_a1, participant_dusts_dining_room, 22, 34672095).
raw_performed(i_p307_a1, participant_retrieves_dust_pan_and_brush_from_closet, 23, 34688072).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 24, 34703087).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 25, 34703087).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 26, 34704090).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 27, 34704090).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 28, 34707078).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 29, 34707078).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 30, 34722047).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 31, 34722047).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 32, 34735074).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 33, 34735074).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 34, 34739081).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 35, 34739081).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 36, 34763021).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 37, 34763021).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 38, 34774003).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 39, 34774003).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 40, 34774062).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 41, 34774062).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 42, 34781081).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 43, 34781081).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 44, 34785028).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 45, 34785028).
raw_performed(i_p307_a1, participant_sweeps_kitchen_floor, 46, 34802031).
raw_performed(i_p307_a1, participant_uses_dust_pan_and_brush, 47, 34802031).
raw_performed(i_p307_a1, participant_returns_broom_to_supply_closet, 48, 34810038).
raw_performed(i_p307_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 49, 34840047).

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

