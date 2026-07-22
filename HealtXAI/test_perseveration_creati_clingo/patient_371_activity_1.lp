% ======================================================================
% Paziente 371
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

instance(i_p371_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p371_a1, participant_retrieves_broom_from_supply_closet, 1, 48404629).
raw_performed(i_p371_a1, participant_retrieves_duster_from_supply_closet, 2, 48404629).
raw_performed(i_p371_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 48404629).
raw_performed(i_p371_a1, participant_sweeps_kitchen_floor, 4, 48426732).
raw_performed(i_p371_a1, participant_sweeps_kitchen_floor, 5, 48428631).
raw_performed(i_p371_a1, participant_sweeps_kitchen_floor, 6, 48435351).
raw_performed(i_p371_a1, participant_sweeps_kitchen_floor, 7, 48443356).
raw_performed(i_p371_a1, participant_sweeps_kitchen_floor, 8, 48450111).
raw_performed(i_p371_a1, participant_sweeps_kitchen_floor, 9, 48450963).
raw_performed(i_p371_a1, participant_sweeps_kitchen_floor, 10, 48455411).
raw_performed(i_p371_a1, participant_returns_broom_to_supply_closet, 11, 48463562).
raw_performed(i_p371_a1, participant_uses_dust_pan_and_brush, 12, 48471139).
raw_performed(i_p371_a1, participant_uses_dust_pan_and_brush, 13, 48498522).
raw_performed(i_p371_a1, participant_uses_dust_pan_and_brush, 14, 48499534).
raw_performed(i_p371_a1, participant_uses_dust_pan_and_brush, 15, 48502017).
raw_performed(i_p371_a1, participant_dusts_dining_room, 16, 48502834).
raw_performed(i_p371_a1, participant_dusts_dining_room, 17, 48509272).
raw_performed(i_p371_a1, participant_dusts_dining_room, 18, 48518431).
raw_performed(i_p371_a1, participant_dusts_dining_room, 19, 48519260).
raw_performed(i_p371_a1, participant_dusts_dining_room, 20, 48525954).
raw_performed(i_p371_a1, participant_dusts_dining_room, 21, 48526582).
raw_performed(i_p371_a1, participant_dusts_dining_room, 22, 48530148).
raw_performed(i_p371_a1, participant_dusts_dining_room, 23, 48530196).
raw_performed(i_p371_a1, participant_dusts_living_room, 24, 48531235).
raw_performed(i_p371_a1, participant_dusts_living_room, 25, 48531283).
raw_performed(i_p371_a1, participant_dusts_living_room, 26, 48534555).
raw_performed(i_p371_a1, participant_dusts_living_room, 27, 48539273).
raw_performed(i_p371_a1, participant_dusts_living_room, 28, 48541662).
raw_performed(i_p371_a1, participant_dusts_living_room, 29, 48542239).
raw_performed(i_p371_a1, participant_dusts_living_room, 30, 48546206).
raw_performed(i_p371_a1, participant_dusts_living_room, 31, 48546278).
raw_performed(i_p371_a1, participant_dusts_living_room, 32, 48553186).
raw_performed(i_p371_a1, participant_dusts_living_room, 33, 48553210).
raw_performed(i_p371_a1, participant_dusts_living_room, 34, 48560678).
raw_performed(i_p371_a1, participant_dusts_living_room, 35, 48560702).
raw_performed(i_p371_a1, participant_returns_duster_to_supply_closet, 36, 48568707).
raw_performed(i_p371_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 37, 48568707).

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

