% ======================================================================
% Paziente 200
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

instance(i_p200_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p200_a1, participant_retrieves_broom_from_supply_closet, 1, 50324093).
raw_performed(i_p200_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 50324093).
raw_performed(i_p200_a1, participant_sweeps_kitchen_floor, 3, 50336029).
raw_performed(i_p200_a1, participant_sweeps_kitchen_floor, 4, 50337075).
raw_performed(i_p200_a1, participant_sweeps_kitchen_floor, 5, 50341054).
raw_performed(i_p200_a1, participant_sweeps_kitchen_floor, 6, 50351097).
raw_performed(i_p200_a1, participant_sweeps_kitchen_floor, 7, 50362003).
raw_performed(i_p200_a1, participant_sweeps_kitchen_floor, 8, 50365003).
raw_performed(i_p200_a1, participant_uses_dust_pan_and_brush, 9, 50380007).
raw_performed(i_p200_a1, participant_uses_dust_pan_and_brush, 10, 50392025).
raw_performed(i_p200_a1, participant_returns_broom_to_supply_closet, 11, 50404083).
raw_performed(i_p200_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 12, 50404083).
raw_performed(i_p200_a1, participant_retrieves_duster_from_supply_closet, 13, 50423061).
raw_performed(i_p200_a1, participant_retrieves_duster_from_supply_closet, 14, 50434008).
raw_performed(i_p200_a1, participant_dusts_living_room, 15, 50453059).
raw_performed(i_p200_a1, participant_dusts_living_room, 16, 50455003).
raw_performed(i_p200_a1, participant_dusts_living_room, 17, 50472062).
raw_performed(i_p200_a1, participant_dusts_living_room, 18, 50490000).
raw_performed(i_p200_a1, participant_dusts_living_room, 19, 50490072).
raw_performed(i_p200_a1, participant_dusts_living_room, 20, 50507062).
raw_performed(i_p200_a1, participant_dusts_living_room, 21, 50514066).
raw_performed(i_p200_a1, participant_dusts_living_room, 22, 50518044).
raw_performed(i_p200_a1, participant_dusts_living_room, 23, 50522004).
raw_performed(i_p200_a1, participant_dusts_living_room, 24, 50529056).
raw_performed(i_p200_a1, participant_dusts_living_room, 25, 50532067).
raw_performed(i_p200_a1, participant_dusts_living_room, 26, 50533072).
raw_performed(i_p200_a1, participant_dusts_living_room, 27, 50542010).
raw_performed(i_p200_a1, participant_dusts_living_room, 28, 50542073).
raw_performed(i_p200_a1, participant_dusts_living_room, 29, 50553054).
raw_performed(i_p200_a1, participant_dusts_living_room, 30, 50555000).
raw_performed(i_p200_a1, participant_dusts_living_room, 31, 50566024).
raw_performed(i_p200_a1, participant_dusts_living_room, 32, 50568007).
raw_performed(i_p200_a1, participant_dusts_living_room, 33, 50569003).
raw_performed(i_p200_a1, participant_dusts_dining_room, 34, 50571046).
raw_performed(i_p200_a1, participant_dusts_dining_room, 35, 50576009).
raw_performed(i_p200_a1, participant_dusts_dining_room, 36, 50577099).
raw_performed(i_p200_a1, participant_dusts_living_room, 37, 50580094).
raw_performed(i_p200_a1, participant_dusts_dining_room, 38, 50591032).
raw_performed(i_p200_a1, participant_dusts_dining_room, 39, 50601061).
raw_performed(i_p200_a1, participant_dusts_dining_room, 40, 50603053).
raw_performed(i_p200_a1, participant_dusts_dining_room, 41, 50605082).
raw_performed(i_p200_a1, participant_dusts_dining_room, 42, 50611085).
raw_performed(i_p200_a1, participant_dusts_dining_room, 43, 50621071).
raw_performed(i_p200_a1, participant_dusts_dining_room, 44, 50630048).
raw_performed(i_p200_a1, participant_dusts_dining_room, 45, 50642039).
raw_performed(i_p200_a1, participant_dusts_dining_room, 46, 50645010).
raw_performed(i_p200_a1, participant_dusts_living_room, 47, 50651057).
raw_performed(i_p200_a1, participant_dusts_dining_room, 48, 50655074).
raw_performed(i_p200_a1, participant_dusts_dining_room, 49, 50659071).
raw_performed(i_p200_a1, participant_returns_duster_to_supply_closet, 50, 50664031).
raw_performed(i_p200_a1, participant_returns_duster_to_supply_closet, 51, 50684014).
raw_performed(i_p200_a1, participant_returns_duster_to_supply_closet, 52, 50691026).
raw_performed(i_p200_a1, participant_returns_duster_to_supply_closet, 53, 50695037).

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

