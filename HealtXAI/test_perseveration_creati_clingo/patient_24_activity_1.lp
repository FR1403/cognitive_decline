% ======================================================================
% Paziente 24
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

instance(i_p24_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p24_a1, participant_retrieves_broom_from_supply_closet, 1, 49516541).
raw_performed(i_p24_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 49525324).
raw_performed(i_p24_a1, participant_sweeps_kitchen_floor, 3, 49534706).
raw_performed(i_p24_a1, participant_sweeps_kitchen_floor, 4, 49545904).
raw_performed(i_p24_a1, participant_sweeps_kitchen_floor, 5, 49551283).
raw_performed(i_p24_a1, participant_sweeps_kitchen_floor, 6, 49560790).
raw_performed(i_p24_a1, participant_sweeps_kitchen_floor, 7, 49562231).
raw_performed(i_p24_a1, participant_sweeps_kitchen_floor, 8, 49566267).
raw_performed(i_p24_a1, participant_sweeps_kitchen_floor, 9, 49579202).
raw_performed(i_p24_a1, participant_sweeps_kitchen_floor, 10, 49598330).
raw_performed(i_p24_a1, participant_uses_dust_pan_and_brush, 11, 49607582).
raw_performed(i_p24_a1, participant_uses_dust_pan_and_brush, 12, 49609033).
raw_performed(i_p24_a1, participant_returns_broom_to_supply_closet, 13, 49623326).
raw_performed(i_p24_a1, participant_retrieves_duster_from_supply_closet, 14, 49643918).
raw_performed(i_p24_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 15, 49649332).
raw_performed(i_p24_a1, participant_dusts_dining_room, 16, 49653488).
raw_performed(i_p24_a1, participant_dusts_dining_room, 17, 49654483).
raw_performed(i_p24_a1, participant_dusts_dining_room, 18, 49656475).
raw_performed(i_p24_a1, participant_dusts_dining_room, 19, 49659017).
raw_performed(i_p24_a1, participant_dusts_dining_room, 20, 49660487).
raw_performed(i_p24_a1, participant_dusts_dining_room, 21, 49667247).
raw_performed(i_p24_a1, participant_dusts_dining_room, 22, 49668782).
raw_performed(i_p24_a1, participant_dusts_dining_room, 23, 49672819).
raw_performed(i_p24_a1, participant_dusts_dining_room, 24, 49683101).
raw_performed(i_p24_a1, participant_dusts_dining_room, 25, 49687597).
raw_performed(i_p24_a1, participant_dusts_dining_room, 26, 49694172).
raw_performed(i_p24_a1, participant_dusts_dining_room, 27, 49697240).
raw_performed(i_p24_a1, participant_dusts_dining_room, 28, 49713230).
raw_performed(i_p24_a1, participant_dusts_dining_room, 29, 49719074).
raw_performed(i_p24_a1, participant_dusts_dining_room, 30, 49722285).
raw_performed(i_p24_a1, participant_dusts_living_room, 31, 49738835).
raw_performed(i_p24_a1, participant_dusts_living_room, 32, 49739872).
raw_performed(i_p24_a1, participant_dusts_living_room, 33, 49747271).
raw_performed(i_p24_a1, participant_dusts_living_room, 34, 49759169).
raw_performed(i_p24_a1, participant_dusts_living_room, 35, 49775520).
raw_performed(i_p24_a1, participant_returns_duster_to_supply_closet, 36, 49794286).

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

