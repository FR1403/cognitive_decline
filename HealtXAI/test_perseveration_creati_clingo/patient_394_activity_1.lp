% ======================================================================
% Paziente 394
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

instance(i_p394_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p394_a1, participant_retrieves_broom_from_supply_closet, 1, 48490618).
raw_performed(i_p394_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 48500897).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 3, 48503660).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 4, 48509907).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 5, 48511981).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 6, 48519276).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 7, 48524813).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 8, 48537527).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 9, 48548254).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 10, 48551225).
raw_performed(i_p394_a1, participant_sweeps_kitchen_floor, 11, 48557937).
raw_performed(i_p394_a1, participant_uses_dust_pan_and_brush, 12, 48576460).
raw_performed(i_p394_a1, participant_returns_broom_to_supply_closet, 13, 48595078).
raw_performed(i_p394_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 14, 48604784).
raw_performed(i_p394_a1, participant_retrieves_duster_from_supply_closet, 15, 48605453).
raw_performed(i_p394_a1, participant_dusts_dining_room, 16, 48613614).
raw_performed(i_p394_a1, participant_dusts_dining_room, 17, 48615174).
raw_performed(i_p394_a1, participant_dusts_dining_room, 18, 48622487).
raw_performed(i_p394_a1, participant_dusts_dining_room, 19, 48629786).
raw_performed(i_p394_a1, participant_dusts_dining_room, 20, 48639574).
raw_performed(i_p394_a1, participant_dusts_dining_room, 21, 48653272).
raw_performed(i_p394_a1, participant_dusts_dining_room, 22, 48659533).
raw_performed(i_p394_a1, participant_dusts_living_room, 23, 48687832).
raw_performed(i_p394_a1, participant_dusts_living_room, 24, 48688847).
raw_performed(i_p394_a1, participant_dusts_living_room, 25, 48696723).
raw_performed(i_p394_a1, participant_dusts_living_room, 26, 48701322).
raw_performed(i_p394_a1, participant_dusts_living_room, 27, 48734604).
raw_performed(i_p394_a1, participant_dusts_living_room, 28, 48742442).
raw_performed(i_p394_a1, participant_dusts_living_room, 29, 48742824).
raw_performed(i_p394_a1, participant_dusts_living_room, 30, 48757563).
raw_performed(i_p394_a1, participant_dusts_living_room, 31, 48766361).
raw_performed(i_p394_a1, participant_dusts_living_room, 32, 48767390).
raw_performed(i_p394_a1, participant_dusts_living_room, 33, 48770913).
raw_performed(i_p394_a1, participant_dusts_living_room, 34, 48773747).
raw_performed(i_p394_a1, participant_dusts_living_room, 35, 48782316).
raw_performed(i_p394_a1, participant_dusts_living_room, 36, 48786053).
raw_performed(i_p394_a1, participant_dusts_living_room, 37, 48789200).
raw_performed(i_p394_a1, participant_dusts_living_room, 38, 48790015).
raw_performed(i_p394_a1, participant_returns_duster_to_supply_closet, 39, 48796686).
raw_performed(i_p394_a1, participant_returns_duster_to_supply_closet, 40, 48805576).

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

