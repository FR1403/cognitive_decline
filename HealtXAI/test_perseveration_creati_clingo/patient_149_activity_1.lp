% ======================================================================
% Paziente 149
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

instance(i_p149_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p149_a1, participant_retrieves_broom_from_supply_closet, 1, 32185038).
raw_performed(i_p149_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 32185038).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 3, 32196080).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 4, 32197042).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 5, 32202023).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 6, 32206060).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 7, 32216048).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 8, 32221052).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 9, 32224023).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 10, 32227061).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 11, 32233090).
raw_performed(i_p149_a1, participant_sweeps_kitchen_floor, 12, 32242028).
raw_performed(i_p149_a1, participant_uses_dust_pan_and_brush, 13, 32250022).
raw_performed(i_p149_a1, participant_returns_broom_to_supply_closet, 14, 32252036).
raw_performed(i_p149_a1, participant_retrieves_duster_from_supply_closet, 15, 32259087).
raw_performed(i_p149_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 16, 32259087).
raw_performed(i_p149_a1, participant_dusts_dining_room, 17, 32281068).
raw_performed(i_p149_a1, participant_dusts_dining_room, 18, 32282029).
raw_performed(i_p149_a1, participant_dusts_dining_room, 19, 32285085).
raw_performed(i_p149_a1, participant_dusts_dining_room, 20, 32288077).
raw_performed(i_p149_a1, participant_dusts_dining_room, 21, 32298001).
raw_performed(i_p149_a1, participant_dusts_dining_room, 22, 32304025).
raw_performed(i_p149_a1, participant_dusts_dining_room, 23, 32316019).
raw_performed(i_p149_a1, participant_dusts_dining_room, 24, 32318009).
raw_performed(i_p149_a1, participant_dusts_dining_room, 25, 32320061).
raw_performed(i_p149_a1, participant_dusts_dining_room, 26, 32321043).
raw_performed(i_p149_a1, participant_dusts_living_room, 27, 32323070).
raw_performed(i_p149_a1, participant_dusts_living_room, 28, 32324000).
raw_performed(i_p149_a1, participant_dusts_living_room, 29, 32326046).
raw_performed(i_p149_a1, participant_dusts_living_room, 30, 32328096).
raw_performed(i_p149_a1, participant_dusts_living_room, 31, 32333004).
raw_performed(i_p149_a1, participant_dusts_living_room, 32, 32336045).
raw_performed(i_p149_a1, participant_dusts_living_room, 33, 32339039).
raw_performed(i_p149_a1, participant_dusts_living_room, 34, 32350075).
raw_performed(i_p149_a1, participant_dusts_living_room, 35, 32351079).
raw_performed(i_p149_a1, participant_dusts_living_room, 36, 32357088).
raw_performed(i_p149_a1, participant_dusts_living_room, 37, 32358096).
raw_performed(i_p149_a1, participant_dusts_living_room, 38, 32360045).
raw_performed(i_p149_a1, participant_dusts_living_room, 39, 32361029).
raw_performed(i_p149_a1, participant_returns_duster_to_supply_closet, 40, 32366038).

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

