% ======================================================================
% Paziente 350
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

action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 9166).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 63001).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 38902).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321564).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 142634).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504567).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 206023).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p350_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p350_a1, participant_retrieves_broom_from_supply_closet, 1, 33894010).
raw_performed(i_p350_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 33906090).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 3, 33915006).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 4, 33925057).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 5, 33928071).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 6, 33936066).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 7, 33938035).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 8, 33941018).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 9, 33947005).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 10, 33948010).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 11, 33950062).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 12, 33958007).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 13, 33997081).
raw_performed(i_p350_a1, participant_sweeps_kitchen_floor, 14, 34015000).
raw_performed(i_p350_a1, participant_retrieves_duster_from_supply_closet, 15, 34031069).
raw_performed(i_p350_a1, participant_returns_broom_to_supply_closet, 16, 34031069).
raw_performed(i_p350_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 17, 34031069).
raw_performed(i_p350_a1, participant_dusts_living_room, 18, 34067041).
raw_performed(i_p350_a1, participant_dusts_living_room, 19, 34071069).
raw_performed(i_p350_a1, participant_dusts_living_room, 20, 34075065).
raw_performed(i_p350_a1, participant_dusts_living_room, 21, 34083041).
raw_performed(i_p350_a1, participant_dusts_living_room, 22, 34092058).
raw_performed(i_p350_a1, participant_dusts_living_room, 23, 34166017).
raw_performed(i_p350_a1, participant_dusts_living_room, 24, 34167085).
raw_performed(i_p350_a1, participant_dusts_living_room, 25, 34177050).
raw_performed(i_p350_a1, participant_dusts_living_room, 26, 34180004).
raw_performed(i_p350_a1, participant_dusts_living_room, 27, 34181008).
raw_performed(i_p350_a1, participant_dusts_living_room, 28, 34184029).
raw_performed(i_p350_a1, participant_dusts_living_room, 29, 34192044).
raw_performed(i_p350_a1, participant_dusts_living_room, 30, 34194000).
raw_performed(i_p350_a1, participant_dusts_living_room, 31, 34196023).
raw_performed(i_p350_a1, participant_dusts_living_room, 32, 34199077).
raw_performed(i_p350_a1, participant_dusts_living_room, 33, 34206009).
raw_performed(i_p350_a1, participant_dusts_living_room, 34, 34211006).
raw_performed(i_p350_a1, participant_dusts_living_room, 35, 34215002).
raw_performed(i_p350_a1, participant_dusts_living_room, 36, 34215086).
raw_performed(i_p350_a1, participant_dusts_living_room, 37, 34219023).
raw_performed(i_p350_a1, participant_dusts_living_room, 38, 34227059).
raw_performed(i_p350_a1, participant_dusts_living_room, 39, 34228021).
raw_performed(i_p350_a1, participant_dusts_living_room, 40, 34234094).
raw_performed(i_p350_a1, participant_dusts_living_room, 41, 34236000).
raw_performed(i_p350_a1, participant_returns_duster_to_supply_closet, 42, 34243086).

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

