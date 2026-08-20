% ======================================================================
% Paziente 324
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

instance(i_p324_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p324_a1, participant_retrieves_broom_from_supply_closet, 1, 34210296).
raw_performed(i_p324_a1, participant_retrieves_duster_from_supply_closet, 2, 34210296).
raw_performed(i_p324_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 34210296).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 4, 34210392).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 5, 34210392).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 6, 34223754).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 7, 34223754).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 8, 34225376).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 9, 34225376).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 10, 34230205).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 11, 34230205).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 12, 34236924).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 13, 34236924).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 14, 34238395).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 15, 34238395).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 16, 34240850).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 17, 34240850).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 18, 34256874).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 19, 34256874).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 20, 34275252).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 21, 34275252).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 22, 34282684).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 23, 34282684).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 24, 34286493).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 25, 34286493).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 26, 34287144).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 27, 34287144).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 28, 34288616).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 29, 34288616).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 30, 34324555).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 31, 34324555).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 32, 34345875).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 33, 34345875).
raw_performed(i_p324_a1, participant_sweeps_kitchen_floor, 34, 34359838).
raw_performed(i_p324_a1, participant_uses_dust_pan_and_brush, 35, 34359838).
raw_performed(i_p324_a1, participant_returns_broom_to_supply_closet, 36, 34363078).
raw_performed(i_p324_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 37, 34363078).
raw_performed(i_p324_a1, participant_dusts_dining_room, 38, 34409071).
raw_performed(i_p324_a1, participant_dusts_dining_room, 39, 34409095).
raw_performed(i_p324_a1, participant_dusts_dining_room, 40, 34413495).
raw_performed(i_p324_a1, participant_dusts_dining_room, 41, 34418191).
raw_performed(i_p324_a1, participant_dusts_dining_room, 42, 34420093).
raw_performed(i_p324_a1, participant_dusts_dining_room, 43, 34443158).
raw_performed(i_p324_a1, participant_dusts_dining_room, 44, 34443203).
raw_performed(i_p324_a1, participant_dusts_dining_room, 45, 34445567).
raw_performed(i_p324_a1, participant_dusts_dining_room, 46, 34453175).
raw_performed(i_p324_a1, participant_dusts_living_room, 47, 34456911).
raw_performed(i_p324_a1, participant_dusts_living_room, 48, 34461516).
raw_performed(i_p324_a1, participant_dusts_dining_room, 49, 34462561).
raw_performed(i_p324_a1, participant_dusts_living_room, 50, 34464857).
raw_performed(i_p324_a1, participant_dusts_living_room, 51, 34482261).
raw_performed(i_p324_a1, participant_dusts_living_room, 52, 34501162).
raw_performed(i_p324_a1, participant_dusts_living_room, 53, 34516887).
raw_performed(i_p324_a1, participant_dusts_living_room, 54, 34527493).
raw_performed(i_p324_a1, participant_dusts_living_room, 55, 34544402).
raw_performed(i_p324_a1, participant_dusts_living_room, 56, 34555642).
raw_performed(i_p324_a1, participant_dusts_living_room, 57, 34556504).
raw_performed(i_p324_a1, participant_dusts_living_room, 58, 34557094).
raw_performed(i_p324_a1, participant_dusts_living_room, 59, 34564863).
raw_performed(i_p324_a1, participant_dusts_living_room, 60, 34567402).
raw_performed(i_p324_a1, participant_dusts_dining_room, 61, 34567429).
raw_performed(i_p324_a1, participant_dusts_dining_room, 62, 34568010).
raw_performed(i_p324_a1, participant_dusts_dining_room, 63, 34571448).
raw_performed(i_p324_a1, participant_dusts_dining_room, 64, 34574841).
raw_performed(i_p324_a1, participant_dusts_dining_room, 65, 34580294).
raw_performed(i_p324_a1, participant_dusts_dining_room, 66, 34586822).
raw_performed(i_p324_a1, participant_dusts_dining_room, 67, 34587880).
raw_performed(i_p324_a1, participant_dusts_dining_room, 68, 34590475).
raw_performed(i_p324_a1, participant_returns_duster_to_supply_closet, 69, 34598076).

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

