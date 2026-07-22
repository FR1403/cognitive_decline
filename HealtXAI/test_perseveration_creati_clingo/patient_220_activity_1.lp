% ======================================================================
% Paziente 220
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

instance(i_p220_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p220_a1, participant_retrieves_broom_from_supply_closet, 1, 46376080).
raw_performed(i_p220_a1, participant_retrieves_duster_from_supply_closet, 2, 46376080).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 3, 46399004).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 4, 46401074).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 5, 46407079).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 6, 46408041).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 7, 46421066).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 8, 46426000).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 9, 46441061).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 10, 46442026).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 11, 46450082).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 12, 46455059).
raw_performed(i_p220_a1, participant_sweeps_kitchen_floor, 13, 46467020).
raw_performed(i_p220_a1, participant_retrieves_dust_pan_and_brush_from_closet, 14, 46468043).
raw_performed(i_p220_a1, participant_uses_dust_pan_and_brush, 15, 46473075).
raw_performed(i_p220_a1, participant_uses_dust_pan_and_brush, 16, 46475001).
raw_performed(i_p220_a1, participant_uses_dust_pan_and_brush, 17, 46482004).
raw_performed(i_p220_a1, participant_returns_broom_to_supply_closet, 18, 46483010).
raw_performed(i_p220_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 19, 46513003).
raw_performed(i_p220_a1, participant_dusts_dining_room, 20, 46528027).
raw_performed(i_p220_a1, participant_dusts_dining_room, 21, 46529090).
raw_performed(i_p220_a1, participant_dusts_dining_room, 22, 46538025).
raw_performed(i_p220_a1, participant_dusts_dining_room, 23, 46549074).
raw_performed(i_p220_a1, participant_dusts_dining_room, 24, 46553026).
raw_performed(i_p220_a1, participant_dusts_dining_room, 25, 46556013).
raw_performed(i_p220_a1, participant_dusts_dining_room, 26, 46557020).
raw_performed(i_p220_a1, participant_dusts_living_room, 27, 46557085).
raw_performed(i_p220_a1, participant_dusts_living_room, 28, 46558049).
raw_performed(i_p220_a1, participant_dusts_living_room, 29, 46559081).
raw_performed(i_p220_a1, participant_dusts_living_room, 30, 46561000).
raw_performed(i_p220_a1, participant_dusts_living_room, 31, 46562068).
raw_performed(i_p220_a1, participant_dusts_living_room, 32, 46563050).
raw_performed(i_p220_a1, participant_dusts_living_room, 33, 46569040).
raw_performed(i_p220_a1, participant_dusts_living_room, 34, 46572050).
raw_performed(i_p220_a1, participant_dusts_living_room, 35, 46573097).
raw_performed(i_p220_a1, participant_dusts_living_room, 36, 46577093).
raw_performed(i_p220_a1, participant_dusts_living_room, 37, 46583095).
raw_performed(i_p220_a1, participant_dusts_living_room, 38, 46595017).
raw_performed(i_p220_a1, participant_dusts_living_room, 39, 46601063).
raw_performed(i_p220_a1, participant_dusts_living_room, 40, 46611085).
raw_performed(i_p220_a1, participant_dusts_living_room, 41, 46612089).
raw_performed(i_p220_a1, participant_dusts_living_room, 42, 46617050).
raw_performed(i_p220_a1, participant_dusts_living_room, 43, 46620000).
raw_performed(i_p220_a1, participant_dusts_living_room, 44, 46621005).
raw_performed(i_p220_a1, participant_returns_duster_to_supply_closet, 45, 46626083).

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

