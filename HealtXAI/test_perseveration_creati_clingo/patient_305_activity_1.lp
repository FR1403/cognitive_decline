% ======================================================================
% Paziente 305
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

instance(i_p305_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p305_a1, participant_retrieves_broom_from_supply_closet, 1, 34726394).
raw_performed(i_p305_a1, participant_retrieves_broom_from_supply_closet, 2, 34731556).
raw_performed(i_p305_a1, participant_retrieves_broom_from_supply_closet, 3, 34733190).
raw_performed(i_p305_a1, participant_retrieves_broom_from_supply_closet, 4, 34736000).
raw_performed(i_p305_a1, participant_retrieves_dust_pan_and_brush_from_closet, 5, 34736701).
raw_performed(i_p305_a1, participant_retrieves_broom_from_supply_closet, 6, 34738613).
raw_performed(i_p305_a1, participant_retrieves_broom_from_supply_closet, 7, 34740677).
raw_performed(i_p305_a1, participant_retrieves_broom_from_supply_closet, 8, 34741360).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 9, 34742904).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 10, 34744266).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 11, 34745693).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 12, 34748173).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 13, 34749470).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 14, 34754376).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 15, 34758925).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 16, 34760542).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 17, 34766888).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 18, 34778753).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 19, 34785148).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 20, 34785490).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 21, 34799560).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 22, 34808058).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 23, 34810651).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 24, 34813977).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 25, 34814242).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 26, 34823386).
raw_performed(i_p305_a1, participant_sweeps_kitchen_floor, 27, 34823460).
raw_performed(i_p305_a1, participant_uses_dust_pan_and_brush, 28, 34825701).
raw_performed(i_p305_a1, participant_uses_dust_pan_and_brush, 29, 34825980).
raw_performed(i_p305_a1, participant_uses_dust_pan_and_brush, 30, 34831816).
raw_performed(i_p305_a1, participant_uses_dust_pan_and_brush, 31, 34833070).
raw_performed(i_p305_a1, participant_uses_dust_pan_and_brush, 32, 34833681).
raw_performed(i_p305_a1, participant_uses_dust_pan_and_brush, 33, 34836476).
raw_performed(i_p305_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 34, 34837418).
raw_performed(i_p305_a1, participant_returns_broom_to_supply_closet, 35, 34845832).
raw_performed(i_p305_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 36, 34873493).
raw_performed(i_p305_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 37, 34875304).
raw_performed(i_p305_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 38, 34876885).
raw_performed(i_p305_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 39, 34881371).
raw_performed(i_p305_a1, participant_retrieves_duster_from_supply_closet, 40, 34999181).
raw_performed(i_p305_a1, participant_dusts_dining_room, 41, 35007146).
raw_performed(i_p305_a1, participant_dusts_dining_room, 42, 35010987).
raw_performed(i_p305_a1, participant_dusts_dining_room, 43, 35015276).
raw_performed(i_p305_a1, participant_dusts_dining_room, 44, 35021857).
raw_performed(i_p305_a1, participant_dusts_dining_room, 45, 35039842).
raw_performed(i_p305_a1, participant_dusts_dining_room, 46, 35048859).
raw_performed(i_p305_a1, participant_dusts_dining_room, 47, 35054490).
raw_performed(i_p305_a1, participant_dusts_dining_room, 48, 35058095).
raw_performed(i_p305_a1, participant_dusts_dining_room, 49, 35061277).
raw_performed(i_p305_a1, participant_dusts_dining_room, 50, 35062727).
raw_performed(i_p305_a1, participant_dusts_dining_room, 51, 35065811).
raw_performed(i_p305_a1, participant_dusts_dining_room, 52, 35074770).
raw_performed(i_p305_a1, participant_dusts_dining_room, 53, 35075673).
raw_performed(i_p305_a1, participant_dusts_dining_room, 54, 35083211).
raw_performed(i_p305_a1, participant_dusts_dining_room, 55, 35090149).
raw_performed(i_p305_a1, participant_returns_duster_to_supply_closet, 56, 35118043).
raw_performed(i_p305_a1, participant_returns_duster_to_supply_closet, 57, 35120878).
raw_performed(i_p305_a1, participant_returns_duster_to_supply_closet, 58, 35121459).
raw_performed(i_p305_a1, participant_returns_duster_to_supply_closet, 59, 35124182).

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

