% ======================================================================
% Paziente 293
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

instance(i_p293_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p293_a1, participant_retrieves_broom_from_supply_closet, 1, 34771201).
raw_performed(i_p293_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34773141).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 3, 34776844).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 4, 34779346).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 5, 34780564).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 6, 34782359).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 7, 34782995).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 8, 34785133).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 9, 34789739).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 10, 34795001).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 11, 34802543).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 12, 34806626).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 13, 34808895).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 14, 34816179).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 15, 34822760).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 16, 34828977).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 17, 34831758).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 18, 34834583).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 19, 34834753).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 20, 34842231).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 21, 34842373).
raw_performed(i_p293_a1, participant_sweeps_kitchen_floor, 22, 34844001).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 23, 34852621).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 24, 34853509).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 25, 34860456).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 26, 34862885).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 27, 34865698).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 28, 34870765).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 29, 34872267).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 30, 34874575).
raw_performed(i_p293_a1, participant_uses_dust_pan_and_brush, 31, 34880892).
raw_performed(i_p293_a1, participant_returns_broom_to_supply_closet, 32, 34885460).
raw_performed(i_p293_a1, participant_retrieves_duster_from_supply_closet, 33, 34896801).
raw_performed(i_p293_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 34, 34902801).
raw_performed(i_p293_a1, participant_dusts_living_room, 35, 34904748).
raw_performed(i_p293_a1, participant_dusts_living_room, 36, 34905768).
raw_performed(i_p293_a1, participant_dusts_living_room, 37, 34907857).
raw_performed(i_p293_a1, participant_dusts_living_room, 38, 34909511).
raw_performed(i_p293_a1, participant_dusts_living_room, 39, 34914297).
raw_performed(i_p293_a1, participant_dusts_dining_room, 40, 34917369).
raw_performed(i_p293_a1, participant_dusts_living_room, 41, 34917850).
raw_performed(i_p293_a1, participant_dusts_dining_room, 42, 34919352).
raw_performed(i_p293_a1, participant_dusts_living_room, 43, 34920339).
raw_performed(i_p293_a1, participant_dusts_dining_room, 44, 34923877).
raw_performed(i_p293_a1, participant_dusts_living_room, 45, 34927198).
raw_performed(i_p293_a1, participant_dusts_living_room, 46, 34930789).
raw_performed(i_p293_a1, participant_dusts_living_room, 47, 34933782).
raw_performed(i_p293_a1, participant_dusts_living_room, 48, 34935099).
raw_performed(i_p293_a1, participant_dusts_living_room, 49, 34936398).
raw_performed(i_p293_a1, participant_dusts_living_room, 50, 34947659).
raw_performed(i_p293_a1, participant_dusts_living_room, 51, 34948956).
raw_performed(i_p293_a1, participant_dusts_living_room, 52, 34950839).
raw_performed(i_p293_a1, participant_dusts_living_room, 53, 34961156).
raw_performed(i_p293_a1, participant_dusts_living_room, 54, 34963018).
raw_performed(i_p293_a1, participant_dusts_living_room, 55, 34969814).
raw_performed(i_p293_a1, participant_dusts_living_room, 56, 34971829).
raw_performed(i_p293_a1, participant_dusts_living_room, 57, 34980996).
raw_performed(i_p293_a1, participant_dusts_living_room, 58, 34994314).
raw_performed(i_p293_a1, participant_dusts_living_room, 59, 35004065).
raw_performed(i_p293_a1, participant_dusts_living_room, 60, 35005968).
raw_performed(i_p293_a1, participant_dusts_living_room, 61, 35013617).
raw_performed(i_p293_a1, participant_dusts_living_room, 62, 35024589).
raw_performed(i_p293_a1, participant_dusts_living_room, 63, 35039521).
raw_performed(i_p293_a1, participant_dusts_living_room, 64, 35040445).
raw_performed(i_p293_a1, participant_dusts_living_room, 65, 35040938).
raw_performed(i_p293_a1, participant_dusts_living_room, 66, 35046046).
raw_performed(i_p293_a1, participant_returns_duster_to_supply_closet, 67, 35060741).

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

