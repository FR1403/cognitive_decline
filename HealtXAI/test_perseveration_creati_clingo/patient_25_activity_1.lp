% ======================================================================
% Paziente 25
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

instance(i_p25_a2, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p25_a2, participant_retrieves_materials_from_cupboard_a, 1, 50927974).
raw_performed(i_p25_a2, participant_reads_instructions, 2, 50928879).
raw_performed(i_p25_a2, participant_reads_instructions, 3, 50930554).
raw_performed(i_p25_a2, participant_retrieves_materials_from_cupboard_a, 4, 50931113).
raw_performed(i_p25_a2, participant_reads_instructions, 5, 50937678).
raw_performed(i_p25_a2, participant_reads_instructions, 6, 50946489).
raw_performed(i_p25_a2, participant_reads_instructions, 7, 50948949).
raw_performed(i_p25_a2, participant_reads_instructions, 8, 50956055).
raw_performed(i_p25_a2, participant_reads_instructions, 9, 50962989).
raw_performed(i_p25_a2, participant_reads_instructions, 10, 50976484).
raw_performed(i_p25_a2, participant_reads_instructions, 11, 50985875).
raw_performed(i_p25_a2, participant_reads_instructions, 12, 51011734).
raw_performed(i_p25_a2, participant_reads_instructions, 13, 51014741).
raw_performed(i_p25_a2, participant_reads_instructions, 14, 51016599).
raw_performed(i_p25_a2, participant_reads_instructions, 15, 51020358).
raw_performed(i_p25_a2, participant_reads_instructions, 16, 51022043).
raw_performed(i_p25_a2, participant_reads_instructions, 17, 51027338).
raw_performed(i_p25_a2, participant_reads_instructions, 18, 51033269).
raw_performed(i_p25_a2, participant_reads_instructions, 19, 51036468).
raw_performed(i_p25_a2, participant_reads_instructions, 20, 51043059).
raw_performed(i_p25_a2, participant_reads_instructions, 21, 51046977).
raw_performed(i_p25_a2, participant_reads_instructions, 22, 51049038).
raw_performed(i_p25_a2, participant_reads_instructions, 23, 51053007).
raw_performed(i_p25_a2, participant_reads_instructions, 24, 51062520).
raw_performed(i_p25_a2, participant_reads_instructions, 25, 51069096).
raw_performed(i_p25_a2, participant_reads_instructions, 26, 51080026).
raw_performed(i_p25_a2, participant_reads_instructions, 27, 51139415).
raw_performed(i_p25_a2, participant_reads_instructions, 28, 51146151).
raw_performed(i_p25_a2, participant_reads_instructions, 29, 51148598).
raw_performed(i_p25_a2, participant_reads_instructions, 30, 51159821).
raw_performed(i_p25_a2, participant_reads_instructions, 31, 51165458).
raw_performed(i_p25_a2, participant_reads_instructions, 32, 51168096).
raw_performed(i_p25_a2, participant_reads_instructions, 33, 51176345).
raw_performed(i_p25_a2, participant_reads_instructions, 34, 51188202).
raw_performed(i_p25_a2, participant_reads_instructions, 35, 51194158).
raw_performed(i_p25_a2, participant_reads_instructions, 36, 51196577).
raw_performed(i_p25_a2, participant_reads_instructions, 37, 51199027).
raw_performed(i_p25_a2, participant_reads_instructions, 38, 51202026).
raw_performed(i_p25_a2, participant_reads_instructions, 39, 51212337).
raw_performed(i_p25_a2, participant_fills_dispenser_with_medication, 40, 51223970).
raw_performed(i_p25_a2, participant_fills_dispenser_with_medication, 41, 51226592).
raw_performed(i_p25_a2, participant_fills_dispenser_with_medication, 42, 51228470).
raw_performed(i_p25_a2, participant_fills_dispenser_with_medication, 43, 51230898).
raw_performed(i_p25_a2, participant_fills_dispenser_with_medication, 44, 51231756).
raw_performed(i_p25_a2, participant_fills_dispenser_with_medication, 45, 51234087).
raw_performed(i_p25_a2, participant_fills_dispenser_with_medication, 46, 51236195).

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

