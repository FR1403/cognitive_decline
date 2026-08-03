% ======================================================================
% Paziente 244
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

instance(i_p244_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p244_a1, participant_retrieves_broom_from_supply_closet, 1, 46360049).
raw_performed(i_p244_a1, participant_sweeps_kitchen_floor, 2, 46374093).
raw_performed(i_p244_a1, participant_sweeps_kitchen_floor, 3, 46376038).
raw_performed(i_p244_a1, participant_sweeps_kitchen_floor, 4, 46379050).
raw_performed(i_p244_a1, participant_sweeps_kitchen_floor, 5, 46387083).
raw_performed(i_p244_a1, participant_sweeps_kitchen_floor, 6, 46394091).
raw_performed(i_p244_a1, participant_sweeps_kitchen_floor, 7, 46404079).
raw_performed(i_p244_a1, participant_retrieves_duster_from_supply_closet, 8, 46408081).
raw_performed(i_p244_a1, participant_dusts_living_room, 9, 46471093).
raw_performed(i_p244_a1, participant_dusts_living_room, 10, 46472005).
raw_performed(i_p244_a1, participant_dusts_living_room, 11, 46473018).
raw_performed(i_p244_a1, participant_dusts_living_room, 12, 46474066).
raw_performed(i_p244_a1, participant_dusts_living_room, 13, 46480044).
raw_performed(i_p244_a1, participant_dusts_living_room, 14, 46490037).
raw_performed(i_p244_a1, participant_dusts_living_room, 15, 46494061).
raw_performed(i_p244_a1, participant_dusts_living_room, 16, 46495000).
raw_performed(i_p244_a1, participant_dusts_living_room, 17, 46498020).
raw_performed(i_p244_a1, participant_dusts_living_room, 18, 46501034).
raw_performed(i_p244_a1, participant_dusts_living_room, 19, 46506081).
raw_performed(i_p244_a1, participant_dusts_dining_room, 20, 46506084).
raw_performed(i_p244_a1, participant_dusts_dining_room, 21, 46507085).
raw_performed(i_p244_a1, participant_dusts_dining_room, 22, 46510054).
raw_performed(i_p244_a1, participant_dusts_dining_room, 23, 46511082).
raw_performed(i_p244_a1, participant_dusts_dining_room, 24, 46513098).
raw_performed(i_p244_a1, participant_dusts_dining_room, 25, 46516088).
raw_performed(i_p244_a1, participant_dusts_dining_room, 26, 46521053).
raw_performed(i_p244_a1, participant_dusts_dining_room, 27, 46527077).
raw_performed(i_p244_a1, participant_dusts_dining_room, 28, 46529018).
raw_performed(i_p244_a1, participant_retrieves_dust_pan_and_brush_from_closet, 29, 46553064).
raw_performed(i_p244_a1, participant_returns_broom_to_supply_closet, 30, 46581038).
raw_performed(i_p244_a1, participant_returns_duster_to_supply_closet, 31, 46596044).
raw_performed(i_p244_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 32, 46652080).

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

