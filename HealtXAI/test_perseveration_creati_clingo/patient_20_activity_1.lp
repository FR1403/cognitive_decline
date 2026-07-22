% ======================================================================
% Paziente 20
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

instance(i_p20_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p20_a1, participant_retrieves_broom_from_supply_closet, 1, 34206054).
raw_performed(i_p20_a1, participant_retrieves_duster_from_supply_closet, 2, 34206054).
raw_performed(i_p20_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 34206054).
raw_performed(i_p20_a1, participant_dusts_living_room, 4, 34245086).
raw_performed(i_p20_a1, participant_dusts_living_room, 5, 34249046).
raw_performed(i_p20_a1, participant_dusts_living_room, 6, 34250010).
raw_performed(i_p20_a1, participant_dusts_living_room, 7, 34257002).
raw_performed(i_p20_a1, participant_dusts_living_room, 8, 34269058).
raw_performed(i_p20_a1, participant_dusts_living_room, 9, 34286046).
raw_performed(i_p20_a1, participant_dusts_living_room, 10, 34287070).
raw_performed(i_p20_a1, participant_dusts_living_room, 11, 34291053).
raw_performed(i_p20_a1, participant_dusts_living_room, 12, 34294000).
raw_performed(i_p20_a1, participant_dusts_living_room, 13, 34295009).
raw_performed(i_p20_a1, participant_dusts_living_room, 14, 34299085).
raw_performed(i_p20_a1, participant_dusts_living_room, 15, 34300008).
raw_performed(i_p20_a1, participant_dusts_living_room, 16, 34301063).
raw_performed(i_p20_a1, participant_dusts_living_room, 17, 34305049).
raw_performed(i_p20_a1, participant_dusts_living_room, 18, 34307015).
raw_performed(i_p20_a1, participant_dusts_living_room, 19, 34308002).
raw_performed(i_p20_a1, participant_dusts_dining_room, 20, 34309074).
raw_performed(i_p20_a1, participant_dusts_dining_room, 21, 34312097).
raw_performed(i_p20_a1, participant_dusts_dining_room, 22, 34313052).
raw_performed(i_p20_a1, participant_dusts_dining_room, 23, 34318071).
raw_performed(i_p20_a1, participant_dusts_dining_room, 24, 34331090).
raw_performed(i_p20_a1, participant_dusts_dining_room, 25, 34332083).
raw_performed(i_p20_a1, participant_returns_duster_to_supply_closet, 26, 34336040).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 27, 34342033).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 28, 34342033).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 29, 34343042).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 30, 34343042).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 31, 34345048).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 32, 34345048).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 33, 34348017).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 34, 34348017).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 35, 34354036).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 36, 34354036).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 37, 34369063).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 38, 34369063).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 39, 34388087).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 40, 34388087).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 41, 34398051).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 42, 34398051).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 43, 34399014).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 44, 34399014).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 45, 34402036).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 46, 34402036).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 47, 34408006).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 48, 34408006).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 49, 34439034).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 50, 34439034).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 51, 34452010).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 52, 34452010).
raw_performed(i_p20_a1, participant_sweeps_kitchen_floor, 53, 34461013).
raw_performed(i_p20_a1, participant_uses_dust_pan_and_brush, 54, 34461013).
raw_performed(i_p20_a1, participant_returns_broom_to_supply_closet, 55, 34464069).
raw_performed(i_p20_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 56, 34464069).

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

