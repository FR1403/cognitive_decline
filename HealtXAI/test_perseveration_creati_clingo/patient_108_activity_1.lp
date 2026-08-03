% ======================================================================
% Paziente 108
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

instance(i_p108_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p108_a1, participant_retrieves_broom_from_supply_closet, 1, 34048741).
raw_performed(i_p108_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34056365).
raw_performed(i_p108_a1, participant_sweeps_kitchen_floor, 3, 34062926).
raw_performed(i_p108_a1, participant_sweeps_kitchen_floor, 4, 34073223).
raw_performed(i_p108_a1, participant_sweeps_kitchen_floor, 5, 34078514).
raw_performed(i_p108_a1, participant_sweeps_kitchen_floor, 6, 34081032).
raw_performed(i_p108_a1, participant_uses_dust_pan_and_brush, 7, 34085532).
raw_performed(i_p108_a1, participant_uses_dust_pan_and_brush, 8, 34093978).
raw_performed(i_p108_a1, participant_returns_broom_to_supply_closet, 9, 34105659).
raw_performed(i_p108_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 10, 34105659).
raw_performed(i_p108_a1, participant_retrieves_duster_from_supply_closet, 11, 34119702).
raw_performed(i_p108_a1, participant_dusts_dining_room, 12, 34126427).
raw_performed(i_p108_a1, participant_dusts_dining_room, 13, 34136557).
raw_performed(i_p108_a1, participant_dusts_dining_room, 14, 34146110).
raw_performed(i_p108_a1, participant_dusts_dining_room, 15, 34148272).
raw_performed(i_p108_a1, participant_dusts_dining_room, 16, 34152225).
raw_performed(i_p108_a1, participant_dusts_dining_room, 17, 34153031).
raw_performed(i_p108_a1, participant_dusts_dining_room, 18, 34154856).
raw_performed(i_p108_a1, participant_dusts_living_room, 19, 34164238).
raw_performed(i_p108_a1, participant_dusts_living_room, 20, 34164605).
raw_performed(i_p108_a1, participant_dusts_living_room, 21, 34169757).
raw_performed(i_p108_a1, participant_dusts_living_room, 22, 34173196).
raw_performed(i_p108_a1, participant_dusts_living_room, 23, 34190682).
raw_performed(i_p108_a1, participant_dusts_living_room, 24, 34192644).
raw_performed(i_p108_a1, participant_dusts_living_room, 25, 34193706).
raw_performed(i_p108_a1, participant_dusts_living_room, 26, 34200972).
raw_performed(i_p108_a1, participant_dusts_living_room, 27, 34203759).
raw_performed(i_p108_a1, participant_dusts_living_room, 28, 34211746).
raw_performed(i_p108_a1, participant_dusts_living_room, 29, 34212575).
raw_performed(i_p108_a1, participant_dusts_living_room, 30, 34219430).
raw_performed(i_p108_a1, participant_dusts_living_room, 31, 34220332).
raw_performed(i_p108_a1, participant_returns_duster_to_supply_closet, 32, 34232972).

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

