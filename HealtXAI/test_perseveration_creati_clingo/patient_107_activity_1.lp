% ======================================================================
% Paziente 107
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

instance(i_p107_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p107_a1, participant_retrieves_broom_from_supply_closet, 1, 39994623).
raw_performed(i_p107_a1, participant_retrieves_duster_from_supply_closet, 2, 39994623).
raw_performed(i_p107_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 39994623).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 4, 39994698).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 5, 39994698).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 6, 40000765).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 7, 40000765).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 8, 40001354).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 9, 40001354).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 10, 40005207).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 11, 40005207).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 12, 40008641).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 13, 40008641).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 14, 40012786).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 15, 40012786).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 16, 40017062).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 17, 40017062).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 18, 40024052).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 19, 40024052).
raw_performed(i_p107_a1, participant_sweeps_kitchen_floor, 20, 40028308).
raw_performed(i_p107_a1, participant_uses_dust_pan_and_brush, 21, 40028308).
raw_performed(i_p107_a1, participant_dusts_dining_room, 22, 40036812).
raw_performed(i_p107_a1, participant_dusts_dining_room, 23, 40052662).
raw_performed(i_p107_a1, participant_dusts_dining_room, 24, 40053297).
raw_performed(i_p107_a1, participant_dusts_dining_room, 25, 40053919).
raw_performed(i_p107_a1, participant_dusts_living_room, 26, 40057219).
raw_performed(i_p107_a1, participant_dusts_dining_room, 27, 40061740).
raw_performed(i_p107_a1, participant_dusts_living_room, 28, 40062784).
raw_performed(i_p107_a1, participant_dusts_living_room, 29, 40062829).
raw_performed(i_p107_a1, participant_dusts_living_room, 30, 40065195).
raw_performed(i_p107_a1, participant_dusts_living_room, 31, 40067078).
raw_performed(i_p107_a1, participant_dusts_living_room, 32, 40069797).
raw_performed(i_p107_a1, participant_dusts_living_room, 33, 40073526).
raw_performed(i_p107_a1, participant_dusts_living_room, 34, 40073550).
raw_performed(i_p107_a1, participant_dusts_living_room, 35, 40084351).
raw_performed(i_p107_a1, participant_dusts_living_room, 36, 40085587).
raw_performed(i_p107_a1, participant_dusts_living_room, 37, 40085611).
raw_performed(i_p107_a1, participant_dusts_dining_room, 38, 40086448).
raw_performed(i_p107_a1, participant_returns_broom_to_supply_closet, 39, 40093711).
raw_performed(i_p107_a1, participant_returns_duster_to_supply_closet, 40, 40113058).
raw_performed(i_p107_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 41, 40113058).

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

