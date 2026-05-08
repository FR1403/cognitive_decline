% ======================================================================
% Paziente 153
% Attività: Sweep the kitchen and dust the living room.
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

action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 18000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 18000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 18000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 240000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 240000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 240000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 240000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 18000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 18000).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p153_a2, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p153_a2, participant_reads_instructions, 1, 36215215).
raw_performed(i_p153_a2, participant_reads_instructions, 2, 36221210).
raw_performed(i_p153_a2, participant_retrieves_materials_from_cupboard_a, 3, 36250076).
raw_performed(i_p153_a2, participant_reads_instructions, 4, 36253132).
raw_performed(i_p153_a2, participant_retrieves_materials_from_cupboard_a, 5, 36270592).
raw_performed(i_p153_a2, participant_reads_instructions, 6, 36275953).
raw_performed(i_p153_a2, participant_reads_instructions, 7, 36295370).
raw_performed(i_p153_a2, participant_reads_instructions, 8, 36331223).
raw_performed(i_p153_a2, participant_reads_instructions, 9, 36348527).
raw_performed(i_p153_a2, participant_reads_instructions, 10, 36378481).
raw_performed(i_p153_a2, participant_reads_instructions, 11, 36392953).
raw_performed(i_p153_a2, participant_reads_instructions, 12, 36399683).
raw_performed(i_p153_a2, participant_reads_instructions, 13, 36416597).
raw_performed(i_p153_a2, participant_reads_instructions, 14, 36431667).
raw_performed(i_p153_a2, participant_reads_instructions, 15, 36435451).
raw_performed(i_p153_a2, participant_reads_instructions, 16, 36440691).
raw_performed(i_p153_a2, participant_reads_instructions, 17, 36444871).
raw_performed(i_p153_a2, participant_reads_instructions, 18, 36450752).
raw_performed(i_p153_a2, participant_reads_instructions, 19, 36458997).
raw_performed(i_p153_a2, participant_reads_instructions, 20, 36480032).
raw_performed(i_p153_a2, participant_reads_instructions, 21, 36491083).
raw_performed(i_p153_a2, participant_reads_instructions, 22, 36516472).
raw_performed(i_p153_a2, participant_reads_instructions, 23, 36527766).
raw_performed(i_p153_a2, participant_reads_instructions, 24, 36535572).
raw_performed(i_p153_a2, participant_reads_instructions, 25, 36544784).
raw_performed(i_p153_a2, participant_fills_dispenser_with_medication, 26, 36556167).
raw_performed(i_p153_a2, participant_fills_dispenser_with_medication, 27, 36563871).

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

