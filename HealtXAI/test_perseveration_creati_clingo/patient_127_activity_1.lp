% ======================================================================
% Paziente 127
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

instance(i_p127_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p127_a1, participant_retrieves_broom_from_supply_closet, 1, 34357572).
raw_performed(i_p127_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34357572).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 3, 34357877).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 4, 34357877).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 5, 34382091).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 6, 34382091).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 7, 34383081).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 8, 34383081).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 9, 34389088).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 10, 34389088).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 11, 34397063).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 12, 34397063).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 13, 34398652).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 14, 34398652).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 15, 34408435).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 16, 34408435).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 17, 34428018).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 18, 34428018).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 19, 34440292).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 20, 34440292).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 21, 34445095).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 22, 34445095).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 23, 34456087).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 24, 34456087).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 25, 34466091).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 26, 34466091).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 27, 34468263).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 28, 34468263).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 29, 34471531).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 30, 34471531).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 31, 34473457).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 32, 34473457).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 33, 34474108).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 34, 34474108).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 35, 34542839).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 36, 34542839).
raw_performed(i_p127_a1, participant_sweeps_kitchen_floor, 37, 34545276).
raw_performed(i_p127_a1, participant_uses_dust_pan_and_brush, 38, 34545276).
raw_performed(i_p127_a1, participant_returns_broom_to_supply_closet, 39, 34551058).
raw_performed(i_p127_a1, participant_dusts_living_room, 40, 34598437).
raw_performed(i_p127_a1, participant_dusts_living_room, 41, 34607097).
raw_performed(i_p127_a1, participant_dusts_living_room, 42, 34609009).
raw_performed(i_p127_a1, participant_dusts_living_room, 43, 34616334).
raw_performed(i_p127_a1, participant_dusts_living_room, 44, 34618072).
raw_performed(i_p127_a1, participant_dusts_living_room, 45, 34622010).
raw_performed(i_p127_a1, participant_dusts_living_room, 46, 34624004).
raw_performed(i_p127_a1, participant_dusts_living_room, 47, 34637754).
raw_performed(i_p127_a1, participant_dusts_living_room, 48, 34642143).
raw_performed(i_p127_a1, participant_dusts_dining_room, 49, 34660014).
raw_performed(i_p127_a1, participant_dusts_dining_room, 50, 34661010).
raw_performed(i_p127_a1, participant_dusts_dining_room, 51, 34665084).
raw_performed(i_p127_a1, participant_dusts_living_room, 52, 34667665).
raw_performed(i_p127_a1, participant_dusts_living_room, 53, 34671745).
raw_performed(i_p127_a1, participant_dusts_living_room, 54, 34689042).
raw_performed(i_p127_a1, participant_dusts_living_room, 55, 34699834).
raw_performed(i_p127_a1, participant_dusts_living_room, 56, 34700016).
raw_performed(i_p127_a1, participant_dusts_living_room, 57, 34706050).
raw_performed(i_p127_a1, participant_dusts_dining_room, 58, 34706124).
raw_performed(i_p127_a1, participant_dusts_living_room, 59, 34709148).
raw_performed(i_p127_a1, participant_dusts_living_room, 60, 34710051).
raw_performed(i_p127_a1, participant_dusts_living_room, 61, 34713039).
raw_performed(i_p127_a1, participant_dusts_living_room, 62, 34715001).
raw_performed(i_p127_a1, participant_dusts_living_room, 63, 34715712).
raw_performed(i_p127_a1, participant_dusts_living_room, 64, 34718055).
raw_performed(i_p127_a1, participant_dusts_dining_room, 65, 34718070).
raw_performed(i_p127_a1, participant_dusts_living_room, 66, 34718092).
raw_performed(i_p127_a1, participant_dusts_dining_room, 67, 34720004).
raw_performed(i_p127_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 68, 34725147).

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

