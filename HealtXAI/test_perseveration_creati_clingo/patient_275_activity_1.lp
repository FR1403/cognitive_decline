% ======================================================================
% Paziente 275
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

instance(i_p275_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p275_a1, participant_retrieves_broom_from_supply_closet, 1, 34903613).
raw_performed(i_p275_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34908041).
raw_performed(i_p275_a1, participant_retrieves_duster_from_supply_closet, 3, 34915720).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 4, 34922619).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 5, 34925048).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 6, 34926709).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 7, 34935537).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 8, 34945879).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 9, 34949481).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 10, 34961047).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 11, 34965165).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 12, 34982198).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 13, 34983757).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 14, 34984860).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 15, 34987480).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 16, 34990477).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 17, 34993845).
raw_performed(i_p275_a1, participant_sweeps_kitchen_floor, 18, 34995552).
raw_performed(i_p275_a1, participant_uses_dust_pan_and_brush, 19, 35004141).
raw_performed(i_p275_a1, participant_uses_dust_pan_and_brush, 20, 35004759).
raw_performed(i_p275_a1, participant_uses_dust_pan_and_brush, 21, 35008339).
raw_performed(i_p275_a1, participant_returns_broom_to_supply_closet, 22, 35017514).
raw_performed(i_p275_a1, participant_dusts_dining_room, 23, 35035462).
raw_performed(i_p275_a1, participant_dusts_dining_room, 24, 35047610).
raw_performed(i_p275_a1, participant_dusts_dining_room, 25, 35049288).
raw_performed(i_p275_a1, participant_dusts_dining_room, 26, 35057538).
raw_performed(i_p275_a1, participant_dusts_dining_room, 27, 35057750).
raw_performed(i_p275_a1, participant_dusts_dining_room, 28, 35059620).
raw_performed(i_p275_a1, participant_dusts_dining_room, 29, 35060185).
raw_performed(i_p275_a1, participant_dusts_dining_room, 30, 35062033).
raw_performed(i_p275_a1, participant_dusts_dining_room, 31, 35065045).
raw_performed(i_p275_a1, participant_dusts_dining_room, 32, 35069749).
raw_performed(i_p275_a1, participant_dusts_dining_room, 33, 35072859).
raw_performed(i_p275_a1, participant_dusts_dining_room, 34, 35074945).
raw_performed(i_p275_a1, participant_dusts_dining_room, 35, 35076274).
raw_performed(i_p275_a1, participant_dusts_dining_room, 36, 35078152).
raw_performed(i_p275_a1, participant_dusts_dining_room, 37, 35088459).
raw_performed(i_p275_a1, participant_dusts_dining_room, 38, 35091841).
raw_performed(i_p275_a1, participant_dusts_dining_room, 39, 35093337).
raw_performed(i_p275_a1, participant_dusts_dining_room, 40, 35098012).
raw_performed(i_p275_a1, participant_dusts_dining_room, 41, 35102345).
raw_performed(i_p275_a1, participant_dusts_dining_room, 42, 35103279).
raw_performed(i_p275_a1, participant_dusts_living_room, 43, 35106552).
raw_performed(i_p275_a1, participant_dusts_living_room, 44, 35122388).
raw_performed(i_p275_a1, participant_dusts_living_room, 45, 35129516).
raw_performed(i_p275_a1, participant_dusts_living_room, 46, 35131963).
raw_performed(i_p275_a1, participant_dusts_living_room, 47, 35137268).
raw_performed(i_p275_a1, participant_dusts_living_room, 48, 35145436).
raw_performed(i_p275_a1, participant_dusts_living_room, 49, 35150904).
raw_performed(i_p275_a1, participant_dusts_living_room, 50, 35153592).
raw_performed(i_p275_a1, participant_dusts_living_room, 51, 35161400).
raw_performed(i_p275_a1, participant_dusts_living_room, 52, 35162881).
raw_performed(i_p275_a1, participant_dusts_living_room, 53, 35164035).
raw_performed(i_p275_a1, participant_dusts_living_room, 54, 35166029).
raw_performed(i_p275_a1, participant_dusts_living_room, 55, 35168157).
raw_performed(i_p275_a1, participant_dusts_living_room, 56, 35171727).
raw_performed(i_p275_a1, participant_dusts_living_room, 57, 35177895).
raw_performed(i_p275_a1, participant_dusts_living_room, 58, 35179380).
raw_performed(i_p275_a1, participant_dusts_living_room, 59, 35180036).
raw_performed(i_p275_a1, participant_returns_duster_to_supply_closet, 60, 35198601).
raw_performed(i_p275_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 61, 35216391).

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

