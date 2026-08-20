% ======================================================================
% Paziente 47
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

instance(i_p47_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p47_a1, participant_retrieves_broom_from_supply_closet, 1, 35113845).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 2, 35136984).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 3, 35159037).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 4, 35165833).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 5, 35174034).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 6, 35182313).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 7, 35184512).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 8, 35194193).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 9, 35197169).
raw_performed(i_p47_a1, participant_sweeps_kitchen_floor, 10, 35197184).
raw_performed(i_p47_a1, participant_retrieves_dust_pan_and_brush_from_closet, 11, 35203561).
raw_performed(i_p47_a1, participant_uses_dust_pan_and_brush, 12, 35209300).
raw_performed(i_p47_a1, participant_returns_broom_to_supply_closet, 13, 35216651).
raw_performed(i_p47_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 14, 35229580).
raw_performed(i_p47_a1, participant_retrieves_duster_from_supply_closet, 15, 35244880).
raw_performed(i_p47_a1, participant_dusts_living_room, 16, 35285818).
raw_performed(i_p47_a1, participant_dusts_living_room, 17, 35286204).
raw_performed(i_p47_a1, participant_dusts_living_room, 18, 35299849).
raw_performed(i_p47_a1, participant_dusts_living_room, 19, 35317765).
raw_performed(i_p47_a1, participant_dusts_living_room, 20, 35346953).
raw_performed(i_p47_a1, participant_dusts_living_room, 21, 35356861).
raw_performed(i_p47_a1, participant_dusts_living_room, 22, 35364150).
raw_performed(i_p47_a1, participant_dusts_living_room, 23, 35369343).
raw_performed(i_p47_a1, participant_dusts_living_room, 24, 35375228).
raw_performed(i_p47_a1, participant_dusts_living_room, 25, 35378736).
raw_performed(i_p47_a1, participant_dusts_living_room, 26, 35380398).
raw_performed(i_p47_a1, participant_dusts_living_room, 27, 35384854).
raw_performed(i_p47_a1, participant_dusts_living_room, 28, 35386858).
raw_performed(i_p47_a1, participant_dusts_living_room, 29, 35392542).
raw_performed(i_p47_a1, participant_dusts_living_room, 30, 35400691).
raw_performed(i_p47_a1, participant_dusts_living_room, 31, 35407552).
raw_performed(i_p47_a1, participant_dusts_living_room, 32, 35413035).
raw_performed(i_p47_a1, participant_dusts_living_room, 33, 35414093).
raw_performed(i_p47_a1, participant_dusts_dining_room, 34, 35417193).
raw_performed(i_p47_a1, participant_dusts_dining_room, 35, 35418122).
raw_performed(i_p47_a1, participant_dusts_dining_room, 36, 35429226).
raw_performed(i_p47_a1, participant_dusts_dining_room, 37, 35436925).
raw_performed(i_p47_a1, participant_dusts_dining_room, 38, 35445596).
raw_performed(i_p47_a1, participant_dusts_dining_room, 39, 35450004).
raw_performed(i_p47_a1, participant_dusts_dining_room, 40, 35459733).
raw_performed(i_p47_a1, participant_dusts_dining_room, 41, 35466336).
raw_performed(i_p47_a1, participant_dusts_dining_room, 42, 35481130).
raw_performed(i_p47_a1, participant_dusts_dining_room, 43, 35484874).
raw_performed(i_p47_a1, participant_dusts_dining_room, 44, 35489848).
raw_performed(i_p47_a1, participant_dusts_dining_room, 45, 35496211).
raw_performed(i_p47_a1, participant_dusts_dining_room, 46, 35497646).
raw_performed(i_p47_a1, participant_dusts_dining_room, 47, 35504862).
raw_performed(i_p47_a1, participant_returns_duster_to_supply_closet, 48, 35526121).

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

