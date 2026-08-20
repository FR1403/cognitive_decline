% ======================================================================
% Paziente 295
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

instance(i_p295_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p295_a1, participant_retrieves_broom_from_supply_closet, 1, 52079086).
raw_performed(i_p295_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 52079086).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 3, 52088040).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 4, 52090028).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 5, 52095051).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 6, 52103043).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 7, 52109073).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 8, 52121006).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 9, 52143038).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 10, 52146072).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 11, 52154084).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 12, 52168065).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 13, 52172003).
raw_performed(i_p295_a1, participant_sweeps_kitchen_floor, 14, 52194001).
raw_performed(i_p295_a1, participant_returns_broom_to_supply_closet, 15, 52205033).
raw_performed(i_p295_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 16, 52205033).
raw_performed(i_p295_a1, participant_retrieves_duster_from_supply_closet, 17, 52213046).
raw_performed(i_p295_a1, participant_dusts_dining_room, 18, 52221064).
raw_performed(i_p295_a1, participant_dusts_dining_room, 19, 52222047).
raw_performed(i_p295_a1, participant_dusts_dining_room, 20, 52227063).
raw_performed(i_p295_a1, participant_dusts_dining_room, 21, 52234054).
raw_performed(i_p295_a1, participant_dusts_dining_room, 22, 52243000).
raw_performed(i_p295_a1, participant_dusts_dining_room, 23, 52244078).
raw_performed(i_p295_a1, participant_dusts_dining_room, 24, 52247004).
raw_performed(i_p295_a1, participant_dusts_dining_room, 25, 52251065).
raw_performed(i_p295_a1, participant_dusts_dining_room, 26, 52252090).
raw_performed(i_p295_a1, participant_dusts_dining_room, 27, 52261004).
raw_performed(i_p295_a1, participant_dusts_dining_room, 28, 52263097).
raw_performed(i_p295_a1, participant_dusts_dining_room, 29, 52267009).
raw_performed(i_p295_a1, participant_dusts_dining_room, 30, 52267074).
raw_performed(i_p295_a1, participant_dusts_dining_room, 31, 52270000).
raw_performed(i_p295_a1, participant_dusts_living_room, 32, 52271070).
raw_performed(i_p295_a1, participant_dusts_living_room, 33, 52272072).
raw_performed(i_p295_a1, participant_dusts_living_room, 34, 52277074).
raw_performed(i_p295_a1, participant_dusts_living_room, 35, 52282087).
raw_performed(i_p295_a1, participant_dusts_living_room, 36, 52284001).
raw_performed(i_p295_a1, participant_dusts_living_room, 37, 52310075).
raw_performed(i_p295_a1, participant_dusts_living_room, 38, 52320002).
raw_performed(i_p295_a1, participant_dusts_living_room, 39, 52323055).
raw_performed(i_p295_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 40, 52330047).

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

