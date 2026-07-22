% ======================================================================
% Paziente 300
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

instance(i_p300_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p300_a1, participant_retrieves_broom_from_supply_closet, 1, 52330074).
raw_performed(i_p300_a1, participant_sweeps_kitchen_floor, 2, 52336060).
raw_performed(i_p300_a1, participant_sweeps_kitchen_floor, 3, 52337020).
raw_performed(i_p300_a1, participant_sweeps_kitchen_floor, 4, 52344000).
raw_performed(i_p300_a1, participant_sweeps_kitchen_floor, 5, 52346050).
raw_performed(i_p300_a1, participant_sweeps_kitchen_floor, 6, 52356078).
raw_performed(i_p300_a1, participant_sweeps_kitchen_floor, 7, 52369069).
raw_performed(i_p300_a1, participant_returns_broom_to_supply_closet, 8, 52377018).
raw_performed(i_p300_a1, participant_retrieves_dust_pan_and_brush_from_closet, 9, 52393007).
raw_performed(i_p300_a1, participant_uses_dust_pan_and_brush, 10, 52402054).
raw_performed(i_p300_a1, participant_uses_dust_pan_and_brush, 11, 52403010).
raw_performed(i_p300_a1, participant_uses_dust_pan_and_brush, 12, 52409060).
raw_performed(i_p300_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 13, 52420088).
raw_performed(i_p300_a1, participant_retrieves_duster_from_supply_closet, 14, 52444096).
raw_performed(i_p300_a1, participant_dusts_living_room, 15, 52457037).
raw_performed(i_p300_a1, participant_dusts_living_room, 16, 52472059).
raw_performed(i_p300_a1, participant_dusts_living_room, 17, 52482003).
raw_performed(i_p300_a1, participant_dusts_living_room, 18, 52500016).
raw_performed(i_p300_a1, participant_dusts_living_room, 19, 52525084).
raw_performed(i_p300_a1, participant_dusts_living_room, 20, 52534042).
raw_performed(i_p300_a1, participant_dusts_living_room, 21, 52538063).
raw_performed(i_p300_a1, participant_dusts_living_room, 22, 52544003).
raw_performed(i_p300_a1, participant_dusts_living_room, 23, 52556076).
raw_performed(i_p300_a1, participant_dusts_living_room, 24, 52562017).
raw_performed(i_p300_a1, participant_dusts_living_room, 25, 52573046).
raw_performed(i_p300_a1, participant_dusts_living_room, 26, 52574006).
raw_performed(i_p300_a1, participant_dusts_living_room, 27, 52583012).
raw_performed(i_p300_a1, participant_dusts_living_room, 28, 52584056).
raw_performed(i_p300_a1, participant_dusts_living_room, 29, 52585062).
raw_performed(i_p300_a1, participant_dusts_dining_room, 30, 52594022).
raw_performed(i_p300_a1, participant_dusts_dining_room, 31, 52597053).
raw_performed(i_p300_a1, participant_dusts_dining_room, 32, 52598060).
raw_performed(i_p300_a1, participant_dusts_dining_room, 33, 52606003).
raw_performed(i_p300_a1, participant_dusts_dining_room, 34, 52610094).
raw_performed(i_p300_a1, participant_dusts_dining_room, 35, 52618045).
raw_performed(i_p300_a1, participant_dusts_dining_room, 36, 52620076).
raw_performed(i_p300_a1, participant_dusts_dining_room, 37, 52636083).
raw_performed(i_p300_a1, participant_dusts_dining_room, 38, 52638009).
raw_performed(i_p300_a1, participant_dusts_dining_room, 39, 52643028).
raw_performed(i_p300_a1, participant_dusts_dining_room, 40, 52643091).
raw_performed(i_p300_a1, participant_dusts_dining_room, 41, 52650078).
raw_performed(i_p300_a1, participant_dusts_dining_room, 42, 52652090).
raw_performed(i_p300_a1, participant_dusts_dining_room, 43, 52654017).
raw_performed(i_p300_a1, participant_dusts_dining_room, 44, 52657000).
raw_performed(i_p300_a1, participant_dusts_dining_room, 45, 52660006).
raw_performed(i_p300_a1, participant_returns_duster_to_supply_closet, 46, 52663072).

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

