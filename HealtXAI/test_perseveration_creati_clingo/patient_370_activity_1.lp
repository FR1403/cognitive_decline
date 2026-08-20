% ======================================================================
% Paziente 370
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

instance(i_p370_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p370_a1, participant_retrieves_broom_from_supply_closet, 1, 49092264).
raw_performed(i_p370_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 49092264).
raw_performed(i_p370_a1, participant_sweeps_kitchen_floor, 3, 49103414).
raw_performed(i_p370_a1, participant_uses_dust_pan_and_brush, 4, 49103414).
raw_performed(i_p370_a1, participant_sweeps_kitchen_floor, 5, 49107332).
raw_performed(i_p370_a1, participant_uses_dust_pan_and_brush, 6, 49107332).
raw_performed(i_p370_a1, participant_sweeps_kitchen_floor, 7, 49114362).
raw_performed(i_p370_a1, participant_uses_dust_pan_and_brush, 8, 49114362).
raw_performed(i_p370_a1, participant_sweeps_kitchen_floor, 9, 49119972).
raw_performed(i_p370_a1, participant_uses_dust_pan_and_brush, 10, 49119972).
raw_performed(i_p370_a1, participant_sweeps_kitchen_floor, 11, 49134938).
raw_performed(i_p370_a1, participant_uses_dust_pan_and_brush, 12, 49134938).
raw_performed(i_p370_a1, participant_sweeps_kitchen_floor, 13, 49162341).
raw_performed(i_p370_a1, participant_uses_dust_pan_and_brush, 14, 49162341).
raw_performed(i_p370_a1, participant_sweeps_kitchen_floor, 15, 49193575).
raw_performed(i_p370_a1, participant_uses_dust_pan_and_brush, 16, 49193575).
raw_performed(i_p370_a1, participant_sweeps_kitchen_floor, 17, 49196842).
raw_performed(i_p370_a1, participant_uses_dust_pan_and_brush, 18, 49196842).
raw_performed(i_p370_a1, participant_returns_broom_to_supply_closet, 19, 49200398).
raw_performed(i_p370_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 20, 49200398).
raw_performed(i_p370_a1, participant_retrieves_duster_from_supply_closet, 21, 49245610).
raw_performed(i_p370_a1, participant_dusts_living_room, 22, 49269699).
raw_performed(i_p370_a1, participant_dusts_living_room, 23, 49284536).
raw_performed(i_p370_a1, participant_dusts_living_room, 24, 49296939).
raw_performed(i_p370_a1, participant_dusts_living_room, 25, 49303947).
raw_performed(i_p370_a1, participant_dusts_living_room, 26, 49310863).
raw_performed(i_p370_a1, participant_dusts_living_room, 27, 49312291).
raw_performed(i_p370_a1, participant_dusts_living_room, 28, 49320817).
raw_performed(i_p370_a1, participant_dusts_living_room, 29, 49320830).
raw_performed(i_p370_a1, participant_dusts_living_room, 30, 49321241).
raw_performed(i_p370_a1, participant_dusts_dining_room, 31, 49327691).
raw_performed(i_p370_a1, participant_dusts_dining_room, 32, 49331634).
raw_performed(i_p370_a1, participant_dusts_dining_room, 33, 49333243).
raw_performed(i_p370_a1, participant_dusts_dining_room, 34, 49340536).
raw_performed(i_p370_a1, participant_dusts_dining_room, 35, 49342763).
raw_performed(i_p370_a1, participant_dusts_dining_room, 36, 49350208).
raw_performed(i_p370_a1, participant_dusts_dining_room, 37, 49355652).
raw_performed(i_p370_a1, participant_returns_duster_to_supply_closet, 38, 49375442).

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

