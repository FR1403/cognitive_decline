% ======================================================================
% Paziente 70
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

instance(i_p70_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p70_a1, participant_retrieves_dust_pan_and_brush_from_closet, 1, 48669984).
raw_performed(i_p70_a1, participant_retrieves_broom_from_supply_closet, 2, 48674438).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 3, 48678856).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 4, 48681826).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 5, 48690570).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 6, 48699330).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 7, 48704652).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 8, 48708294).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 9, 48713787).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 10, 48720860).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 11, 48722012).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 12, 48759285).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 13, 48764726).
raw_performed(i_p70_a1, participant_sweeps_kitchen_floor, 14, 48771306).
raw_performed(i_p70_a1, participant_uses_dust_pan_and_brush, 15, 48776872).
raw_performed(i_p70_a1, participant_returns_broom_to_supply_closet, 16, 48783818).
raw_performed(i_p70_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 17, 48789548).
raw_performed(i_p70_a1, participant_retrieves_duster_from_supply_closet, 18, 48803882).
raw_performed(i_p70_a1, participant_dusts_dining_room, 19, 48809865).
raw_performed(i_p70_a1, participant_dusts_dining_room, 20, 48815258).
raw_performed(i_p70_a1, participant_dusts_dining_room, 21, 48819120).
raw_performed(i_p70_a1, participant_dusts_dining_room, 22, 48832607).
raw_performed(i_p70_a1, participant_dusts_dining_room, 23, 48836334).
raw_performed(i_p70_a1, participant_dusts_dining_room, 24, 48851796).
raw_performed(i_p70_a1, participant_dusts_dining_room, 25, 48858134).
raw_performed(i_p70_a1, participant_dusts_dining_room, 26, 48861310).
raw_performed(i_p70_a1, participant_dusts_dining_room, 27, 48863421).
raw_performed(i_p70_a1, participant_dusts_living_room, 28, 48864880).
raw_performed(i_p70_a1, participant_dusts_living_room, 29, 48865771).
raw_performed(i_p70_a1, participant_dusts_living_room, 30, 48867079).
raw_performed(i_p70_a1, participant_dusts_living_room, 31, 48868187).
raw_performed(i_p70_a1, participant_dusts_living_room, 32, 48868723).
raw_performed(i_p70_a1, participant_dusts_living_room, 33, 48871174).
raw_performed(i_p70_a1, participant_dusts_living_room, 34, 48879564).
raw_performed(i_p70_a1, participant_dusts_living_room, 35, 48881211).
raw_performed(i_p70_a1, participant_dusts_living_room, 36, 48903318).
raw_performed(i_p70_a1, participant_dusts_living_room, 37, 48907634).
raw_performed(i_p70_a1, participant_dusts_dining_room, 38, 48911737).
raw_performed(i_p70_a1, participant_dusts_dining_room, 39, 48918406).
raw_performed(i_p70_a1, participant_dusts_dining_room, 40, 48923016).
raw_performed(i_p70_a1, participant_dusts_dining_room, 41, 48923647).
raw_performed(i_p70_a1, participant_dusts_dining_room, 42, 48924912).
raw_performed(i_p70_a1, participant_dusts_dining_room, 43, 48926620).
raw_performed(i_p70_a1, participant_dusts_dining_room, 44, 48927371).
raw_performed(i_p70_a1, participant_returns_duster_to_supply_closet, 45, 48933671).

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

