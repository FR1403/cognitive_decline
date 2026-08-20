% ======================================================================
% Paziente 194
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

instance(i_p194_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p194_a1, participant_retrieves_broom_from_supply_closet, 1, 34818317).
raw_performed(i_p194_a1, participant_retrieves_duster_from_supply_closet, 2, 34833793).
raw_performed(i_p194_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 34849014).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 4, 34854076).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 5, 34854076).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 6, 34860047).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 7, 34860047).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 8, 34863877).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 9, 34863877).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 10, 34870824).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 11, 34870824).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 12, 34882963).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 13, 34882963).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 14, 34884066).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 15, 34884066).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 16, 34889552).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 17, 34889552).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 18, 34897057).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 19, 34897057).
raw_performed(i_p194_a1, participant_sweeps_kitchen_floor, 20, 34899406).
raw_performed(i_p194_a1, participant_uses_dust_pan_and_brush, 21, 34899406).
raw_performed(i_p194_a1, participant_returns_broom_to_supply_closet, 22, 34901061).
raw_performed(i_p194_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 23, 34913554).
raw_performed(i_p194_a1, participant_dusts_living_room, 24, 34943555).
raw_performed(i_p194_a1, participant_dusts_dining_room, 25, 34943910).
raw_performed(i_p194_a1, participant_dusts_living_room, 26, 34944068).
raw_performed(i_p194_a1, participant_dusts_living_room, 27, 34949846).
raw_performed(i_p194_a1, participant_dusts_living_room, 28, 34955906).
raw_performed(i_p194_a1, participant_dusts_living_room, 29, 34969985).
raw_performed(i_p194_a1, participant_dusts_living_room, 30, 34974409).
raw_performed(i_p194_a1, participant_dusts_living_room, 31, 34993301).
raw_performed(i_p194_a1, participant_dusts_living_room, 32, 34994007).
raw_performed(i_p194_a1, participant_dusts_living_room, 33, 34999014).
raw_performed(i_p194_a1, participant_dusts_living_room, 34, 35000038).
raw_performed(i_p194_a1, participant_dusts_living_room, 35, 35006742).
raw_performed(i_p194_a1, participant_dusts_living_room, 36, 35007064).
raw_performed(i_p194_a1, participant_dusts_living_room, 37, 35010125).
raw_performed(i_p194_a1, participant_dusts_living_room, 38, 35016334).
raw_performed(i_p194_a1, participant_dusts_living_room, 39, 35017064).
raw_performed(i_p194_a1, participant_dusts_living_room, 40, 35021001).
raw_performed(i_p194_a1, participant_dusts_living_room, 41, 35021353).
raw_performed(i_p194_a1, participant_dusts_dining_room, 42, 35031004).
raw_performed(i_p194_a1, participant_dusts_dining_room, 43, 35037974).
raw_performed(i_p194_a1, participant_dusts_dining_room, 44, 35051086).
raw_performed(i_p194_a1, participant_dusts_dining_room, 45, 35056072).
raw_performed(i_p194_a1, participant_dusts_dining_room, 46, 35060098).
raw_performed(i_p194_a1, participant_dusts_dining_room, 47, 35062054).
raw_performed(i_p194_a1, participant_dusts_dining_room, 48, 35063057).
raw_performed(i_p194_a1, participant_returns_duster_to_supply_closet, 49, 35067461).

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

