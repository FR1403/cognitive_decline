% ======================================================================
% Paziente 393
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

instance(i_p393_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p393_a1, participant_retrieves_duster_from_supply_closet, 1, 35089671).
raw_performed(i_p393_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 35089775).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 3, 35112490).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 4, 35115389).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 5, 35123244).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 6, 35140186).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 7, 35146179).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 8, 35158978).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 9, 35164020).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 10, 35166670).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 11, 35168336).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 12, 35173964).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 13, 35175623).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 14, 35177343).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 15, 35181463).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 16, 35185206).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 17, 35185586).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 18, 35194042).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 19, 35202271).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 20, 35206562).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 21, 35209689).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 22, 35215966).
raw_performed(i_p393_a1, participant_sweeps_kitchen_floor, 23, 35218018).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 24, 35218121).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 25, 35233408).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 26, 35235858).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 27, 35240884).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 28, 35246997).
raw_performed(i_p393_a1, participant_uses_dust_pan_and_brush, 29, 35250760).
raw_performed(i_p393_a1, participant_returns_broom_to_supply_closet, 30, 35268501).
raw_performed(i_p393_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 31, 35269871).
raw_performed(i_p393_a1, participant_dusts_dining_room, 32, 35280751).
raw_performed(i_p393_a1, participant_dusts_dining_room, 33, 35284216).
raw_performed(i_p393_a1, participant_dusts_dining_room, 34, 35288662).
raw_performed(i_p393_a1, participant_dusts_dining_room, 35, 35292666).
raw_performed(i_p393_a1, participant_dusts_dining_room, 36, 35296276).
raw_performed(i_p393_a1, participant_dusts_dining_room, 37, 35298276).
raw_performed(i_p393_a1, participant_dusts_dining_room, 38, 35301473).
raw_performed(i_p393_a1, participant_dusts_dining_room, 39, 35302547).
raw_performed(i_p393_a1, participant_dusts_dining_room, 40, 35303124).
raw_performed(i_p393_a1, participant_dusts_living_room, 41, 35305160).
raw_performed(i_p393_a1, participant_dusts_dining_room, 42, 35306565).
raw_performed(i_p393_a1, participant_dusts_dining_room, 43, 35310421).
raw_performed(i_p393_a1, participant_dusts_dining_room, 44, 35312004).
raw_performed(i_p393_a1, participant_dusts_dining_room, 45, 35318868).
raw_performed(i_p393_a1, participant_dusts_living_room, 46, 35319882).
raw_performed(i_p393_a1, participant_dusts_living_room, 47, 35323318).
raw_performed(i_p393_a1, participant_dusts_living_room, 48, 35323901).
raw_performed(i_p393_a1, participant_dusts_living_room, 49, 35326356).
raw_performed(i_p393_a1, participant_dusts_living_room, 50, 35333269).
raw_performed(i_p393_a1, participant_dusts_living_room, 51, 35338140).
raw_performed(i_p393_a1, participant_dusts_living_room, 52, 35342930).
raw_performed(i_p393_a1, participant_dusts_living_room, 53, 35344888).
raw_performed(i_p393_a1, participant_dusts_living_room, 54, 35347514).
raw_performed(i_p393_a1, participant_dusts_living_room, 55, 35352752).
raw_performed(i_p393_a1, participant_dusts_living_room, 56, 35378058).
raw_performed(i_p393_a1, participant_dusts_living_room, 57, 35383666).
raw_performed(i_p393_a1, participant_dusts_living_room, 58, 35386425).
raw_performed(i_p393_a1, participant_dusts_living_room, 59, 35390177).
raw_performed(i_p393_a1, participant_dusts_living_room, 60, 35402157).
raw_performed(i_p393_a1, participant_dusts_living_room, 61, 35404855).
raw_performed(i_p393_a1, participant_dusts_living_room, 62, 35411549).
raw_performed(i_p393_a1, participant_returns_duster_to_supply_closet, 63, 35417973).
raw_performed(i_p393_a1, participant_returns_duster_to_supply_closet, 64, 35421169).
raw_performed(i_p393_a1, participant_returns_duster_to_supply_closet, 65, 35422572).
raw_performed(i_p393_a1, participant_returns_duster_to_supply_closet, 66, 35425281).

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

