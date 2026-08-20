% ======================================================================
% Paziente 22
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

instance(i_p22_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p22_a1, participant_retrieves_broom_from_supply_closet, 1, 53580081).
raw_performed(i_p22_a1, participant_retrieves_duster_from_supply_closet, 2, 53580081).
raw_performed(i_p22_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 53580081).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 4, 53592013).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 5, 53592013).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 6, 53596007).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 7, 53596007).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 8, 53596088).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 9, 53596088).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 10, 53604050).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 11, 53604050).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 12, 53618017).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 13, 53618017).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 14, 53622056).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 15, 53622056).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 16, 53635015).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 17, 53635015).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 18, 53642034).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 19, 53642034).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 20, 53649071).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 21, 53649071).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 22, 53667048).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 23, 53667048).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 24, 53672009).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 25, 53672009).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 26, 53681013).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 27, 53681013).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 28, 53685019).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 29, 53685019).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 30, 53692050).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 31, 53692050).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 32, 53695055).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 33, 53695055).
raw_performed(i_p22_a1, participant_sweeps_kitchen_floor, 34, 53700077).
raw_performed(i_p22_a1, participant_uses_dust_pan_and_brush, 35, 53700077).
raw_performed(i_p22_a1, participant_returns_broom_to_supply_closet, 36, 53712045).
raw_performed(i_p22_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 37, 53714076).
raw_performed(i_p22_a1, participant_dusts_dining_room, 38, 53751034).
raw_performed(i_p22_a1, participant_dusts_dining_room, 39, 53754074).
raw_performed(i_p22_a1, participant_dusts_dining_room, 40, 53759033).
raw_performed(i_p22_a1, participant_dusts_dining_room, 41, 53764003).
raw_performed(i_p22_a1, participant_dusts_dining_room, 42, 53775036).
raw_performed(i_p22_a1, participant_dusts_dining_room, 43, 53788048).
raw_performed(i_p22_a1, participant_dusts_dining_room, 44, 53810052).
raw_performed(i_p22_a1, participant_dusts_dining_room, 45, 53820071).
raw_performed(i_p22_a1, participant_dusts_dining_room, 46, 53830007).
raw_performed(i_p22_a1, participant_dusts_dining_room, 47, 53843006).
raw_performed(i_p22_a1, participant_dusts_living_room, 48, 53850079).
raw_performed(i_p22_a1, participant_dusts_dining_room, 49, 53851059).
raw_performed(i_p22_a1, participant_dusts_living_room, 50, 53852017).
raw_performed(i_p22_a1, participant_dusts_living_room, 51, 53852082).
raw_performed(i_p22_a1, participant_dusts_living_room, 52, 53865028).
raw_performed(i_p22_a1, participant_dusts_living_room, 53, 53870003).
raw_performed(i_p22_a1, participant_dusts_living_room, 54, 53871010).
raw_performed(i_p22_a1, participant_dusts_living_room, 55, 53873065).
raw_performed(i_p22_a1, participant_dusts_living_room, 56, 53893007).
raw_performed(i_p22_a1, participant_dusts_living_room, 57, 53898009).
raw_performed(i_p22_a1, participant_dusts_living_room, 58, 53915092).
raw_performed(i_p22_a1, participant_dusts_living_room, 59, 53919037).
raw_performed(i_p22_a1, participant_dusts_living_room, 60, 53922023).
raw_performed(i_p22_a1, participant_dusts_living_room, 61, 53923007).
raw_performed(i_p22_a1, participant_dusts_living_room, 62, 53928019).
raw_performed(i_p22_a1, participant_dusts_living_room, 63, 53930005).
raw_performed(i_p22_a1, participant_dusts_living_room, 64, 53949026).
raw_performed(i_p22_a1, participant_dusts_living_room, 65, 53952017).
raw_performed(i_p22_a1, participant_dusts_living_room, 66, 53954040).
raw_performed(i_p22_a1, participant_dusts_living_room, 67, 53955090).
raw_performed(i_p22_a1, participant_dusts_living_room, 68, 53957012).
raw_performed(i_p22_a1, participant_dusts_living_room, 69, 53959012).
raw_performed(i_p22_a1, participant_dusts_living_room, 70, 53961000).
raw_performed(i_p22_a1, participant_dusts_living_room, 71, 53963073).
raw_performed(i_p22_a1, participant_dusts_living_room, 72, 53965011).
raw_performed(i_p22_a1, participant_dusts_living_room, 73, 53968009).
raw_performed(i_p22_a1, participant_dusts_living_room, 74, 53969003).
raw_performed(i_p22_a1, participant_dusts_living_room, 75, 53971086).
raw_performed(i_p22_a1, participant_dusts_living_room, 76, 53977058).
raw_performed(i_p22_a1, participant_dusts_living_room, 77, 53979077).
raw_performed(i_p22_a1, participant_dusts_living_room, 78, 53980031).
raw_performed(i_p22_a1, participant_dusts_living_room, 79, 53982095).
raw_performed(i_p22_a1, participant_dusts_living_room, 80, 53991028).
raw_performed(i_p22_a1, participant_dusts_living_room, 81, 53992029).
raw_performed(i_p22_a1, participant_dusts_living_room, 82, 53997041).
raw_performed(i_p22_a1, participant_dusts_living_room, 83, 54000004).
raw_performed(i_p22_a1, participant_dusts_living_room, 84, 54000038).
raw_performed(i_p22_a1, participant_dusts_dining_room, 85, 54004042).
raw_performed(i_p22_a1, participant_dusts_dining_room, 86, 54012010).
raw_performed(i_p22_a1, participant_dusts_dining_room, 87, 54018078).
raw_performed(i_p22_a1, participant_dusts_dining_room, 88, 54019017).
raw_performed(i_p22_a1, participant_dusts_dining_room, 89, 54029016).
raw_performed(i_p22_a1, participant_dusts_dining_room, 90, 54035033).
raw_performed(i_p22_a1, participant_dusts_living_room, 91, 54045048).
raw_performed(i_p22_a1, participant_dusts_living_room, 92, 54050087).
raw_performed(i_p22_a1, participant_dusts_dining_room, 93, 54055000).
raw_performed(i_p22_a1, participant_dusts_dining_room, 94, 54064008).
raw_performed(i_p22_a1, participant_dusts_dining_room, 95, 54066018).
raw_performed(i_p22_a1, participant_dusts_dining_room, 96, 54072055).
raw_performed(i_p22_a1, participant_dusts_dining_room, 97, 54073065).
raw_performed(i_p22_a1, participant_returns_duster_to_supply_closet, 98, 54076091).

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

