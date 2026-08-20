% ======================================================================
% Paziente 321
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

instance(i_p321_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p321_a1, participant_retrieves_duster_from_supply_closet, 1, 50060334).
raw_performed(i_p321_a1, participant_retrieves_broom_from_supply_closet, 2, 50063327).
raw_performed(i_p321_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 50063462).
raw_performed(i_p321_a1, participant_sweeps_kitchen_floor, 4, 50099032).
raw_performed(i_p321_a1, participant_sweeps_kitchen_floor, 5, 50127402).
raw_performed(i_p321_a1, participant_sweeps_kitchen_floor, 6, 50138046).
raw_performed(i_p321_a1, participant_sweeps_kitchen_floor, 7, 50139006).
raw_performed(i_p321_a1, participant_sweeps_kitchen_floor, 8, 50144001).
raw_performed(i_p321_a1, participant_sweeps_kitchen_floor, 9, 50147619).
raw_performed(i_p321_a1, participant_sweeps_kitchen_floor, 10, 50172013).
raw_performed(i_p321_a1, participant_uses_dust_pan_and_brush, 11, 50176398).
raw_performed(i_p321_a1, participant_uses_dust_pan_and_brush, 12, 50187258).
raw_performed(i_p321_a1, participant_dusts_dining_room, 13, 50226941).
raw_performed(i_p321_a1, participant_dusts_dining_room, 14, 50234963).
raw_performed(i_p321_a1, participant_dusts_dining_room, 15, 50239447).
raw_performed(i_p321_a1, participant_dusts_dining_room, 16, 50239469).
raw_performed(i_p321_a1, participant_dusts_dining_room, 17, 50254573).
raw_performed(i_p321_a1, participant_dusts_dining_room, 18, 50285942).
raw_performed(i_p321_a1, participant_dusts_dining_room, 19, 50289964).
raw_performed(i_p321_a1, participant_dusts_dining_room, 20, 50291181).
raw_performed(i_p321_a1, participant_dusts_dining_room, 21, 50311017).
raw_performed(i_p321_a1, participant_dusts_dining_room, 22, 50320709).
raw_performed(i_p321_a1, participant_dusts_dining_room, 23, 50322145).
raw_performed(i_p321_a1, participant_dusts_dining_room, 24, 50330768).
raw_performed(i_p321_a1, participant_dusts_dining_room, 25, 50341563).
raw_performed(i_p321_a1, participant_dusts_dining_room, 26, 50344712).
raw_performed(i_p321_a1, participant_dusts_dining_room, 27, 50357353).
raw_performed(i_p321_a1, participant_dusts_dining_room, 28, 50360448).
raw_performed(i_p321_a1, participant_dusts_dining_room, 29, 50373488).
raw_performed(i_p321_a1, participant_dusts_dining_room, 30, 50388588).
raw_performed(i_p321_a1, participant_dusts_dining_room, 31, 50393946).
raw_performed(i_p321_a1, participant_dusts_living_room, 32, 50394466).
raw_performed(i_p321_a1, participant_dusts_living_room, 33, 50398187).
raw_performed(i_p321_a1, participant_dusts_living_room, 34, 50402478).
raw_performed(i_p321_a1, participant_dusts_living_room, 35, 50413507).
raw_performed(i_p321_a1, participant_dusts_living_room, 36, 50418451).
raw_performed(i_p321_a1, participant_dusts_living_room, 37, 50420527).
raw_performed(i_p321_a1, participant_dusts_living_room, 38, 50423887).
raw_performed(i_p321_a1, participant_dusts_living_room, 39, 50425025).
raw_performed(i_p321_a1, participant_dusts_living_room, 40, 50428380).
raw_performed(i_p321_a1, participant_dusts_living_room, 41, 50441373).
raw_performed(i_p321_a1, participant_dusts_living_room, 42, 50446228).
raw_performed(i_p321_a1, participant_dusts_living_room, 43, 50449314).
raw_performed(i_p321_a1, participant_dusts_living_room, 44, 50471141).
raw_performed(i_p321_a1, participant_dusts_living_room, 45, 50490641).
raw_performed(i_p321_a1, participant_dusts_living_room, 46, 50499348).
raw_performed(i_p321_a1, participant_dusts_living_room, 47, 50501410).
raw_performed(i_p321_a1, participant_dusts_living_room, 48, 50502245).
raw_performed(i_p321_a1, participant_dusts_living_room, 49, 50511890).
raw_performed(i_p321_a1, participant_dusts_living_room, 50, 50515489).
raw_performed(i_p321_a1, participant_returns_duster_to_supply_closet, 51, 50562271).
raw_performed(i_p321_a1, participant_returns_broom_to_supply_closet, 52, 50567749).
raw_performed(i_p321_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 53, 50573482).

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

