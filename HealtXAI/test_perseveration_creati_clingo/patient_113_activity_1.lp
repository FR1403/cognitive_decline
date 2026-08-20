% ======================================================================
% Paziente 113
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

instance(i_p113_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p113_a1, participant_retrieves_broom_from_supply_closet, 1, 34299413).
raw_performed(i_p113_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34301444).
raw_performed(i_p113_a1, participant_retrieves_duster_from_supply_closet, 3, 34302417).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 4, 34306224).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 5, 34306237).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 6, 34309889).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 7, 34311717).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 8, 34318036).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 9, 34322392).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 10, 34326722).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 11, 34334012).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 12, 34341672).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 13, 34349704).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 14, 34353907).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 15, 34364858).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 16, 34388485).
raw_performed(i_p113_a1, participant_sweeps_kitchen_floor, 17, 34399331).
raw_performed(i_p113_a1, participant_uses_dust_pan_and_brush, 18, 34413468).
raw_performed(i_p113_a1, participant_returns_broom_to_supply_closet, 19, 34444016).
raw_performed(i_p113_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 20, 34451550).
raw_performed(i_p113_a1, participant_dusts_living_room, 21, 34453389).
raw_performed(i_p113_a1, participant_dusts_living_room, 22, 34454443).
raw_performed(i_p113_a1, participant_dusts_living_room, 23, 34454471).
raw_performed(i_p113_a1, participant_dusts_living_room, 24, 34460992).
raw_performed(i_p113_a1, participant_dusts_living_room, 25, 34471940).
raw_performed(i_p113_a1, participant_dusts_living_room, 26, 34482016).
raw_performed(i_p113_a1, participant_dusts_living_room, 27, 34510492).
raw_performed(i_p113_a1, participant_dusts_living_room, 28, 34518239).
raw_performed(i_p113_a1, participant_dusts_living_room, 29, 34523104).
raw_performed(i_p113_a1, participant_dusts_living_room, 30, 34529550).
raw_performed(i_p113_a1, participant_dusts_living_room, 31, 34530744).
raw_performed(i_p113_a1, participant_dusts_living_room, 32, 34533332).
raw_performed(i_p113_a1, participant_dusts_living_room, 33, 34537884).
raw_performed(i_p113_a1, participant_dusts_living_room, 34, 34542912).
raw_performed(i_p113_a1, participant_dusts_living_room, 35, 34542943).
raw_performed(i_p113_a1, participant_dusts_dining_room, 36, 34546254).
raw_performed(i_p113_a1, participant_dusts_dining_room, 37, 34547082).
raw_performed(i_p113_a1, participant_dusts_dining_room, 38, 34551152).
raw_performed(i_p113_a1, participant_dusts_dining_room, 39, 34557982).
raw_performed(i_p113_a1, participant_dusts_dining_room, 40, 34566710).
raw_performed(i_p113_a1, participant_dusts_dining_room, 41, 34568772).
raw_performed(i_p113_a1, participant_dusts_dining_room, 42, 34580925).
raw_performed(i_p113_a1, participant_dusts_dining_room, 43, 34590994).
raw_performed(i_p113_a1, participant_dusts_dining_room, 44, 34594722).
raw_performed(i_p113_a1, participant_dusts_dining_room, 45, 34595159).
raw_performed(i_p113_a1, participant_dusts_dining_room, 46, 34599066).
raw_performed(i_p113_a1, participant_returns_duster_to_supply_closet, 47, 34613796).

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

