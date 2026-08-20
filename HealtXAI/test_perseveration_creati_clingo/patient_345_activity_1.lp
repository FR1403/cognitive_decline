% ======================================================================
% Paziente 345
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

instance(i_p345_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p345_a1, participant_retrieves_broom_from_supply_closet, 1, 33942871).
raw_performed(i_p345_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 33944641).
raw_performed(i_p345_a1, participant_retrieves_duster_from_supply_closet, 3, 33951081).
raw_performed(i_p345_a1, participant_sweeps_kitchen_floor, 4, 33958680).
raw_performed(i_p345_a1, participant_sweeps_kitchen_floor, 5, 33962427).
raw_performed(i_p345_a1, participant_sweeps_kitchen_floor, 6, 33964010).
raw_performed(i_p345_a1, participant_sweeps_kitchen_floor, 7, 33965988).
raw_performed(i_p345_a1, participant_uses_dust_pan_and_brush, 8, 33980691).
raw_performed(i_p345_a1, participant_returns_broom_to_supply_closet, 9, 33984067).
raw_performed(i_p345_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 10, 34001191).
raw_performed(i_p345_a1, participant_dusts_dining_room, 11, 34009935).
raw_performed(i_p345_a1, participant_dusts_dining_room, 12, 34013366).
raw_performed(i_p345_a1, participant_dusts_dining_room, 13, 34015775).
raw_performed(i_p345_a1, participant_dusts_dining_room, 14, 34017611).
raw_performed(i_p345_a1, participant_dusts_dining_room, 15, 34022868).
raw_performed(i_p345_a1, participant_dusts_dining_room, 16, 34023973).
raw_performed(i_p345_a1, participant_dusts_dining_room, 17, 34025119).
raw_performed(i_p345_a1, participant_dusts_dining_room, 18, 34026542).
raw_performed(i_p345_a1, participant_dusts_dining_room, 19, 34028712).
raw_performed(i_p345_a1, participant_dusts_dining_room, 20, 34037715).
raw_performed(i_p345_a1, participant_dusts_dining_room, 21, 34038730).
raw_performed(i_p345_a1, participant_dusts_dining_room, 22, 34040440).
raw_performed(i_p345_a1, participant_dusts_dining_room, 23, 34041137).
raw_performed(i_p345_a1, participant_dusts_dining_room, 24, 34045995).
raw_performed(i_p345_a1, participant_dusts_living_room, 25, 34046283).
raw_performed(i_p345_a1, participant_dusts_living_room, 26, 34049464).
raw_performed(i_p345_a1, participant_dusts_living_room, 27, 34050727).
raw_performed(i_p345_a1, participant_dusts_living_room, 28, 34051915).
raw_performed(i_p345_a1, participant_dusts_living_room, 29, 34055680).
raw_performed(i_p345_a1, participant_dusts_living_room, 30, 34062300).
raw_performed(i_p345_a1, participant_dusts_living_room, 31, 34066958).
raw_performed(i_p345_a1, participant_dusts_living_room, 32, 34072550).
raw_performed(i_p345_a1, participant_dusts_living_room, 33, 34073174).
raw_performed(i_p345_a1, participant_dusts_living_room, 34, 34076598).
raw_performed(i_p345_a1, participant_dusts_living_room, 35, 34079859).
raw_performed(i_p345_a1, participant_dusts_living_room, 36, 34087725).
raw_performed(i_p345_a1, participant_dusts_living_room, 37, 34087796).
raw_performed(i_p345_a1, participant_returns_duster_to_supply_closet, 38, 34103081).

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

