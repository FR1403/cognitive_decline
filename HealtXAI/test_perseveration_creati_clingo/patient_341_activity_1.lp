% ======================================================================
% Paziente 341
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

instance(i_p341_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p341_a1, participant_retrieves_broom_from_supply_closet, 1, 33013093).
raw_performed(i_p341_a1, participant_sweeps_kitchen_floor, 2, 33018008).
raw_performed(i_p341_a1, participant_sweeps_kitchen_floor, 3, 33020034).
raw_performed(i_p341_a1, participant_sweeps_kitchen_floor, 4, 33023050).
raw_performed(i_p341_a1, participant_sweeps_kitchen_floor, 5, 33027064).
raw_performed(i_p341_a1, participant_sweeps_kitchen_floor, 6, 33030074).
raw_performed(i_p341_a1, participant_sweeps_kitchen_floor, 7, 33038000).
raw_performed(i_p341_a1, participant_sweeps_kitchen_floor, 8, 33044010).
raw_performed(i_p341_a1, participant_sweeps_kitchen_floor, 9, 33049092).
raw_performed(i_p341_a1, participant_retrieves_duster_from_supply_closet, 10, 33054029).
raw_performed(i_p341_a1, participant_retrieves_dust_pan_and_brush_from_closet, 11, 33054029).
raw_performed(i_p341_a1, participant_uses_dust_pan_and_brush, 12, 33054029).
raw_performed(i_p341_a1, participant_returns_broom_to_supply_closet, 13, 33054029).
raw_performed(i_p341_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 14, 33054029).
raw_performed(i_p341_a1, participant_dusts_dining_room, 15, 33100055).
raw_performed(i_p341_a1, participant_dusts_dining_room, 16, 33101041).
raw_performed(i_p341_a1, participant_dusts_dining_room, 17, 33103063).
raw_performed(i_p341_a1, participant_dusts_dining_room, 18, 33110050).
raw_performed(i_p341_a1, participant_dusts_dining_room, 19, 33114002).
raw_performed(i_p341_a1, participant_dusts_dining_room, 20, 33115086).
raw_performed(i_p341_a1, participant_dusts_dining_room, 21, 33123003).
raw_performed(i_p341_a1, participant_dusts_dining_room, 22, 33125000).
raw_performed(i_p341_a1, participant_dusts_living_room, 23, 33127031).
raw_performed(i_p341_a1, participant_dusts_dining_room, 24, 33127034).
raw_performed(i_p341_a1, participant_dusts_living_room, 25, 33127095).
raw_performed(i_p341_a1, participant_dusts_living_room, 26, 33132009).
raw_performed(i_p341_a1, participant_dusts_living_room, 27, 33132016).
raw_performed(i_p341_a1, participant_dusts_living_room, 28, 33140024).
raw_performed(i_p341_a1, participant_dusts_living_room, 29, 33144002).
raw_performed(i_p341_a1, participant_dusts_living_room, 30, 33145026).
raw_performed(i_p341_a1, participant_dusts_living_room, 31, 33163003).
raw_performed(i_p341_a1, participant_dusts_living_room, 32, 33164021).
raw_performed(i_p341_a1, participant_dusts_living_room, 33, 33164024).
raw_performed(i_p341_a1, participant_returns_duster_to_supply_closet, 34, 33170093).

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

