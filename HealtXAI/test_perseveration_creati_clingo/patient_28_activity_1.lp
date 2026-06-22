% ======================================================================
% Paziente 28
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
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 39091).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321534).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 141540).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504615).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 205578).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p28_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p28_a1, participant_retrieves_broom_from_supply_closet, 1, 34747527).
raw_performed(i_p28_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34747527).
raw_performed(i_p28_a1, participant_sweeps_kitchen_floor, 3, 34747570).
raw_performed(i_p28_a1, participant_sweeps_kitchen_floor, 4, 34766273).
raw_performed(i_p28_a1, participant_sweeps_kitchen_floor, 5, 34766286).
raw_performed(i_p28_a1, participant_sweeps_kitchen_floor, 6, 34770291).
raw_performed(i_p28_a1, participant_sweeps_kitchen_floor, 7, 34777611).
raw_performed(i_p28_a1, participant_sweeps_kitchen_floor, 8, 34779347).
raw_performed(i_p28_a1, participant_uses_dust_pan_and_brush, 9, 34802581).
raw_performed(i_p28_a1, participant_retrieves_duster_from_supply_closet, 10, 34811510).
raw_performed(i_p28_a1, participant_returns_broom_to_supply_closet, 11, 34811510).
raw_performed(i_p28_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 12, 34811510).
raw_performed(i_p28_a1, participant_dusts_living_room, 13, 34933353).
raw_performed(i_p28_a1, participant_dusts_living_room, 14, 34933776).
raw_performed(i_p28_a1, participant_dusts_living_room, 15, 34941317).
raw_performed(i_p28_a1, participant_dusts_living_room, 16, 34949099).
raw_performed(i_p28_a1, participant_dusts_living_room, 17, 34990531).
raw_performed(i_p28_a1, participant_dusts_living_room, 18, 34993083).
raw_performed(i_p28_a1, participant_dusts_living_room, 19, 35001629).
raw_performed(i_p28_a1, participant_dusts_living_room, 20, 35002039).
raw_performed(i_p28_a1, participant_dusts_living_room, 21, 35004469).
raw_performed(i_p28_a1, participant_dusts_living_room, 22, 35015654).
raw_performed(i_p28_a1, participant_dusts_living_room, 23, 35022805).
raw_performed(i_p28_a1, participant_dusts_living_room, 24, 35030813).
raw_performed(i_p28_a1, participant_dusts_living_room, 25, 35041434).
raw_performed(i_p28_a1, participant_dusts_living_room, 26, 35043134).
raw_performed(i_p28_a1, participant_dusts_living_room, 27, 35047281).
raw_performed(i_p28_a1, participant_dusts_living_room, 28, 35047701).
raw_performed(i_p28_a1, participant_dusts_dining_room, 29, 35050789).
raw_performed(i_p28_a1, participant_dusts_dining_room, 30, 35054603).
raw_performed(i_p28_a1, participant_dusts_dining_room, 31, 35058678).
raw_performed(i_p28_a1, participant_dusts_dining_room, 32, 35070086).
raw_performed(i_p28_a1, participant_dusts_dining_room, 33, 35089254).
raw_performed(i_p28_a1, participant_dusts_dining_room, 34, 35100590).
raw_performed(i_p28_a1, participant_dusts_dining_room, 35, 35114381).
raw_performed(i_p28_a1, participant_dusts_dining_room, 36, 35115433).
raw_performed(i_p28_a1, participant_returns_duster_to_supply_closet, 37, 35121985).

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

