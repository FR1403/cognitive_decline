% ======================================================================
% Paziente 328
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

instance(i_p328_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p328_a1, participant_retrieves_broom_from_supply_closet, 1, 33666077).
raw_performed(i_p328_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 33666077).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 3, 33674028).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 4, 33674092).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 5, 33678017).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 6, 33682032).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 7, 33692029).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 8, 33696003).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 9, 33700002).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 10, 33707030).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 11, 33721010).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 12, 33738065).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 13, 33761016).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 14, 33763046).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 15, 33773055).
raw_performed(i_p328_a1, participant_sweeps_kitchen_floor, 16, 33774001).
raw_performed(i_p328_a1, participant_retrieves_duster_from_supply_closet, 17, 33776009).
raw_performed(i_p328_a1, participant_returns_broom_to_supply_closet, 18, 33776009).
raw_performed(i_p328_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 19, 33776009).
raw_performed(i_p328_a1, participant_dusts_living_room, 20, 33795021).
raw_performed(i_p328_a1, participant_dusts_living_room, 21, 33795084).
raw_performed(i_p328_a1, participant_dusts_living_room, 22, 33796047).
raw_performed(i_p328_a1, participant_dusts_living_room, 23, 33797054).
raw_performed(i_p328_a1, participant_dusts_living_room, 24, 33800089).
raw_performed(i_p328_a1, participant_dusts_living_room, 25, 33811080).
raw_performed(i_p328_a1, participant_dusts_living_room, 26, 33820098).
raw_performed(i_p328_a1, participant_dusts_living_room, 27, 33821061).
raw_performed(i_p328_a1, participant_dusts_living_room, 28, 33823000).
raw_performed(i_p328_a1, participant_dusts_living_room, 29, 33826000).
raw_performed(i_p328_a1, participant_dusts_living_room, 30, 33829007).
raw_performed(i_p328_a1, participant_dusts_living_room, 31, 33831020).
raw_performed(i_p328_a1, participant_dusts_living_room, 32, 33832071).
raw_performed(i_p328_a1, participant_dusts_living_room, 33, 33833095).
raw_performed(i_p328_a1, participant_returns_duster_to_supply_closet, 34, 33838077).

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

