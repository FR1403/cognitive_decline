% ======================================================================
% Paziente 144
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

instance(i_p144_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p144_a1, participant_retrieves_broom_from_supply_closet, 1, 33633016).
raw_performed(i_p144_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 33633016).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 3, 33646012).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 4, 33648069).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 5, 33652042).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 6, 33654086).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 7, 33673000).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 8, 33688098).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 9, 33696009).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 10, 33706091).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 11, 33713085).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 12, 33714050).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 13, 33716080).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 14, 33722004).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 15, 33723003).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 16, 33729074).
raw_performed(i_p144_a1, participant_sweeps_kitchen_floor, 17, 33733030).
raw_performed(i_p144_a1, participant_uses_dust_pan_and_brush, 18, 33736008).
raw_performed(i_p144_a1, participant_retrieves_duster_from_supply_closet, 19, 33740079).
raw_performed(i_p144_a1, participant_returns_broom_to_supply_closet, 20, 33740079).
raw_performed(i_p144_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 21, 33740079).
raw_performed(i_p144_a1, participant_dusts_dining_room, 22, 33770007).
raw_performed(i_p144_a1, participant_dusts_dining_room, 23, 33771004).
raw_performed(i_p144_a1, participant_dusts_dining_room, 24, 33777073).
raw_performed(i_p144_a1, participant_dusts_dining_room, 25, 33779021).
raw_performed(i_p144_a1, participant_dusts_dining_room, 26, 33785005).
raw_performed(i_p144_a1, participant_dusts_dining_room, 27, 33788000).
raw_performed(i_p144_a1, participant_dusts_dining_room, 28, 33793017).
raw_performed(i_p144_a1, participant_dusts_dining_room, 29, 33797056).
raw_performed(i_p144_a1, participant_dusts_dining_room, 30, 33809028).
raw_performed(i_p144_a1, participant_dusts_dining_room, 31, 33811016).
raw_performed(i_p144_a1, participant_dusts_living_room, 32, 33813024).
raw_performed(i_p144_a1, participant_dusts_living_room, 33, 33814003).
raw_performed(i_p144_a1, participant_dusts_living_room, 34, 33818051).
raw_performed(i_p144_a1, participant_dusts_living_room, 35, 33824082).
raw_performed(i_p144_a1, participant_dusts_living_room, 36, 33834037).
raw_performed(i_p144_a1, participant_dusts_living_room, 37, 33836028).
raw_performed(i_p144_a1, participant_dusts_living_room, 38, 33849084).
raw_performed(i_p144_a1, participant_dusts_living_room, 39, 33860008).
raw_performed(i_p144_a1, participant_dusts_living_room, 40, 33864089).
raw_performed(i_p144_a1, participant_dusts_living_room, 41, 33869095).
raw_performed(i_p144_a1, participant_dusts_living_room, 42, 33881002).
raw_performed(i_p144_a1, participant_dusts_living_room, 43, 33882014).
raw_performed(i_p144_a1, participant_dusts_living_room, 44, 33882017).
raw_performed(i_p144_a1, participant_returns_duster_to_supply_closet, 45, 33891014).

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

