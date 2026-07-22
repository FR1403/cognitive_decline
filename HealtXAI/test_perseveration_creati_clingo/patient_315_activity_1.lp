% ======================================================================
% Paziente 315
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

instance(i_p315_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p315_a1, participant_retrieves_broom_from_supply_closet, 1, 47667081).
raw_performed(i_p315_a1, participant_retrieves_duster_from_supply_closet, 2, 47667081).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 3, 47680091).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 4, 47683002).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 5, 47696079).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 6, 47700037).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 7, 47705060).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 8, 47716067).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 9, 47717027).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 10, 47721048).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 11, 47746050).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 12, 47750069).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 13, 47751055).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 14, 47761097).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 15, 47771076).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 16, 47777021).
raw_performed(i_p315_a1, participant_sweeps_kitchen_floor, 17, 47786059).
raw_performed(i_p315_a1, participant_retrieves_dust_pan_and_brush_from_closet, 18, 47788088).
raw_performed(i_p315_a1, participant_uses_dust_pan_and_brush, 19, 47795090).
raw_performed(i_p315_a1, participant_uses_dust_pan_and_brush, 20, 47798063).
raw_performed(i_p315_a1, participant_uses_dust_pan_and_brush, 21, 47808004).
raw_performed(i_p315_a1, participant_uses_dust_pan_and_brush, 22, 47827039).
raw_performed(i_p315_a1, participant_uses_dust_pan_and_brush, 23, 47833066).
raw_performed(i_p315_a1, participant_uses_dust_pan_and_brush, 24, 47847068).
raw_performed(i_p315_a1, participant_uses_dust_pan_and_brush, 25, 47849016).
raw_performed(i_p315_a1, participant_returns_broom_to_supply_closet, 26, 47861074).
raw_performed(i_p315_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 27, 47873087).
raw_performed(i_p315_a1, participant_dusts_dining_room, 28, 47967018).
raw_performed(i_p315_a1, participant_dusts_dining_room, 29, 47969011).
raw_performed(i_p315_a1, participant_dusts_dining_room, 30, 47971043).
raw_performed(i_p315_a1, participant_dusts_dining_room, 31, 47974013).
raw_performed(i_p315_a1, participant_dusts_dining_room, 32, 47979082).
raw_performed(i_p315_a1, participant_dusts_dining_room, 33, 47984023).
raw_performed(i_p315_a1, participant_dusts_dining_room, 34, 47986005).
raw_performed(i_p315_a1, participant_dusts_living_room, 35, 47987039).
raw_performed(i_p315_a1, participant_dusts_living_room, 36, 47988001).
raw_performed(i_p315_a1, participant_dusts_living_room, 37, 47989087).
raw_performed(i_p315_a1, participant_dusts_living_room, 38, 47997060).
raw_performed(i_p315_a1, participant_dusts_living_room, 39, 48001083).
raw_performed(i_p315_a1, participant_dusts_living_room, 40, 48007011).
raw_performed(i_p315_a1, participant_dusts_living_room, 41, 48009001).
raw_performed(i_p315_a1, participant_dusts_living_room, 42, 48012003).
raw_performed(i_p315_a1, participant_dusts_living_room, 43, 48026075).
raw_performed(i_p315_a1, participant_dusts_living_room, 44, 48035000).
raw_performed(i_p315_a1, participant_dusts_living_room, 45, 48046085).
raw_performed(i_p315_a1, participant_dusts_living_room, 46, 48047046).
raw_performed(i_p315_a1, participant_returns_duster_to_supply_closet, 47, 48061046).

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

