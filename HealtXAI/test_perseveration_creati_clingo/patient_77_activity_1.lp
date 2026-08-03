% ======================================================================
% Paziente 77
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

instance(i_p77_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p77_a1, participant_retrieves_broom_from_supply_closet, 1, 49006007).
raw_performed(i_p77_a1, participant_retrieves_duster_from_supply_closet, 2, 49006007).
raw_performed(i_p77_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 49006007).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 4, 49012098).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 5, 49012098).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 6, 49019073).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 7, 49019073).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 8, 49030041).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 9, 49030041).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 10, 49033052).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 11, 49033052).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 12, 49046087).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 13, 49046087).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 14, 49049035).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 15, 49049035).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 16, 49072049).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 17, 49072049).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 18, 49085070).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 19, 49085070).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 20, 49089025).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 21, 49089025).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 22, 49101074).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 23, 49101074).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 24, 49102036).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 25, 49102036).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 26, 49105070).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 27, 49105070).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 28, 49111000).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 29, 49111000).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 30, 49114001).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 31, 49114001).
raw_performed(i_p77_a1, participant_sweeps_kitchen_floor, 32, 49118066).
raw_performed(i_p77_a1, participant_uses_dust_pan_and_brush, 33, 49118066).
raw_performed(i_p77_a1, participant_returns_broom_to_supply_closet, 34, 49123023).
raw_performed(i_p77_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 35, 49123023).
raw_performed(i_p77_a1, participant_dusts_dining_room, 36, 49133097).
raw_performed(i_p77_a1, participant_dusts_living_room, 37, 49136050).
raw_performed(i_p77_a1, participant_dusts_living_room, 38, 49137012).
raw_performed(i_p77_a1, participant_dusts_living_room, 39, 49143038).
raw_performed(i_p77_a1, participant_dusts_living_room, 40, 49144002).
raw_performed(i_p77_a1, participant_dusts_dining_room, 41, 49144066).
raw_performed(i_p77_a1, participant_dusts_dining_room, 42, 49146007).
raw_performed(i_p77_a1, participant_dusts_dining_room, 43, 49146015).
raw_performed(i_p77_a1, participant_dusts_dining_room, 44, 49151038).
raw_performed(i_p77_a1, participant_dusts_dining_room, 45, 49152041).
raw_performed(i_p77_a1, participant_dusts_dining_room, 46, 49157046).
raw_performed(i_p77_a1, participant_dusts_dining_room, 47, 49158012).
raw_performed(i_p77_a1, participant_returns_duster_to_supply_closet, 48, 49163096).

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

