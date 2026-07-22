% ======================================================================
% Paziente 367
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

instance(i_p367_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p367_a1, participant_retrieves_broom_from_supply_closet, 1, 33793053).
raw_performed(i_p367_a1, participant_retrieves_duster_from_supply_closet, 2, 33793053).
raw_performed(i_p367_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 33793053).
raw_performed(i_p367_a1, participant_sweeps_kitchen_floor, 4, 33811908).
raw_performed(i_p367_a1, participant_uses_dust_pan_and_brush, 5, 33811908).
raw_performed(i_p367_a1, participant_sweeps_kitchen_floor, 6, 33813262).
raw_performed(i_p367_a1, participant_uses_dust_pan_and_brush, 7, 33813262).
raw_performed(i_p367_a1, participant_sweeps_kitchen_floor, 8, 33820281).
raw_performed(i_p367_a1, participant_uses_dust_pan_and_brush, 9, 33820281).
raw_performed(i_p367_a1, participant_sweeps_kitchen_floor, 10, 33833889).
raw_performed(i_p367_a1, participant_uses_dust_pan_and_brush, 11, 33833889).
raw_performed(i_p367_a1, participant_returns_broom_to_supply_closet, 12, 33856676).
raw_performed(i_p367_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 13, 33856676).
raw_performed(i_p367_a1, participant_dusts_living_room, 14, 33878496).
raw_performed(i_p367_a1, participant_dusts_living_room, 15, 33890191).
raw_performed(i_p367_a1, participant_dusts_living_room, 16, 33900740).
raw_performed(i_p367_a1, participant_dusts_living_room, 17, 33910923).
raw_performed(i_p367_a1, participant_dusts_living_room, 18, 33915566).
raw_performed(i_p367_a1, participant_dusts_living_room, 19, 33921431).
raw_performed(i_p367_a1, participant_dusts_living_room, 20, 33924228).
raw_performed(i_p367_a1, participant_dusts_living_room, 21, 33925932).
raw_performed(i_p367_a1, participant_dusts_living_room, 22, 33934605).
raw_performed(i_p367_a1, participant_dusts_living_room, 23, 33934978).
raw_performed(i_p367_a1, participant_dusts_living_room, 24, 33939234).
raw_performed(i_p367_a1, participant_dusts_living_room, 25, 33940109).
raw_performed(i_p367_a1, participant_dusts_dining_room, 26, 33944219).
raw_performed(i_p367_a1, participant_dusts_dining_room, 27, 33945429).
raw_performed(i_p367_a1, participant_dusts_dining_room, 28, 33952486).
raw_performed(i_p367_a1, participant_dusts_dining_room, 29, 33956959).
raw_performed(i_p367_a1, participant_dusts_dining_room, 30, 33959938).
raw_performed(i_p367_a1, participant_dusts_living_room, 31, 33965389).
raw_performed(i_p367_a1, participant_dusts_dining_room, 32, 33971950).
raw_performed(i_p367_a1, participant_dusts_dining_room, 33, 33973383).
raw_performed(i_p367_a1, participant_dusts_dining_room, 34, 33985609).
raw_performed(i_p367_a1, participant_returns_duster_to_supply_closet, 35, 33998027).

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

