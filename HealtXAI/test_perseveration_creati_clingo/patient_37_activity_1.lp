% ======================================================================
% Paziente 37
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

instance(i_p37_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p37_a1, participant_retrieves_broom_from_supply_closet, 1, 52030033).
raw_performed(i_p37_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 52030033).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 3, 52041030).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 4, 52043017).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 5, 52045087).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 6, 52046048).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 7, 52052009).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 8, 52057052).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 9, 52058079).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 10, 52062096).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 11, 52083082).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 12, 52106036).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 13, 52123000).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 14, 52128086).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 15, 52134017).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 16, 52142006).
raw_performed(i_p37_a1, participant_sweeps_kitchen_floor, 17, 52143073).
raw_performed(i_p37_a1, participant_uses_dust_pan_and_brush, 18, 52148096).
raw_performed(i_p37_a1, participant_uses_dust_pan_and_brush, 19, 52148098).
raw_performed(i_p37_a1, participant_uses_dust_pan_and_brush, 20, 52154038).
raw_performed(i_p37_a1, participant_retrieves_duster_from_supply_closet, 21, 52157051).
raw_performed(i_p37_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 22, 52157051).
raw_performed(i_p37_a1, participant_dusts_dining_room, 23, 52173048).
raw_performed(i_p37_a1, participant_dusts_dining_room, 24, 52174030).
raw_performed(i_p37_a1, participant_dusts_dining_room, 25, 52182028).
raw_performed(i_p37_a1, participant_dusts_dining_room, 26, 52188096).
raw_performed(i_p37_a1, participant_dusts_dining_room, 27, 52196025).
raw_performed(i_p37_a1, participant_dusts_dining_room, 28, 52204000).
raw_performed(i_p37_a1, participant_returns_duster_to_supply_closet, 29, 52210000).

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

