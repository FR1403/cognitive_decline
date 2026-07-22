% ======================================================================
% Paziente 346
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

instance(i_p346_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p346_a1, participant_retrieves_broom_from_supply_closet, 1, 50833019).
raw_performed(i_p346_a1, participant_retrieves_duster_from_supply_closet, 2, 50833019).
raw_performed(i_p346_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 50833019).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 4, 50842011).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 5, 50842011).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 6, 50842072).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 7, 50842072).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 8, 50845003).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 9, 50845003).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 10, 50851082).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 11, 50851082).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 12, 50853030).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 13, 50853030).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 14, 50854038).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 15, 50854038).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 16, 50855062).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 17, 50855062).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 18, 50861006).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 19, 50861006).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 20, 50873065).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 21, 50873065).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 22, 50881079).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 23, 50881079).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 24, 50908096).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 25, 50908096).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 26, 50928076).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 27, 50928076).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 28, 50939004).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 29, 50939004).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 30, 50940003).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 31, 50940003).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 32, 50944068).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 33, 50944068).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 34, 50949053).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 35, 50949053).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 36, 50963011).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 37, 50963011).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 38, 50964014).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 39, 50964014).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 40, 50965080).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 41, 50965080).
raw_performed(i_p346_a1, participant_sweeps_kitchen_floor, 42, 50969035).
raw_performed(i_p346_a1, participant_uses_dust_pan_and_brush, 43, 50969035).
raw_performed(i_p346_a1, participant_returns_broom_to_supply_closet, 44, 50969098).
raw_performed(i_p346_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 45, 50969098).
raw_performed(i_p346_a1, participant_dusts_dining_room, 46, 50987005).
raw_performed(i_p346_a1, participant_dusts_dining_room, 47, 50999055).
raw_performed(i_p346_a1, participant_dusts_dining_room, 48, 51000018).
raw_performed(i_p346_a1, participant_dusts_dining_room, 49, 51012093).
raw_performed(i_p346_a1, participant_dusts_dining_room, 50, 51018099).
raw_performed(i_p346_a1, participant_dusts_dining_room, 51, 51021028).
raw_performed(i_p346_a1, participant_dusts_dining_room, 52, 51025025).
raw_performed(i_p346_a1, participant_dusts_living_room, 53, 51029045).
raw_performed(i_p346_a1, participant_dusts_dining_room, 54, 51033061).
raw_performed(i_p346_a1, participant_dusts_dining_room, 55, 51034006).
raw_performed(i_p346_a1, participant_dusts_living_room, 56, 51036049).
raw_performed(i_p346_a1, participant_dusts_dining_room, 57, 51036052).
raw_performed(i_p346_a1, participant_dusts_living_room, 58, 51037013).
raw_performed(i_p346_a1, participant_dusts_living_room, 59, 51039026).
raw_performed(i_p346_a1, participant_dusts_living_room, 60, 51040074).
raw_performed(i_p346_a1, participant_dusts_living_room, 61, 51046076).
raw_performed(i_p346_a1, participant_dusts_living_room, 62, 51057063).
raw_performed(i_p346_a1, participant_dusts_living_room, 63, 51058069).
raw_performed(i_p346_a1, participant_dusts_living_room, 64, 51092040).
raw_performed(i_p346_a1, participant_dusts_living_room, 65, 51096096).
raw_performed(i_p346_a1, participant_dusts_living_room, 66, 51096099).
raw_performed(i_p346_a1, participant_returns_duster_to_supply_closet, 67, 51101077).

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

