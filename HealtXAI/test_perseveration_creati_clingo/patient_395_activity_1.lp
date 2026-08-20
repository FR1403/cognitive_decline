% ======================================================================
% Paziente 395
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

instance(i_p395_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p395_a1, participant_retrieves_broom_from_supply_closet, 1, 32064039).
raw_performed(i_p395_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 32064039).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 3, 32077011).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 4, 32077011).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 5, 32078015).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 6, 32078015).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 7, 32084053).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 8, 32084053).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 9, 32089008).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 10, 32089008).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 11, 32092000).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 12, 32092000).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 13, 32094056).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 14, 32094056).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 15, 32098074).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 16, 32098074).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 17, 32103056).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 18, 32103056).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 19, 32114036).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 20, 32114036).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 21, 32132084).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 22, 32132084).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 23, 32144010).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 24, 32144010).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 25, 32149068).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 26, 32149068).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 27, 32161033).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 28, 32161033).
raw_performed(i_p395_a1, participant_sweeps_kitchen_floor, 29, 32167013).
raw_performed(i_p395_a1, participant_uses_dust_pan_and_brush, 30, 32167013).
raw_performed(i_p395_a1, participant_returns_broom_to_supply_closet, 31, 32189004).
raw_performed(i_p395_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 32, 32189004).
raw_performed(i_p395_a1, participant_retrieves_duster_from_supply_closet, 33, 32211092).
raw_performed(i_p395_a1, participant_dusts_dining_room, 34, 32220052).
raw_performed(i_p395_a1, participant_dusts_dining_room, 35, 32222076).
raw_performed(i_p395_a1, participant_dusts_dining_room, 36, 32226011).
raw_performed(i_p395_a1, participant_dusts_dining_room, 37, 32226071).
raw_performed(i_p395_a1, participant_dusts_dining_room, 38, 32228016).
raw_performed(i_p395_a1, participant_dusts_living_room, 39, 32229001).
raw_performed(i_p395_a1, participant_dusts_living_room, 40, 32229086).
raw_performed(i_p395_a1, participant_dusts_living_room, 41, 32232058).
raw_performed(i_p395_a1, participant_dusts_living_room, 42, 32243078).
raw_performed(i_p395_a1, participant_dusts_living_room, 43, 32255018).
raw_performed(i_p395_a1, participant_dusts_living_room, 44, 32256023).
raw_performed(i_p395_a1, participant_dusts_living_room, 45, 32256081).
raw_performed(i_p395_a1, participant_dusts_living_room, 46, 32264030).
raw_performed(i_p395_a1, participant_dusts_living_room, 47, 32265074).
raw_performed(i_p395_a1, participant_dusts_living_room, 48, 32282051).
raw_performed(i_p395_a1, participant_dusts_living_room, 49, 32290085).
raw_performed(i_p395_a1, participant_dusts_living_room, 50, 32295045).
raw_performed(i_p395_a1, participant_dusts_living_room, 51, 32300086).
raw_performed(i_p395_a1, participant_dusts_living_room, 52, 32304044).
raw_performed(i_p395_a1, participant_dusts_living_room, 53, 32305008).
raw_performed(i_p395_a1, participant_dusts_dining_room, 54, 32306012).
raw_performed(i_p395_a1, participant_returns_duster_to_supply_closet, 55, 32313042).

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

