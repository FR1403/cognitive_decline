% ======================================================================
% Paziente 180
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

instance(i_p180_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p180_a1, participant_retrieves_broom_from_supply_closet, 1, 37334069).
raw_performed(i_p180_a1, participant_retrieves_duster_from_supply_closet, 2, 37338000).
raw_performed(i_p180_a1, participant_retrieves_duster_from_supply_closet, 3, 37338032).
raw_performed(i_p180_a1, participant_retrieves_duster_from_supply_closet, 4, 37342097).
raw_performed(i_p180_a1, participant_retrieves_duster_from_supply_closet, 5, 37346053).
raw_performed(i_p180_a1, participant_retrieves_duster_from_supply_closet, 6, 37350041).
raw_performed(i_p180_a1, participant_retrieves_duster_from_supply_closet, 7, 37361008).
raw_performed(i_p180_a1, participant_returns_broom_to_supply_closet, 8, 37370083).
raw_performed(i_p180_a1, participant_retrieves_dust_pan_and_brush_from_closet, 9, 37385062).
raw_performed(i_p180_a1, participant_sweeps_kitchen_floor, 10, 37401010).
raw_performed(i_p180_a1, participant_uses_dust_pan_and_brush, 11, 37401010).
raw_performed(i_p180_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 12, 37410089).
raw_performed(i_p180_a1, participant_retrieves_duster_from_supply_closet, 13, 37422001).
raw_performed(i_p180_a1, participant_dusts_dining_room, 14, 37429001).
raw_performed(i_p180_a1, participant_dusts_dining_room, 15, 37429008).
raw_performed(i_p180_a1, participant_dusts_dining_room, 16, 37437008).
raw_performed(i_p180_a1, participant_dusts_living_room, 17, 37438044).
raw_performed(i_p180_a1, participant_dusts_living_room, 18, 37441072).
raw_performed(i_p180_a1, participant_dusts_living_room, 19, 37441074).
raw_performed(i_p180_a1, participant_dusts_living_room, 20, 37445062).
raw_performed(i_p180_a1, participant_dusts_living_room, 21, 37453031).
raw_performed(i_p180_a1, participant_dusts_living_room, 22, 37454004).
raw_performed(i_p180_a1, participant_dusts_living_room, 23, 37456072).
raw_performed(i_p180_a1, participant_dusts_living_room, 24, 37464000).
raw_performed(i_p180_a1, participant_dusts_living_room, 25, 37468022).
raw_performed(i_p180_a1, participant_dusts_living_room, 26, 37468085).
raw_performed(i_p180_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 27, 37479041).

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

