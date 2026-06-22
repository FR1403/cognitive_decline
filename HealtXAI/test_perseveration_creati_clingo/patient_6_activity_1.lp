% ======================================================================
% Paziente 6
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
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 39091).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321534).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 141540).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504615).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 205578).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p6_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p6_a1, participant_retrieves_broom_from_supply_closet, 1, 33690062).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 2, 33701020).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 3, 33703069).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 4, 33710069).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 5, 33712012).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 6, 33717059).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 7, 33722014).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 8, 33722035).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 9, 33724067).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 10, 33731085).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 11, 33742080).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 12, 33744049).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 13, 33754008).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 14, 33755096).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 15, 33763054).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 16, 33767006).
raw_performed(i_p6_a1, participant_sweeps_kitchen_floor, 17, 33767048).
raw_performed(i_p6_a1, participant_returns_broom_to_supply_closet, 18, 33768069).
raw_performed(i_p6_a1, participant_retrieves_dust_pan_and_brush_from_closet, 19, 33780032).
raw_performed(i_p6_a1, participant_uses_dust_pan_and_brush, 20, 33787098).
raw_performed(i_p6_a1, participant_uses_dust_pan_and_brush, 21, 33793004).
raw_performed(i_p6_a1, participant_uses_dust_pan_and_brush, 22, 33803043).
raw_performed(i_p6_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 23, 33808072).
raw_performed(i_p6_a1, participant_dusts_living_room, 24, 33826088).
raw_performed(i_p6_a1, participant_dusts_living_room, 25, 33828021).
raw_performed(i_p6_a1, participant_dusts_living_room, 26, 33841030).
raw_performed(i_p6_a1, participant_dusts_living_room, 27, 33846048).
raw_performed(i_p6_a1, participant_dusts_living_room, 28, 33863000).
raw_performed(i_p6_a1, participant_dusts_living_room, 29, 33889000).
raw_performed(i_p6_a1, participant_dusts_living_room, 30, 33890004).
raw_performed(i_p6_a1, participant_dusts_living_room, 31, 33895080).
raw_performed(i_p6_a1, participant_dusts_living_room, 32, 33905008).
raw_performed(i_p6_a1, participant_dusts_living_room, 33, 33907000).
raw_performed(i_p6_a1, participant_dusts_living_room, 34, 33914001).
raw_performed(i_p6_a1, participant_dusts_living_room, 35, 33914032).
raw_performed(i_p6_a1, participant_dusts_living_room, 36, 33916098).
raw_performed(i_p6_a1, participant_dusts_living_room, 37, 33919058).
raw_performed(i_p6_a1, participant_dusts_living_room, 38, 33926042).
raw_performed(i_p6_a1, participant_dusts_living_room, 39, 33928079).
raw_performed(i_p6_a1, participant_dusts_living_room, 40, 33932080).
raw_performed(i_p6_a1, participant_dusts_living_room, 41, 33933055).
raw_performed(i_p6_a1, participant_dusts_dining_room, 42, 33935036).
raw_performed(i_p6_a1, participant_dusts_dining_room, 43, 33940015).
raw_performed(i_p6_a1, participant_dusts_dining_room, 44, 33942083).
raw_performed(i_p6_a1, participant_dusts_dining_room, 45, 33950090).
raw_performed(i_p6_a1, participant_dusts_dining_room, 46, 33954046).
raw_performed(i_p6_a1, participant_dusts_dining_room, 47, 33965049).
raw_performed(i_p6_a1, participant_dusts_dining_room, 48, 33968034).
raw_performed(i_p6_a1, participant_dusts_dining_room, 49, 33974098).
raw_performed(i_p6_a1, participant_dusts_dining_room, 50, 33985075).
raw_performed(i_p6_a1, participant_dusts_dining_room, 51, 33991063).
raw_performed(i_p6_a1, participant_dusts_dining_room, 52, 33998007).
raw_performed(i_p6_a1, participant_dusts_dining_room, 53, 34000004).
raw_performed(i_p6_a1, participant_returns_duster_to_supply_closet, 54, 34004025).

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

