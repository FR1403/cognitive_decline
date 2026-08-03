% ======================================================================
% Paziente 347
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

instance(i_p347_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p347_a1, participant_retrieves_broom_from_supply_closet, 1, 48894014).
raw_performed(i_p347_a1, participant_retrieves_duster_from_supply_closet, 2, 48894014).
raw_performed(i_p347_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 48894014).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 4, 48905005).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 5, 48910063).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 6, 48913037).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 7, 48914000).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 8, 48928020).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 9, 48955009).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 10, 48955073).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 11, 48959088).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 12, 48972061).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 13, 48975011).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 14, 48975074).
raw_performed(i_p347_a1, participant_sweeps_kitchen_floor, 15, 48981040).
raw_performed(i_p347_a1, participant_uses_dust_pan_and_brush, 16, 48994078).
raw_performed(i_p347_a1, participant_uses_dust_pan_and_brush, 17, 49007023).
raw_performed(i_p347_a1, participant_uses_dust_pan_and_brush, 18, 49025036).
raw_performed(i_p347_a1, participant_returns_broom_to_supply_closet, 19, 49032021).
raw_performed(i_p347_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 20, 49032021).
raw_performed(i_p347_a1, participant_dusts_living_room, 21, 49058071).
raw_performed(i_p347_a1, participant_dusts_living_room, 22, 49058074).
raw_performed(i_p347_a1, participant_dusts_living_room, 23, 49063028).
raw_performed(i_p347_a1, participant_dusts_living_room, 24, 49074055).
raw_performed(i_p347_a1, participant_dusts_living_room, 25, 49110011).
raw_performed(i_p347_a1, participant_dusts_living_room, 26, 49137029).
raw_performed(i_p347_a1, participant_dusts_living_room, 27, 49149039).
raw_performed(i_p347_a1, participant_dusts_living_room, 28, 49157050).
raw_performed(i_p347_a1, participant_dusts_living_room, 29, 49164039).
raw_performed(i_p347_a1, participant_dusts_living_room, 30, 49165008).
raw_performed(i_p347_a1, participant_dusts_living_room, 31, 49166093).
raw_performed(i_p347_a1, participant_dusts_dining_room, 32, 49167057).
raw_performed(i_p347_a1, participant_dusts_dining_room, 33, 49168088).
raw_performed(i_p347_a1, participant_returns_duster_to_supply_closet, 34, 49175098).

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

