% ======================================================================
% Paziente 164
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

instance(i_p164_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p164_a1, participant_retrieves_broom_from_supply_closet, 1, 33642023).
raw_performed(i_p164_a1, participant_retrieves_duster_from_supply_closet, 2, 33642023).
raw_performed(i_p164_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 33642023).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 4, 33654050).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 5, 33654050).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 6, 33656075).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 7, 33656075).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 8, 33662042).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 9, 33662042).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 10, 33663004).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 11, 33663004).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 12, 33667037).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 13, 33667037).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 14, 33670003).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 15, 33670003).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 16, 33673007).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 17, 33673007).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 18, 33676036).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 19, 33676036).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 20, 33681017).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 21, 33681017).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 22, 33684089).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 23, 33684089).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 24, 33702000).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 25, 33702000).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 26, 33726057).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 27, 33726057).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 28, 33745059).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 29, 33745059).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 30, 33750015).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 31, 33750015).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 32, 33763000).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 33, 33763000).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 34, 33763075).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 35, 33763075).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 36, 33773002).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 37, 33773002).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 38, 33773085).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 39, 33773085).
raw_performed(i_p164_a1, participant_sweeps_kitchen_floor, 40, 33782087).
raw_performed(i_p164_a1, participant_uses_dust_pan_and_brush, 41, 33782087).
raw_performed(i_p164_a1, participant_returns_broom_to_supply_closet, 42, 33788011).
raw_performed(i_p164_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 43, 33788011).
raw_performed(i_p164_a1, participant_dusts_dining_room, 44, 33798080).
raw_performed(i_p164_a1, participant_dusts_dining_room, 45, 33804029).
raw_performed(i_p164_a1, participant_dusts_dining_room, 46, 33821006).
raw_performed(i_p164_a1, participant_dusts_dining_room, 47, 33825065).
raw_performed(i_p164_a1, participant_dusts_dining_room, 48, 33826029).
raw_performed(i_p164_a1, participant_dusts_dining_room, 49, 33831031).
raw_performed(i_p164_a1, participant_dusts_dining_room, 50, 33842094).
raw_performed(i_p164_a1, participant_dusts_dining_room, 51, 33851093).
raw_performed(i_p164_a1, participant_dusts_dining_room, 52, 33861034).
raw_performed(i_p164_a1, participant_dusts_dining_room, 53, 33862038).
raw_performed(i_p164_a1, participant_dusts_dining_room, 54, 33864084).
raw_performed(i_p164_a1, participant_dusts_living_room, 55, 33867095).
raw_performed(i_p164_a1, participant_dusts_living_room, 56, 33870087).
raw_performed(i_p164_a1, participant_dusts_living_room, 57, 33881026).
raw_performed(i_p164_a1, participant_dusts_living_room, 58, 33886002).
raw_performed(i_p164_a1, participant_dusts_living_room, 59, 33894018).
raw_performed(i_p164_a1, participant_dusts_living_room, 60, 33904002).
raw_performed(i_p164_a1, participant_dusts_living_room, 61, 33911025).
raw_performed(i_p164_a1, participant_dusts_living_room, 62, 33912050).
raw_performed(i_p164_a1, participant_dusts_living_room, 63, 33934089).
raw_performed(i_p164_a1, participant_dusts_living_room, 64, 33953056).
raw_performed(i_p164_a1, participant_dusts_living_room, 65, 33969018).
raw_performed(i_p164_a1, participant_dusts_living_room, 66, 33978042).
raw_performed(i_p164_a1, participant_dusts_living_room, 67, 33978045).
raw_performed(i_p164_a1, participant_dusts_dining_room, 68, 33979046).
raw_performed(i_p164_a1, participant_returns_duster_to_supply_closet, 69, 33985015).

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

