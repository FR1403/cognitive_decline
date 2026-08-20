% ======================================================================
% Paziente 114
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

instance(i_p114_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p114_a1, participant_retrieves_broom_from_supply_closet, 1, 32202061).
raw_performed(i_p114_a1, participant_retrieves_duster_from_supply_closet, 2, 32233059).
raw_performed(i_p114_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 32233059).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 4, 32243061).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 5, 32243061).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 6, 32252080).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 7, 32252080).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 8, 32259077).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 9, 32259077).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 10, 32261045).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 11, 32261045).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 12, 32265086).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 13, 32265086).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 14, 32272096).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 15, 32272096).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 16, 32278040).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 17, 32278040).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 18, 32285077).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 19, 32285077).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 20, 32294056).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 21, 32294056).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 22, 32323054).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 23, 32323054).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 24, 32334065).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 25, 32334065).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 26, 32339000).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 27, 32339000).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 28, 32356081).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 29, 32356081).
raw_performed(i_p114_a1, participant_sweeps_kitchen_floor, 30, 32366038).
raw_performed(i_p114_a1, participant_uses_dust_pan_and_brush, 31, 32366038).
raw_performed(i_p114_a1, participant_dusts_dining_room, 32, 32374071).
raw_performed(i_p114_a1, participant_dusts_dining_room, 33, 32381044).
raw_performed(i_p114_a1, participant_dusts_dining_room, 34, 32381047).
raw_performed(i_p114_a1, participant_dusts_dining_room, 35, 32386066).
raw_performed(i_p114_a1, participant_dusts_dining_room, 36, 32387092).
raw_performed(i_p114_a1, participant_dusts_dining_room, 37, 32399048).
raw_performed(i_p114_a1, participant_dusts_living_room, 38, 32411064).
raw_performed(i_p114_a1, participant_dusts_dining_room, 39, 32423051).
raw_performed(i_p114_a1, participant_dusts_dining_room, 40, 32424009).
raw_performed(i_p114_a1, participant_dusts_dining_room, 41, 32426018).
raw_performed(i_p114_a1, participant_dusts_dining_room, 42, 32432086).
raw_performed(i_p114_a1, participant_dusts_dining_room, 43, 32437045).
raw_performed(i_p114_a1, participant_dusts_dining_room, 44, 32447005).
raw_performed(i_p114_a1, participant_dusts_dining_room, 45, 32454072).
raw_performed(i_p114_a1, participant_dusts_living_room, 46, 32456006).
raw_performed(i_p114_a1, participant_dusts_living_room, 47, 32459005).
raw_performed(i_p114_a1, participant_dusts_dining_room, 48, 32462023).
raw_performed(i_p114_a1, participant_dusts_living_room, 49, 32463001).
raw_performed(i_p114_a1, participant_dusts_living_room, 50, 32463093).
raw_performed(i_p114_a1, participant_dusts_living_room, 51, 32472073).
raw_performed(i_p114_a1, participant_dusts_living_room, 52, 32481030).
raw_performed(i_p114_a1, participant_dusts_living_room, 53, 32488061).
raw_performed(i_p114_a1, participant_dusts_living_room, 54, 32526088).
raw_performed(i_p114_a1, participant_dusts_living_room, 55, 32529081).
raw_performed(i_p114_a1, participant_dusts_living_room, 56, 32536007).
raw_performed(i_p114_a1, participant_dusts_living_room, 57, 32538008).
raw_performed(i_p114_a1, participant_dusts_living_room, 58, 32539043).
raw_performed(i_p114_a1, participant_dusts_living_room, 59, 32542055).
raw_performed(i_p114_a1, participant_dusts_living_room, 60, 32557003).
raw_performed(i_p114_a1, participant_dusts_living_room, 61, 32558004).
raw_performed(i_p114_a1, participant_dusts_living_room, 62, 32559096).
raw_performed(i_p114_a1, participant_dusts_living_room, 63, 32578046).
raw_performed(i_p114_a1, participant_dusts_living_room, 64, 32579049).
raw_performed(i_p114_a1, participant_dusts_living_room, 65, 32580076).
raw_performed(i_p114_a1, participant_dusts_living_room, 66, 32581040).
raw_performed(i_p114_a1, participant_dusts_dining_room, 67, 32582020).
raw_performed(i_p114_a1, participant_returns_broom_to_supply_closet, 68, 32588079).
raw_performed(i_p114_a1, participant_returns_duster_to_supply_closet, 69, 32588079).
raw_performed(i_p114_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 70, 32588079).

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

