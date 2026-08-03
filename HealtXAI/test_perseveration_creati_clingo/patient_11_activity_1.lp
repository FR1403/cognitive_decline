% ======================================================================
% Paziente 11
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

instance(i_p11_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p11_a1, participant_retrieves_broom_from_supply_closet, 1, 31945060).
raw_performed(i_p11_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 31945060).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 3, 31958035).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 4, 31958035).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 5, 31962043).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 6, 31962043).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 7, 31972045).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 8, 31972045).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 9, 31976041).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 10, 31976041).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 11, 31983047).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 12, 31983047).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 13, 31985037).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 14, 31985037).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 15, 31991046).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 16, 31991046).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 17, 31993035).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 18, 31993035).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 19, 32007011).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 20, 32007011).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 21, 32012096).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 22, 32012096).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 23, 32020030).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 24, 32020030).
raw_performed(i_p11_a1, participant_sweeps_kitchen_floor, 25, 32032053).
raw_performed(i_p11_a1, participant_uses_dust_pan_and_brush, 26, 32032053).
raw_performed(i_p11_a1, participant_retrieves_duster_from_supply_closet, 27, 32033096).
raw_performed(i_p11_a1, participant_returns_broom_to_supply_closet, 28, 32033096).
raw_performed(i_p11_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 29, 32033096).
raw_performed(i_p11_a1, participant_dusts_dining_room, 30, 32062067).
raw_performed(i_p11_a1, participant_dusts_dining_room, 31, 32077082).
raw_performed(i_p11_a1, participant_dusts_dining_room, 32, 32078046).
raw_performed(i_p11_a1, participant_dusts_dining_room, 33, 32098032).
raw_performed(i_p11_a1, participant_dusts_dining_room, 34, 32100018).
raw_performed(i_p11_a1, participant_dusts_dining_room, 35, 32111000).
raw_performed(i_p11_a1, participant_dusts_living_room, 36, 32117078).
raw_performed(i_p11_a1, participant_dusts_dining_room, 37, 32122006).
raw_performed(i_p11_a1, participant_dusts_dining_room, 38, 32127082).
raw_performed(i_p11_a1, participant_dusts_dining_room, 39, 32129070).
raw_performed(i_p11_a1, participant_dusts_dining_room, 40, 32131058).
raw_performed(i_p11_a1, participant_dusts_living_room, 41, 32132042).
raw_performed(i_p11_a1, participant_dusts_living_room, 42, 32134033).
raw_performed(i_p11_a1, participant_dusts_living_room, 43, 32134094).
raw_performed(i_p11_a1, participant_dusts_living_room, 44, 32141057).
raw_performed(i_p11_a1, participant_dusts_living_room, 45, 32168033).
raw_performed(i_p11_a1, participant_dusts_living_room, 46, 32171072).
raw_performed(i_p11_a1, participant_dusts_living_room, 47, 32173001).
raw_performed(i_p11_a1, participant_dusts_living_room, 48, 32174064).
raw_performed(i_p11_a1, participant_dusts_living_room, 49, 32177005).
raw_performed(i_p11_a1, participant_dusts_living_room, 50, 32187035).
raw_performed(i_p11_a1, participant_dusts_living_room, 51, 32189024).
raw_performed(i_p11_a1, participant_dusts_living_room, 52, 32191053).
raw_performed(i_p11_a1, participant_dusts_living_room, 53, 32192052).
raw_performed(i_p11_a1, participant_dusts_dining_room, 54, 32193015).
raw_performed(i_p11_a1, participant_returns_duster_to_supply_closet, 55, 32199062).

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

