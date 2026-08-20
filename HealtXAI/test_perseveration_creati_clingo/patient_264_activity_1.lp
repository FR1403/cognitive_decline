% ======================================================================
% Paziente 264
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

instance(i_p264_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 1, 31906007).
raw_performed(i_p264_a1, participant_retrieves_broom_from_supply_closet, 2, 31906064).
raw_performed(i_p264_a1, participant_retrieves_duster_from_supply_closet, 3, 31906064).
raw_performed(i_p264_a1, participant_retrieves_dust_pan_and_brush_from_closet, 4, 31906064).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 5, 31924054).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 6, 31932049).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 7, 31940027).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 8, 31951075).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 9, 31957000).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 10, 31964048).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 11, 31969068).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 12, 31984005).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 13, 31991061).
raw_performed(i_p264_a1, participant_sweeps_kitchen_floor, 14, 32001016).
raw_performed(i_p264_a1, participant_returns_broom_to_supply_closet, 15, 32009074).
raw_performed(i_p264_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 16, 32009074).
raw_performed(i_p264_a1, participant_dusts_dining_room, 17, 32059097).
raw_performed(i_p264_a1, participant_dusts_dining_room, 18, 32061065).
raw_performed(i_p264_a1, participant_dusts_dining_room, 19, 32065020).
raw_performed(i_p264_a1, participant_dusts_dining_room, 20, 32070004).
raw_performed(i_p264_a1, participant_dusts_dining_room, 21, 32070042).
raw_performed(i_p264_a1, participant_dusts_dining_room, 22, 32083079).
raw_performed(i_p264_a1, participant_dusts_dining_room, 23, 32084004).
raw_performed(i_p264_a1, participant_dusts_dining_room, 24, 32091010).
raw_performed(i_p264_a1, participant_dusts_dining_room, 25, 32091073).
raw_performed(i_p264_a1, participant_dusts_dining_room, 26, 32093018).
raw_performed(i_p264_a1, participant_dusts_dining_room, 27, 32094007).
raw_performed(i_p264_a1, participant_dusts_dining_room, 28, 32095068).
raw_performed(i_p264_a1, participant_dusts_living_room, 29, 32097007).
raw_performed(i_p264_a1, participant_dusts_living_room, 30, 32097061).
raw_performed(i_p264_a1, participant_dusts_living_room, 31, 32098046).
raw_performed(i_p264_a1, participant_dusts_living_room, 32, 32100031).
raw_performed(i_p264_a1, participant_dusts_living_room, 33, 32100092).
raw_performed(i_p264_a1, participant_dusts_living_room, 34, 32107067).
raw_performed(i_p264_a1, participant_dusts_living_room, 35, 32135011).
raw_performed(i_p264_a1, participant_dusts_living_room, 36, 32139031).
raw_performed(i_p264_a1, participant_dusts_living_room, 37, 32139034).
raw_performed(i_p264_a1, participant_dusts_living_room, 38, 32139094).
raw_performed(i_p264_a1, participant_returns_duster_to_supply_closet, 39, 32144005).

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

