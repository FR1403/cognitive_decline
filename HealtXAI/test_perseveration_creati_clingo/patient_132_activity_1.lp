% ======================================================================
% Paziente 132
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

instance(i_p132_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p132_a1, participant_retrieves_broom_from_supply_closet, 1, 38098731).
raw_performed(i_p132_a1, participant_retrieves_duster_from_supply_closet, 2, 38099881).
raw_performed(i_p132_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 38100141).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 4, 38103471).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 5, 38104957).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 6, 38108671).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 7, 38110866).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 8, 38120853).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 9, 38122406).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 10, 38123839).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 11, 38130404).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 12, 38131035).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 13, 38136416).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 14, 38141271).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 15, 38150533).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 16, 38154592).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 17, 38157003).
raw_performed(i_p132_a1, participant_sweeps_kitchen_floor, 18, 38157645).
raw_performed(i_p132_a1, participant_uses_dust_pan_and_brush, 19, 38162581).
raw_performed(i_p132_a1, participant_uses_dust_pan_and_brush, 20, 38165077).
raw_performed(i_p132_a1, participant_uses_dust_pan_and_brush, 21, 38167213).
raw_performed(i_p132_a1, participant_uses_dust_pan_and_brush, 22, 38167349).
raw_performed(i_p132_a1, participant_uses_dust_pan_and_brush, 23, 38169400).
raw_performed(i_p132_a1, participant_uses_dust_pan_and_brush, 24, 38169655).
raw_performed(i_p132_a1, participant_returns_broom_to_supply_closet, 25, 38173281).
raw_performed(i_p132_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 26, 38187615).
raw_performed(i_p132_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 27, 38189520).
raw_performed(i_p132_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 28, 38189592).
raw_performed(i_p132_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 29, 38192851).
raw_performed(i_p132_a1, participant_dusts_dining_room, 30, 38197825).
raw_performed(i_p132_a1, participant_dusts_dining_room, 31, 38199496).
raw_performed(i_p132_a1, participant_dusts_dining_room, 32, 38199832).
raw_performed(i_p132_a1, participant_dusts_dining_room, 33, 38202035).
raw_performed(i_p132_a1, participant_dusts_dining_room, 34, 38203614).
raw_performed(i_p132_a1, participant_dusts_dining_room, 35, 38206239).
raw_performed(i_p132_a1, participant_dusts_living_room, 36, 38206537).
raw_performed(i_p132_a1, participant_dusts_living_room, 37, 38207392).
raw_performed(i_p132_a1, participant_dusts_living_room, 38, 38208017).
raw_performed(i_p132_a1, participant_dusts_living_room, 39, 38208903).
raw_performed(i_p132_a1, participant_dusts_living_room, 40, 38209310).
raw_performed(i_p132_a1, participant_dusts_living_room, 41, 38211990).
raw_performed(i_p132_a1, participant_dusts_living_room, 42, 38213191).
raw_performed(i_p132_a1, participant_dusts_living_room, 43, 38213832).
raw_performed(i_p132_a1, participant_dusts_dining_room, 44, 38213920).
raw_performed(i_p132_a1, participant_returns_duster_to_supply_closet, 45, 38227431).

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

